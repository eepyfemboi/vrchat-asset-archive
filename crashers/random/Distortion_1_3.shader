// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:3,bdst:7,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33322,y:33225,varname:node_2865,prsc:2|emission-5316-OUT;n:type:ShaderForge.SFN_ScreenPos,id:507,x:33271,y:33070,varname:node_507,prsc:2,sctp:2;n:type:ShaderForge.SFN_Set,id:4821,x:33421,y:33070,varname:ScreenUV,prsc:2|IN-507-UVOUT;n:type:ShaderForge.SFN_Set,id:7696,x:33421,y:33116,varname:ScreenU,prsc:2|IN-507-U;n:type:ShaderForge.SFN_Set,id:8835,x:33421,y:33163,varname:SceneV,prsc:2|IN-507-V;n:type:ShaderForge.SFN_Get,id:1270,x:32627,y:33307,varname:node_1270,prsc:2|IN-4821-OUT;n:type:ShaderForge.SFN_SceneColor,id:4744,x:32766,y:33333,varname:node_4744,prsc:2|UVIN-1270-OUT;n:type:ShaderForge.SFN_Distance,id:4229,x:32958,y:33172,varname:node_4229,prsc:2|A-6084-XYZ,B-9355-XYZ;n:type:ShaderForge.SFN_ViewPosition,id:6084,x:32788,y:33090,varname:node_6084,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:9355,x:32776,y:33216,varname:node_9355,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7365,x:32958,y:33314,ptovrint:False,ptlb:Distance Switch,ptin:_DistanceSwitch,varname:node_7365,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_If,id:5316,x:33149,y:33314,varname:node_5316,prsc:2|A-4229-OUT,B-7365-OUT,GT-4744-RGB,EQ-2611-OUT,LT-2611-OUT;n:type:ShaderForge.SFN_Time,id:3375,x:33254,y:32711,varname:node_3375,prsc:2;n:type:ShaderForge.SFN_Sin,id:258,x:33403,y:32845,varname:node_258,prsc:2|IN-8763-OUT;n:type:ShaderForge.SFN_Multiply,id:8763,x:33254,y:32845,varname:node_8763,prsc:2|A-3375-T,B-1040-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1040,x:33254,y:32991,ptovrint:False,ptlb:SpeedTime,ptin:_SpeedTime,varname:node_1040,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Set,id:8181,x:34215,y:32806,varname:Time,prsc:2|IN-9624-OUT;n:type:ShaderForge.SFN_Get,id:7840,x:31648,y:33368,varname:node_7840,prsc:2|IN-7696-OUT;n:type:ShaderForge.SFN_Get,id:2570,x:31648,y:33430,varname:node_2570,prsc:2|IN-8181-OUT;n:type:ShaderForge.SFN_Add,id:1389,x:31834,y:33368,varname:node_1389,prsc:2|A-7840-OUT,B-2570-OUT;n:type:ShaderForge.SFN_Append,id:455,x:31982,y:33282,varname:node_455,prsc:2|A-1389-OUT,B-8092-OUT;n:type:ShaderForge.SFN_Get,id:8092,x:31648,y:33299,varname:node_8092,prsc:2|IN-8835-OUT;n:type:ShaderForge.SFN_SceneColor,id:7768,x:32127,y:33309,varname:node_7768,prsc:2|UVIN-455-OUT;n:type:ShaderForge.SFN_Slider,id:8671,x:33481,y:33014,ptovrint:False,ptlb:Scale Distort,ptin:_ScaleDistort,varname:node_8671,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Multiply,id:2231,x:33624,y:32814,varname:node_2231,prsc:2|A-258-OUT,B-8671-OUT;n:type:ShaderForge.SFN_Get,id:6198,x:31648,y:33615,varname:node_6198,prsc:2|IN-8835-OUT;n:type:ShaderForge.SFN_Get,id:6540,x:31648,y:33677,varname:node_6540,prsc:2|IN-8181-OUT;n:type:ShaderForge.SFN_Add,id:5573,x:31834,y:33615,varname:node_5573,prsc:2|A-6198-OUT,B-6540-OUT;n:type:ShaderForge.SFN_Append,id:3966,x:31982,y:33530,varname:node_3966,prsc:2|A-6777-OUT,B-5573-OUT;n:type:ShaderForge.SFN_Get,id:6777,x:31648,y:33546,varname:node_6777,prsc:2|IN-7696-OUT;n:type:ShaderForge.SFN_SceneColor,id:4625,x:32127,y:33557,varname:node_4625,prsc:2|UVIN-3966-OUT;n:type:ShaderForge.SFN_Divide,id:2611,x:32576,y:33466,varname:node_2611,prsc:2|A-1567-OUT,B-1272-OUT;n:type:ShaderForge.SFN_Vector1,id:1272,x:32308,y:33692,varname:node_1272,prsc:2,v1:4;n:type:ShaderForge.SFN_Add,id:1567,x:32308,y:33436,varname:node_1567,prsc:2|A-7768-RGB,B-4625-RGB,C-6521-RGB,D-7387-RGB;n:type:ShaderForge.SFN_Set,id:1339,x:33128,y:33172,varname:Distance,prsc:2|IN-4229-OUT;n:type:ShaderForge.SFN_Get,id:8887,x:33578,y:33269,varname:node_8887,prsc:2|IN-1339-OUT;n:type:ShaderForge.SFN_Divide,id:9624,x:33913,y:32844,varname:node_9624,prsc:2|A-2231-OUT,B-412-OUT;n:type:ShaderForge.SFN_Get,id:4236,x:31648,y:33195,varname:node_4236,prsc:2|IN-4821-OUT;n:type:ShaderForge.SFN_SceneColor,id:6521,x:31982,y:33163,varname:node_6521,prsc:2|UVIN-4236-OUT;n:type:ShaderForge.SFN_Multiply,id:186,x:33791,y:33189,varname:node_186,prsc:2|A-8887-OUT,B-8887-OUT;n:type:ShaderForge.SFN_Get,id:7314,x:31648,y:33830,varname:node_7314,prsc:2|IN-8835-OUT;n:type:ShaderForge.SFN_Get,id:7021,x:31401,y:33932,varname:node_7021,prsc:2|IN-8181-OUT;n:type:ShaderForge.SFN_Add,id:1669,x:31834,y:33830,varname:node_1669,prsc:2|A-7314-OUT,B-624-OUT;n:type:ShaderForge.SFN_Append,id:8713,x:31982,y:33745,varname:node_8713,prsc:2|A-8556-OUT,B-1669-OUT;n:type:ShaderForge.SFN_Get,id:8556,x:31648,y:33761,varname:node_8556,prsc:2|IN-7696-OUT;n:type:ShaderForge.SFN_SceneColor,id:7387,x:32127,y:33772,varname:node_7387,prsc:2|UVIN-8713-OUT;n:type:ShaderForge.SFN_Multiply,id:624,x:31684,y:33904,varname:node_624,prsc:2|A-7021-OUT,B-2333-OUT;n:type:ShaderForge.SFN_Vector1,id:2333,x:31519,y:34007,varname:node_2333,prsc:2,v1:1.1;n:type:ShaderForge.SFN_Clamp,id:412,x:34131,y:33009,varname:node_412,prsc:2|IN-186-OUT,MIN-5557-OUT,MAX-266-OUT;n:type:ShaderForge.SFN_Vector1,id:5557,x:33844,y:33069,varname:node_5557,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Vector1,id:266,x:33896,y:33009,varname:node_266,prsc:2,v1:100;proporder:7365-1040-8671;pass:END;sub:END;*/

Shader "Shader Forge/Distortion" {
    Properties {
        _DistanceSwitch ("Distance Switch", Float ) = 20
        _SpeedTime ("SpeedTime", Float ) = 2
        _ScaleDistort ("Scale Distort", Range(0, 0.1)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Front
            ZTest Always
            ZWrite Off
            
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
            uniform sampler2D _GrabTexture;
            uniform float _DistanceSwitch;
            uniform float _SpeedTime;
            uniform float _ScaleDistort;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float node_4229 = distance(_WorldSpaceCameraPos,objPos.rgb);
                float node_5316_if_leA = step(node_4229,_DistanceSwitch);
                float node_5316_if_leB = step(_DistanceSwitch,node_4229);
                float ScreenU = sceneUVs.r;
                float4 node_3375 = _Time;
                float Distance = node_4229;
                float node_8887 = Distance;
                float node_186 = (node_8887*node_8887);
                float Time = ((sin((node_3375.g*_SpeedTime))*_ScaleDistort)/clamp(node_186,0.9,100.0));
                float SceneV = sceneUVs.g;
                float2 ScreenUV = sceneUVs.rg;
                float3 node_2611 = ((tex2D( _GrabTexture, float2((ScreenU+Time),SceneV)).rgb+tex2D( _GrabTexture, float2(ScreenU,(SceneV+Time))).rgb+tex2D( _GrabTexture, ScreenUV).rgb+tex2D( _GrabTexture, float2(ScreenU,(SceneV+(Time*1.1)))).rgb)/4.0);
                float3 emissive = lerp((node_5316_if_leA*node_2611)+(node_5316_if_leB*tex2D( _GrabTexture, ScreenUV).rgb),node_2611,node_5316_if_leA*node_5316_if_leB);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
