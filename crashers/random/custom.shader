
Shader "Custom/Environment" {
    Properties {
        _FinalPower ("Final Power", Range(0, 4)) = 1
        _Ramp ("Ramp", 2D) = "white" {}
        _OffsetPower ("Offset Power", Range(0, 4)) = 0.3333333
        _DistortionPower ("Distortion Power", Range(0, 4)) = 1
        _DistortionFresnelExp ("Distortion Fresnel Exp", Range(0, 4)) = 0
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _SpaceTex ("Space Tex", 2D) = "white" {}
        _Noise01 ("Noise 01", 2D) = "white" {}
        _OffsetAdd ("Offset Add", Float ) = 0
        _ScrollSpeed ("Scroll Speed", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _FinalPower;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float _OffsetPower;
            uniform float _DistortionPower;
            uniform float _DistortionFresnelExp;
            uniform float4 _Color;
            uniform sampler2D _SpaceTex; uniform float4 _SpaceTex_ST;
            uniform sampler2D _Noise01; uniform float4 _Noise01_ST;
            uniform float _OffsetAdd;
            uniform float _ScrollSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_151 = _Time;
                float2 node_7463 = (o.uv0+(node_151.g*_ScrollSpeed)*float2(0,-1));
                float4 node_3690 = tex2Dlod(_Noise01,float4(TRANSFORM_TEX(node_7463, _Noise01),0.0,0));
                v.vertex.xyz += ((node_3690.r+_OffsetAdd)*v.normal*_OffsetPower);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float node_3983 = (1.0 - (1.0-max(0,dot(normalDirection, viewDirection))));
                float4 node_151 = _Time;
                float2 node_7463 = (i.uv0+(node_151.g*_ScrollSpeed)*float2(0,-1));
                float2 node_9150 = (node_7463+(normalize(mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.rg)*pow(1.0-max(0,dot(normalDirection, viewDirection)),_DistortionFresnelExp)*_DistortionPower));
                float4 node_2453 = tex2D(_Noise01,TRANSFORM_TEX(node_9150, _Noise01));
                float4 _SpaceTex_var = tex2D(_SpaceTex,TRANSFORM_TEX(sceneUVs.rg, _SpaceTex));
                float2 node_4927 = float2((((node_3983*node_3983)*saturate((node_2453.r+_SpaceTex_var.r)))+(1.0-max(0,dot(normalDirection, viewDirection)))),0.0);
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_4927, _Ramp));
                float3 emissive = (_Ramp_var.rgb*_FinalPower*_Color.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
