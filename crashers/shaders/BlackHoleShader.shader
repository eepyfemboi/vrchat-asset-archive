Shader "Custom/Misc/Black Hole (Simple)" {
    Properties {
        _DistortionStrength ("Distortion Strength", Range(0, 10)) = 2.23301
        _HoleSize ("Hole Size", Range(0, 1)) = 0.1736101
        _HoleEdgeSmoothness ("Hole Edge Smoothness", Range(1, 4)) = 4
        _ObjectEdgeArtifactFix ("Object Edge Artifact Fix", Range(1, 10)) = 1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _DistortionStrength;
            uniform float _HoleSize;
            uniform float _HoleEdgeSmoothness;
            uniform float _ObjectEdgeArtifactFix;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float node_9892 = (_HoleSize*-1.0+1.0);
                float node_3969 = (1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_DistortionStrength));
                float node_9136 = (length(float2(ddx(node_3969),ddy(node_3969)))*_HoleEdgeSmoothness);
                float node_4918 = pow(node_3969,6.0);
                float node_1920 = (1.0 - smoothstep( (node_9892-node_9136), (node_9892+node_9136), node_4918 ));
                float3 emissive = (lerp(float4(node_1920,node_1920,node_1920,node_1920),float4(1,1,1,1),pow(pow(1.0-max(0,dot(normalDirection, viewDirection)),1.0),_ObjectEdgeArtifactFix))*tex2D( _GrabTexture, ((node_4918*(sceneUVs.rg*-2.0+1.0))+sceneUVs.rg)).rgb).rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}