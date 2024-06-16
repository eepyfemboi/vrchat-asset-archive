// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:3,bdst:7,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1000,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|emission-7542-RGB,alpha-7542-A;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32232,y:33322,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_1672,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-737-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5260,x:30317,y:33299,varname:node_5260,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:5911,x:30350,y:33540,varname:node_5911,prsc:2;n:type:ShaderForge.SFN_Subtract,id:9790,x:30629,y:33424,varname:node_9790,prsc:2|A-5260-XYZ,B-5911-XYZ;n:type:ShaderForge.SFN_Transform,id:8773,x:30798,y:33407,varname:node_8773,prsc:2,tffrom:0,tfto:3|IN-9790-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7294,x:30999,y:33317,varname:node_7294,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8773-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:4342,x:30991,y:33539,varname:node_4342,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-8773-XYZ;n:type:ShaderForge.SFN_Divide,id:8816,x:31164,y:33432,varname:node_8816,prsc:2|A-7294-OUT,B-4342-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3253,x:31355,y:33418,varname:node_3253,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8816-OUT;n:type:ShaderForge.SFN_Multiply,id:4482,x:31593,y:33322,varname:node_4482,prsc:2|A-3264-OUT,B-3253-R;n:type:ShaderForge.SFN_ScreenParameters,id:7722,x:31202,y:33166,varname:node_7722,prsc:2;n:type:ShaderForge.SFN_Divide,id:3264,x:31392,y:33170,varname:node_3264,prsc:2|A-7722-RCW,B-7722-RCH;n:type:ShaderForge.SFN_Append,id:4311,x:31757,y:33424,varname:node_4311,prsc:2|A-4482-OUT,B-2340-OUT;n:type:ShaderForge.SFN_RemapRange,id:737,x:31941,y:33412,varname:node_737,prsc:2,frmn:-1,frmx:0.5,tomn:1.1,tomx:0.2|IN-4311-OUT;n:type:ShaderForge.SFN_Vector1,id:6044,x:31404,y:33653,varname:node_6044,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:2340,x:31544,y:33474,varname:node_2340,prsc:2|A-3253-G,B-6044-OUT;proporder:7542;pass:END;sub:END;*/

Shader "OverlayFix" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1000"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Front
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 node_8773 = mul( UNITY_MATRIX_V, float4((i.posWorld.rgb-_WorldSpaceCameraPos),0) ).xyz;
                float2 node_3253 = (node_8773.rgb.rg/node_8773.rgb.b).rg;
                float2 node_737 = (float2(((_ScreenParams.b/_ScreenParams.a)*node_3253.r),(node_3253.g*2.0))*-0.6+0.5);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_737, _MainTex));
                float3 emissive = _MainTex_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,_MainTex_var.a);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
