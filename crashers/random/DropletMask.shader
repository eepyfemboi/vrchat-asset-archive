Shader "DropletMask" {
    Properties {
		[Enum(Off,0,Front,1,Back,2)] _CullMode ("Culling", Float) = 2 //0 = off, 2=back
		[Toggle] _ZWriteMode("Write to Z-buffer", Int) = 1
		[Enum(Less,0,Greater,1,LEqual,2,GEqual,3,Equal,4,NotEqual,5,Always,6)] _ZTestMode ("Depth Test", Float) = 6
        _AlphaMask ("Alpha Mask", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Intensity ("Intensity", Float ) = 1
		_Fade ("Opacity", Range(0,1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite [_ZWriteMode]
			Cull [_CullMode]
			ZTest [_ZTestMode]
            
           CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _AlphaMask; uniform float4 _AlphaMask_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Intensity;
            uniform float _Fade;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 emissive = tex2D( _GrabTexture, (sceneUVs.rg+(_Normal_var.rgb*_Intensity*i.vertexColor.rgb).rg)).rgb;
                float3 finalColor = emissive;
                float4 _AlphaMask_var = tex2D(_AlphaMask,TRANSFORM_TEX(i.uv0, _AlphaMask));
                return fixed4(finalColor,(_AlphaMask_var.a*i.vertexColor.a*_Fade));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
