Shader "Omenous/Glossy Look" {
    Properties {
        _SETTODEFAULTPARTICLE ("SET TO DEFAULT PARTICLE", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _MainTexture ("Main Texture", 2D) = "white" {}
    }
    SubShader {
        Tags {
           			"Queue" = "Always" 
			"RenderType"="Transparent"  
			"PreviewType"="Plane"           "DisableBatching"="LODFading"
            "CanUseSpriteAtlas"="True"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            Stencil {
                Ref 128
                Pass Zero
                Fail Invert
                ZFail DecrWrap
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _SETTODEFAULTPARTICLE; uniform float4 _SETTODEFAULTPARTICLE_ST;
            uniform float4 _Color;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
 
                float node_6214 = (1.0-max(0,dot(normalDirection, viewDirection)));
                float node_7386 = (1.0-max(0,dot(UNITY_LIGHTMODEL_AMBIENT.rgb, viewDirection)));
                float2 node_7292_tc_rcp = float2(1.0,1.0)/float2( node_6214, node_6214 );
                float node_7292_ty = floor(node_7386 * node_7292_tc_rcp.x);
                float node_7292_tx = node_7386 - node_6214 * node_7292_ty;
                float2 node_7292 = (i.uv0 + float2(node_7292_tx, node_7292_ty)) * node_7292_tc_rcp;
                float4 _SETTODEFAULTPARTICLE_var = tex2D(_SETTODEFAULTPARTICLE,TRANSFORM_TEX(node_7292, _SETTODEFAULTPARTICLE));
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 emissive = ((_SETTODEFAULTPARTICLE_var.rgb*_Color.rgb)+_MainTexture_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }

}
