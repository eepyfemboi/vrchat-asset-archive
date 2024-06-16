// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-5805-OUT,clip-8336-OUT,voffset-9438-OUT;n:type:ShaderForge.SFN_Tex2d,id:6959,x:32163,y:32519,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_6959,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3593-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:971,x:31906,y:32770,ptovrint:False,ptlb:dissolve noise,ptin:_dissolvenoise,varname:node_971,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:500ac08c13448fd4a9f15f8066fb1dae,ntxv:0,isnm:False|UVIN-4524-OUT;n:type:ShaderForge.SFN_Slider,id:4282,x:31466,y:33010,ptovrint:False,ptlb:Dissolve Strength,ptin:_DissolveStrength,varname:node_4282,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:-0.5,max:0.75;n:type:ShaderForge.SFN_RemapRange,id:8022,x:32394,y:32809,varname:node_8022,prsc:2,frmn:0,frmx:0.5,tomn:-0.5,tomx:0.5|IN-265-OUT;n:type:ShaderForge.SFN_Add,id:265,x:32198,y:32809,varname:node_265,prsc:2|A-971-R,B-4282-OUT;n:type:ShaderForge.SFN_Tex2d,id:3722,x:32078,y:33222,ptovrint:False,ptlb:noise offset,ptin:_noiseoffset,varname:node_3722,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7971-OUT;n:type:ShaderForge.SFN_TexCoord,id:3076,x:31276,y:33065,varname:node_3076,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_OneMinus,id:8336,x:32554,y:32856,varname:node_8336,prsc:2|IN-8022-OUT;n:type:ShaderForge.SFN_RemapRange,id:2998,x:32111,y:32959,varname:node_2998,prsc:2,frmn:-0.5,frmx:0.5,tomn:0,tomx:0.3|IN-4282-OUT;n:type:ShaderForge.SFN_TexCoord,id:3593,x:31998,y:32465,varname:node_3593,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:1956,x:31544,y:33133,varname:node_1956,prsc:2|A-3076-U,B-6791-OUT;n:type:ShaderForge.SFN_Append,id:6743,x:31593,y:33301,varname:node_6743,prsc:2|A-1956-OUT,B-3076-V;n:type:ShaderForge.SFN_RemapRange,id:6791,x:31852,y:33112,varname:node_6791,prsc:2,frmn:-0.5,frmx:0.75,tomn:-1,tomx:-0.9|IN-4282-OUT;n:type:ShaderForge.SFN_Add,id:1766,x:32111,y:33088,varname:node_1766,prsc:2|A-3722-G,B-2998-OUT;n:type:ShaderForge.SFN_Append,id:3760,x:32363,y:32976,varname:node_3760,prsc:2|A-3722-R,B-1766-OUT;n:type:ShaderForge.SFN_Multiply,id:9438,x:32502,y:33087,varname:node_9438,prsc:2|A-3760-OUT,B-2998-OUT;n:type:ShaderForge.SFN_Color,id:7215,x:32118,y:32145,ptovrint:False,ptlb:Color 1,ptin:_Color1,varname:node_7215,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5805,x:32580,y:32647,varname:node_5805,prsc:2|A-6959-RGB,B-6566-OUT;n:type:ShaderForge.SFN_RemapRange,id:5426,x:32316,y:32663,varname:node_5426,prsc:2,frmn:-0.5,frmx:-0.1,tomn:0,tomx:1|IN-4282-OUT;n:type:ShaderForge.SFN_Lerp,id:6566,x:32447,y:32313,varname:node_6566,prsc:2|A-7215-RGB,B-8777-RGB,T-5426-OUT;n:type:ShaderForge.SFN_Color,id:8777,x:32118,y:32326,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_8777,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5735294,c2:0.5735294,c3:0.5735294,c4:1;n:type:ShaderForge.SFN_Slider,id:6069,x:31304,y:32803,ptovrint:False,ptlb:Xpos,ptin:_Xpos,varname:node_6069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:-3,max:3;n:type:ShaderForge.SFN_Slider,id:4947,x:31304,y:32887,ptovrint:False,ptlb:Y pos,ptin:_Ypos,varname:node_4947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Append,id:5139,x:31623,y:32835,varname:node_5139,prsc:2|A-6069-OUT,B-4947-OUT;n:type:ShaderForge.SFN_Multiply,id:1819,x:31623,y:32686,varname:node_1819,prsc:2|A-5139-OUT,B-8949-TSL;n:type:ShaderForge.SFN_Time,id:8949,x:31363,y:32669,varname:node_8949,prsc:2;n:type:ShaderForge.SFN_Add,id:4524,x:31830,y:32557,varname:node_4524,prsc:2|A-8391-OUT,B-1819-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1163,x:31325,y:32209,varname:node_1163,prsc:2;n:type:ShaderForge.SFN_Subtract,id:8391,x:31492,y:32322,varname:node_8391,prsc:2|A-1163-XYZ,B-1417-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:1417,x:31307,y:32358,varname:node_1417,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7971,x:31965,y:33378,varname:node_7971,prsc:2|A-6743-OUT,B-8238-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:8238,x:31653,y:33440,varname:node_8238,prsc:2;proporder:6959-4282-971-3722-7215-8777-6069-4947;pass:END;sub:END;*/

Shader "Bender's Shaders/Mesh FX/Disentigrate" {
    Properties {
        _Maintex ("Maintex", 2D) = "white" {}
        _DissolveStrength ("Dissolve Strength", Range(-0.5, 0.75)) = -0.5
        _dissolvenoise ("dissolve noise", 2D) = "white" {}
        _noiseoffset ("noise offset", 2D) = "white" {}
        _Color1 ("Color 1", Color) = (1,1,1,1)
        _Color2 ("Color2", Color) = (0.5735294,0.5735294,0.5735294,1)
        _Xpos ("Xpos", Range(-3, 3)) = -3
        _Ypos ("Y pos", Range(-3, 3)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform sampler2D _dissolvenoise; uniform float4 _dissolvenoise_ST;
            uniform float _DissolveStrength;
            uniform sampler2D _noiseoffset; uniform float4 _noiseoffset_ST;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float _Xpos;
            uniform float _Ypos;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_7971 = (float3(float2((o.uv0.r+(_DissolveStrength*0.08000002+-0.96)),o.uv0.g),0.0)*mul(unity_ObjectToWorld, v.vertex).rgb);
                float4 _noiseoffset_var = tex2Dlod(_noiseoffset,float4(TRANSFORM_TEX(node_7971, _noiseoffset),0.0,0));
                float node_2998 = (_DissolveStrength*0.3+0.15);
                v.vertex.xyz += float3((float2(_noiseoffset_var.r,(_noiseoffset_var.g+node_2998))*node_2998),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_8949 = _Time;
                float3 node_4524 = ((i.posWorld.rgb-objPos.rgb)+float3((float2(_Xpos,_Ypos)*node_8949.r),0.0));
                float4 _dissolvenoise_var = tex2D(_dissolvenoise,TRANSFORM_TEX(node_4524, _dissolvenoise));
                clip((1.0 - ((_dissolvenoise_var.r+_DissolveStrength)*2.0+-0.5)) - 0.5);
////// Lighting:
////// Emissive:
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float3 emissive = (_Maintex_var.rgb*lerp(_Color1.rgb,_Color2.rgb,(_DissolveStrength*2.5+1.25)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _dissolvenoise; uniform float4 _dissolvenoise_ST;
            uniform float _DissolveStrength;
            uniform sampler2D _noiseoffset; uniform float4 _noiseoffset_ST;
            uniform float _Xpos;
            uniform float _Ypos;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_7971 = (float3(float2((o.uv0.r+(_DissolveStrength*0.08000002+-0.96)),o.uv0.g),0.0)*mul(unity_ObjectToWorld, v.vertex).rgb);
                float4 _noiseoffset_var = tex2Dlod(_noiseoffset,float4(TRANSFORM_TEX(node_7971, _noiseoffset),0.0,0));
                float node_2998 = (_DissolveStrength*0.3+0.15);
                v.vertex.xyz += float3((float2(_noiseoffset_var.r,(_noiseoffset_var.g+node_2998))*node_2998),0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_8949 = _Time;
                float3 node_4524 = ((i.posWorld.rgb-objPos.rgb)+float3((float2(_Xpos,_Ypos)*node_8949.r),0.0));
                float4 _dissolvenoise_var = tex2D(_dissolvenoise,TRANSFORM_TEX(node_4524, _dissolvenoise));
                clip((1.0 - ((_dissolvenoise_var.r+_DissolveStrength)*2.0+-0.5)) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
