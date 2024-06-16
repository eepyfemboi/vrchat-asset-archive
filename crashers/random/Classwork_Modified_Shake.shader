// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34628,y:32622,varname:node_3138,prsc:2|emission-7019-OUT;n:type:ShaderForge.SFN_Time,id:1433,x:32347,y:32692,varname:node_1433,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8155,x:32860,y:32641,varname:node_8155,prsc:2|A-1433-TTR,B-3842-OUT;n:type:ShaderForge.SFN_Slider,id:3842,x:32627,y:32803,ptovrint:False,ptlb:X Rate,ptin:_XRate,varname:node_3842,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:30;n:type:ShaderForge.SFN_Sin,id:1615,x:33031,y:32641,varname:node_1615,prsc:2|IN-8155-OUT;n:type:ShaderForge.SFN_Sign,id:9479,x:33207,y:32641,varname:node_9479,prsc:2|IN-1615-OUT;n:type:ShaderForge.SFN_Multiply,id:7550,x:33410,y:32641,varname:node_7550,prsc:2|A-9479-OUT,B-4429-OUT;n:type:ShaderForge.SFN_Slider,id:3365,x:32966,y:32790,ptovrint:False,ptlb:X Distance,ptin:_XDistance,varname:node_3365,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Slider,id:192,x:32312,y:33010,ptovrint:False,ptlb:Y Rate,ptin:_YRate,varname:node_192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:30;n:type:ShaderForge.SFN_Multiply,id:5915,x:32679,y:32921,varname:node_5915,prsc:2|A-1433-TTR,B-192-OUT;n:type:ShaderForge.SFN_Cos,id:2559,x:32872,y:32921,varname:node_2559,prsc:2|IN-5915-OUT;n:type:ShaderForge.SFN_Sign,id:8330,x:33045,y:32921,varname:node_8330,prsc:2|IN-2559-OUT;n:type:ShaderForge.SFN_Multiply,id:2886,x:33346,y:32937,varname:node_2886,prsc:2|A-8330-OUT,B-3600-OUT;n:type:ShaderForge.SFN_Slider,id:4173,x:32622,y:33106,ptovrint:False,ptlb:Y Distance,ptin:_YDistance,varname:node_4173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.04047048,max:0.1;n:type:ShaderForge.SFN_ScreenPos,id:6019,x:33325,y:33246,varname:node_6019,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:7572,x:33625,y:32791,varname:node_7572,prsc:2|A-7550-OUT,B-6019-U;n:type:ShaderForge.SFN_Add,id:1314,x:33625,y:32970,varname:node_1314,prsc:2|A-2886-OUT,B-6019-V;n:type:ShaderForge.SFN_Tex2d,id:9902,x:33667,y:32298,ptovrint:False,ptlb:DistortionMap,ptin:_DistortionMap,varname:node_9902,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:5879,x:33947,y:32450,varname:node_5879,prsc:2|A-5320-OUT,B-5028-OUT;n:type:ShaderForge.SFN_Slider,id:5028,x:33570,y:32506,ptovrint:False,ptlb:DistortionScale,ptin:_DistortionScale,varname:node_5028,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:4325,x:33804,y:32791,varname:node_4325,prsc:2|A-7572-OUT,B-1314-OUT;n:type:ShaderForge.SFN_SceneColor,id:2530,x:34019,y:32865,varname:node_2530,prsc:2|UVIN-5023-OUT;n:type:ShaderForge.SFN_Multiply,id:7019,x:34422,y:32707,varname:node_7019,prsc:2|A-2530-RGB,B-8018-RGB;n:type:ShaderForge.SFN_Color,id:8018,x:34209,y:32949,ptovrint:False,ptlb:ColorOverLay,ptin:_ColorOverLay,varname:node_8018,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Append,id:5320,x:33844,y:32321,varname:node_5320,prsc:2|A-9902-R,B-9902-G;n:type:ShaderForge.SFN_Add,id:5023,x:33993,y:32657,varname:node_5023,prsc:2|A-5879-OUT,B-4325-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:9208,x:32359,y:33196,varname:node_9208,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:9715,x:32359,y:33336,varname:node_9715,prsc:2;n:type:ShaderForge.SFN_Distance,id:1408,x:32557,y:33241,varname:node_1408,prsc:2|A-9208-XYZ,B-9715-XYZ;n:type:ShaderForge.SFN_Slider,id:5808,x:32736,y:33488,ptovrint:False,ptlb:Distance,ptin:_Distance,varname:node_5808,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:27.13624,max:100;n:type:ShaderForge.SFN_Vector1,id:9370,x:32544,y:33445,varname:node_9370,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:5245,x:32736,y:33251,varname:node_5245,prsc:2|IN-1408-OUT,MIN-9370-OUT,MAX-5808-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7625,x:32962,y:33137,varname:node_7625,prsc:2|IN-5245-OUT,IMIN-9370-OUT,IMAX-5808-OUT,OMIN-9370-OUT,OMAX-4173-OUT;n:type:ShaderForge.SFN_Subtract,id:3600,x:33158,y:33086,varname:node_3600,prsc:2|A-4173-OUT,B-7625-OUT;n:type:ShaderForge.SFN_Subtract,id:4429,x:33290,y:32790,varname:node_4429,prsc:2|A-3365-OUT,B-9996-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9996,x:33132,y:33246,varname:node_9996,prsc:2|IN-5245-OUT,IMIN-9370-OUT,IMAX-5808-OUT,OMIN-9370-OUT,OMAX-3365-OUT;proporder:3842-3365-192-4173-9902-5028-8018-5808;pass:END;sub:END;*/

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
                float4 node_1433 = _Time;
                float node_9370 = 0.0;
                float node_5245 = clamp(distance(objPos.rgb,_WorldSpaceCameraPos),node_9370,_Distance);
                float3 emissive = (tex2D( Refraction, ((float2(_DistortionMap_var.r,_DistortionMap_var.g)*_DistortionScale)+float2(((sign(sin((node_1433.a*_XRate)))*(_XDistance-(node_9370 + ( (node_5245 - node_9370) * (_XDistance - node_9370) ) / (_Distance - node_9370))))+sceneUVs.r),((sign(cos((node_1433.a*_YRate)))*(_YDistance-(node_9370 + ( (node_5245 - node_9370) * (_YDistance - node_9370) ) / (_Distance - node_9370))))+sceneUVs.g)))).rgb*_ColorOverLay.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
