
Shader "Oknuj's Shader\ScreenShakeDistortion" {
    Properties {
        _XRate ("X Rate", Range(0, 30)) = 0
        _XDistance ("X Distance", Range(0, 0.1)) = 0
        _YRate ("Y Rate", Range(0, 30)) = 0
        _YDistance ("Y Distance", Range(0, 0.1)) = 0.04047048
        _DistortionMap ("DistortionMap", 2D) = "bump" {}
        _DistortionScale ("DistortionScale", Range(0, 1)) = 0
        _ColorOverLay ("ColorOverLay", Color) = (1,1,1,1)
        _Distance ("Distance", Range(0.1, 100)) = 27.13624
    }
    SubShader {
        Tags {
            "Queue"="Transparent+90000"
            "RenderType"="Transparent"
        }
        GrabPass{ "Refraction" }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D Refraction;
            uniform float _XRate;
            uniform float _XDistance;
            uniform float _YRate;
            uniform float _YDistance;
            uniform sampler2D _DistortionMap; uniform float4 _DistortionMap_ST;
            uniform float _DistortionScale;
            uniform float4 _ColorOverLay;
            uniform float _Distance;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(Refraction, sceneUVs);
////// Lighting:
////// Emissive:
                float3 _DistortionMap_var = UnpackNormal(tex2D(_DistortionMap,TRANSFORM_TEX(i.uv0, _DistortionMap)));
                float node_9370 = 0.0;
                float node_5245 = clamp(distance(objPos.rgb,_WorldSpaceCameraPos),node_9370,_Distance);
                float4 node_1433 = _Time;
                float3 emissive = (tex2D( Refraction, ((float2(_DistortionMap_var.r,_DistortionMap_var.g)*(_DistortionScale-(node_9370 + ( (node_5245 - node_9370) * (_DistortionScale - node_9370) ) / (_Distance - node_9370))))+float2(((sign(sin((node_1433.a*_XRate)))*(_XDistance-(node_9370 + ( (node_5245 - node_9370) * (_XDistance - node_9370) ) / (_Distance - node_9370))))+sceneUVs.r),((sign(cos((node_1433.a*_YRate)))*(_YDistance-(node_9370 + ( (node_5245 - node_9370) * (_YDistance - node_9370) ) / (_Distance - node_9370))))+sceneUVs.g)))).rgb*_ColorOverLay.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
