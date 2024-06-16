// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33806,y:32695,varname:node_4795,prsc:2|emission-228-OUT,alpha-9031-OUT,clip-9031-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32601,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3208bbea768e461439bb225da22b5e92,ntxv:0,isnm:False|UVIN-2234-OUT;n:type:ShaderForge.SFN_TexCoord,id:5416,x:31895,y:32572,varname:node_5416,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:5371,x:31712,y:32852,varname:node_5371,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6729,x:31695,y:32802,ptovrint:False,ptlb:Main U speed,ptin:_MainUspeed,varname:node_6729,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1;n:type:ShaderForge.SFN_ValueProperty,id:4693,x:31712,y:32998,ptovrint:False,ptlb:Main V Speed,ptin:_MainVSpeed,varname:node_4693,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:9935,x:32207,y:32944,varname:node_9935,prsc:2|A-8683-OUT,B-2855-OUT;n:type:ShaderForge.SFN_Multiply,id:8683,x:31956,y:32811,varname:node_8683,prsc:2|A-6729-OUT,B-5371-T;n:type:ShaderForge.SFN_Add,id:2234,x:32092,y:32711,varname:node_2234,prsc:2|A-5416-UVOUT,B-9935-OUT;n:type:ShaderForge.SFN_Multiply,id:2855,x:31944,y:32964,varname:node_2855,prsc:2|A-4693-OUT,B-5371-T;n:type:ShaderForge.SFN_Color,id:7740,x:32235,y:32430,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7740,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_VertexColor,id:7015,x:32235,y:32760,varname:node_7015,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8022,x:32467,y:32620,varname:node_8022,prsc:2|A-7740-RGB,B-6074-RGB,C-7015-RGB;n:type:ShaderForge.SFN_Tex2d,id:6670,x:32221,y:33126,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_6670,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:32cf1bfee0f51384bbe13ddc4c8b8337,ntxv:0,isnm:False|UVIN-5631-OUT;n:type:ShaderForge.SFN_Time,id:4076,x:31469,y:33368,varname:node_4076,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4602,x:31469,y:33289,ptovrint:False,ptlb:Noise U speed,ptin:_NoiseUspeed,varname:node_4602,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-1.1;n:type:ShaderForge.SFN_ValueProperty,id:1438,x:31469,y:33501,ptovrint:False,ptlb:Noise V speed,ptin:_NoiseVspeed,varname:node_1438,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:8867,x:31642,y:33447,varname:node_8867,prsc:2|A-1438-OUT,B-4076-T;n:type:ShaderForge.SFN_Multiply,id:9730,x:31642,y:33315,varname:node_9730,prsc:2|A-4602-OUT,B-4076-T;n:type:ShaderForge.SFN_Append,id:5771,x:31630,y:33188,varname:node_5771,prsc:2|A-9730-OUT,B-8867-OUT;n:type:ShaderForge.SFN_TexCoord,id:6376,x:31883,y:33094,varname:node_6376,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:5631,x:31977,y:33248,varname:node_5631,prsc:2|A-6376-UVOUT,B-5771-OUT;n:type:ShaderForge.SFN_Multiply,id:9031,x:32481,y:33004,varname:node_9031,prsc:2|A-6074-R,B-6908-OUT;n:type:ShaderForge.SFN_TexCoord,id:9481,x:31687,y:33380,varname:node_9481,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:2916,x:31865,y:33380,varname:node_2916,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9481-UVOUT;n:type:ShaderForge.SFN_Multiply,id:887,x:32045,y:33380,varname:node_887,prsc:2|A-2916-OUT,B-6175-OUT;n:type:ShaderForge.SFN_Vector1,id:6175,x:31865,y:33529,varname:node_6175,prsc:2,v1:3;n:type:ShaderForge.SFN_RemapRange,id:1922,x:32056,y:33502,varname:node_1922,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-2916-OUT;n:type:ShaderForge.SFN_Min,id:5939,x:32226,y:33417,varname:node_5939,prsc:2|A-887-OUT,B-1922-OUT;n:type:ShaderForge.SFN_Add,id:6908,x:32434,y:33309,varname:node_6908,prsc:2|A-6670-R,B-5939-OUT,C-1692-OUT;n:type:ShaderForge.SFN_RemapRange,id:5548,x:32632,y:33309,varname:node_5548,prsc:2,frmn:0,frmx:1,tomn:-3,tomx:3|IN-6908-OUT;n:type:ShaderForge.SFN_Clamp01,id:3606,x:32801,y:33339,varname:node_3606,prsc:2|IN-5548-OUT;n:type:ShaderForge.SFN_Append,id:2034,x:32985,y:33339,varname:node_2034,prsc:2|A-3606-OUT,B-8443-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8443,x:32801,y:33493,ptovrint:False,ptlb:node_8443,ptin:_node_8443,varname:node_8443,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:2985,x:32985,y:33510,ptovrint:False,ptlb:Gradient Edge,ptin:_GradientEdge,varname:node_2985,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1ff3f7ce83e8ab24796803c820fc8f2c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:890,x:33214,y:33392,varname:node_890,prsc:2,tex:1ff3f7ce83e8ab24796803c820fc8f2c,ntxv:0,isnm:False|UVIN-2034-OUT,TEX-2985-TEX;n:type:ShaderForge.SFN_OneMinus,id:3349,x:33204,y:33212,varname:node_3349,prsc:2|IN-890-RGB;n:type:ShaderForge.SFN_Color,id:4710,x:33400,y:33511,ptovrint:False,ptlb:Edge Color,ptin:_EdgeColor,varname:node_4710,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9724138,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:1697,x:32281,y:33572,ptovrint:False,ptlb:Disentigration amount,ptin:_Disentigrationamount,varname:node_1697,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6370922,max:1;n:type:ShaderForge.SFN_RemapRange,id:1692,x:32612,y:33572,varname:node_1692,prsc:2,frmn:0,frmx:1,tomn:-1.7,tomx:1|IN-1697-OUT;n:type:ShaderForge.SFN_Add,id:7464,x:33536,y:33392,varname:node_7464,prsc:2|A-4710-RGB,B-3349-OUT;n:type:ShaderForge.SFN_Lerp,id:228,x:33592,y:33148,varname:node_228,prsc:2|A-8022-OUT,B-7464-OUT,T-3349-OUT;proporder:6074-6729-4693-7740-6670-4602-1438-1697-8443-2985-4710;pass:END;sub:END;*/

Shader "Bender's Shaders/Special FX/Cloth particle dissolve" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _MainUspeed ("Main U speed", Float ) = -1
        _MainVSpeed ("Main V Speed", Float ) = 0
        _Color ("Color", Color) = (1,0,0,1)
        _Noise ("Noise", 2D) = "white" {}
        _NoiseUspeed ("Noise U speed", Float ) = -1.1
        _NoiseVspeed ("Noise V speed", Float ) = 0
        _Disentigrationamount ("Disentigration amount", Range(0, 1)) = 0.6370922
        [HideInInspector]_node_8443 ("node_8443", Float ) = 0
        _GradientEdge ("Gradient Edge", 2D) = "white" {}
        _EdgeColor ("Edge Color", Color) = (1,0.9724138,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _MainUspeed;
            uniform float _MainVSpeed;
            uniform float4 _Color;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _NoiseUspeed;
            uniform float _NoiseVspeed;
            uniform float _node_8443;
            uniform sampler2D _GradientEdge; uniform float4 _GradientEdge_ST;
            uniform float4 _EdgeColor;
            uniform float _Disentigrationamount;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_5371 = _Time;
                float2 node_2234 = (i.uv0+float2((_MainUspeed*node_5371.g),(_MainVSpeed*node_5371.g)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_2234, _MainTex));
                float4 node_4076 = _Time;
                float2 node_5631 = (i.uv0+float2((_NoiseUspeed*node_4076.g),(_NoiseVspeed*node_4076.g)));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_5631, _Noise));
                float node_2916 = i.uv0.r;
                float node_6908 = (_Noise_var.r+min((node_2916*3.0),(node_2916*-1.0+1.0))+(_Disentigrationamount*2.7+-1.7));
                float node_9031 = (_MainTex_var.r*node_6908);
                clip(node_9031 - 0.5);
////// Lighting:
////// Emissive:
                float2 node_2034 = float2(saturate((node_6908*6.0+-3.0)),_node_8443);
                float4 node_890 = tex2D(_GradientEdge,TRANSFORM_TEX(node_2034, _GradientEdge));
                float3 node_3349 = (1.0 - node_890.rgb);
                float3 emissive = lerp((_Color.rgb*_MainTex_var.rgb*i.vertexColor.rgb),(_EdgeColor.rgb+node_3349),node_3349);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,node_9031);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
