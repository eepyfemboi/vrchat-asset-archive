// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:100,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32952,y:33071,varname:node_2865,prsc:2|custl-6883-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7390,x:32133,y:31669,varname:node_7390,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:9343,x:32387,y:34625,varname:node_9343,prsc:2|UVIN-6546-OUT;n:type:ShaderForge.SFN_Slider,id:7853,x:31266,y:31483,ptovrint:False,ptlb:Blur Strength,ptin:_BlurStrength,varname:node_7853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.075;n:type:ShaderForge.SFN_Set,id:7301,x:32341,y:31620,varname:_ScreenPos,prsc:2|IN-7390-UVOUT;n:type:ShaderForge.SFN_Set,id:8472,x:31986,y:31617,varname:_Diffuse,prsc:2|IN-5014-OUT;n:type:ShaderForge.SFN_Add,id:3875,x:32090,y:35139,varname:node_3875,prsc:2|A-1761-OUT,B-67-OUT;n:type:ShaderForge.SFN_Get,id:1761,x:31872,y:35105,varname:node_1761,prsc:2|IN-7301-OUT;n:type:ShaderForge.SFN_Get,id:67,x:31857,y:35178,varname:node_67,prsc:2|IN-8472-OUT;n:type:ShaderForge.SFN_Set,id:7454,x:32381,y:31698,varname:_ScreenposU,prsc:2|IN-7390-U;n:type:ShaderForge.SFN_Set,id:4999,x:32381,y:31756,varname:_ScreenposV,prsc:2|IN-7390-V;n:type:ShaderForge.SFN_Add,id:6756,x:32009,y:34361,varname:node_6756,prsc:2|A-4717-OUT,B-5301-OUT;n:type:ShaderForge.SFN_Append,id:3614,x:32225,y:34361,varname:node_3614,prsc:2|A-6756-OUT,B-2344-OUT;n:type:ShaderForge.SFN_Add,id:5256,x:32024,y:34564,varname:node_5256,prsc:2|A-4753-OUT,B-5023-OUT;n:type:ShaderForge.SFN_Append,id:6546,x:32225,y:34564,varname:node_6546,prsc:2|A-5808-OUT,B-5256-OUT;n:type:ShaderForge.SFN_Get,id:4717,x:31813,y:34338,varname:node_4717,prsc:2|IN-7454-OUT;n:type:ShaderForge.SFN_Get,id:5301,x:31827,y:34397,varname:node_5301,prsc:2|IN-8472-OUT;n:type:ShaderForge.SFN_Get,id:4753,x:31827,y:34547,varname:node_4753,prsc:2|IN-4999-OUT;n:type:ShaderForge.SFN_Get,id:5023,x:31827,y:34600,varname:node_5023,prsc:2|IN-8472-OUT;n:type:ShaderForge.SFN_Get,id:2344,x:32035,y:34292,varname:node_2344,prsc:2|IN-4999-OUT;n:type:ShaderForge.SFN_Get,id:5808,x:32046,y:34519,varname:node_5808,prsc:2|IN-7454-OUT;n:type:ShaderForge.SFN_SceneColor,id:368,x:32364,y:34456,varname:node_368,prsc:2|UVIN-3614-OUT;n:type:ShaderForge.SFN_Add,id:4263,x:32533,y:34530,varname:node_4263,prsc:2|A-1404-RGB,B-368-RGB,C-9343-RGB,D-7503-RGB,E-7139-RGB;n:type:ShaderForge.SFN_Divide,id:6612,x:32533,y:34301,varname:node_6612,prsc:2|A-6215-OUT,B-6503-OUT;n:type:ShaderForge.SFN_Vector1,id:6503,x:32570,y:34774,varname:node_6503,prsc:2,v1:9;n:type:ShaderForge.SFN_SceneColor,id:1404,x:32213,y:34220,varname:node_1404,prsc:2|UVIN-5152-OUT;n:type:ShaderForge.SFN_Get,id:5152,x:32016,y:34238,varname:node_5152,prsc:2|IN-7301-OUT;n:type:ShaderForge.SFN_SceneColor,id:7139,x:32430,y:35033,varname:node_7139,prsc:2|UVIN-1469-OUT;n:type:ShaderForge.SFN_Append,id:8449,x:32269,y:34770,varname:node_8449,prsc:2|A-4364-OUT,B-2877-OUT;n:type:ShaderForge.SFN_Append,id:1469,x:32269,y:34972,varname:node_1469,prsc:2|A-3559-OUT,B-160-OUT;n:type:ShaderForge.SFN_Get,id:2838,x:31857,y:34747,varname:node_2838,prsc:2|IN-7454-OUT;n:type:ShaderForge.SFN_Get,id:2918,x:31872,y:34806,varname:node_2918,prsc:2|IN-8472-OUT;n:type:ShaderForge.SFN_Get,id:672,x:31872,y:34955,varname:node_672,prsc:2|IN-4999-OUT;n:type:ShaderForge.SFN_Get,id:1040,x:31872,y:35008,varname:node_1040,prsc:2|IN-8472-OUT;n:type:ShaderForge.SFN_Get,id:2877,x:32079,y:34700,varname:node_2877,prsc:2|IN-4999-OUT;n:type:ShaderForge.SFN_Get,id:3559,x:32090,y:34928,varname:node_3559,prsc:2|IN-7454-OUT;n:type:ShaderForge.SFN_SceneColor,id:7503,x:32409,y:34865,varname:node_7503,prsc:2|UVIN-8449-OUT;n:type:ShaderForge.SFN_Subtract,id:4364,x:32057,y:34747,varname:node_4364,prsc:2|A-2838-OUT,B-2918-OUT;n:type:ShaderForge.SFN_Subtract,id:160,x:32090,y:35008,varname:node_160,prsc:2|A-672-OUT,B-1040-OUT;n:type:ShaderForge.SFN_Subtract,id:6960,x:32106,y:35289,varname:node_6960,prsc:2|A-1761-OUT,B-67-OUT;n:type:ShaderForge.SFN_SceneColor,id:405,x:32430,y:35158,varname:node_405,prsc:2|UVIN-3875-OUT;n:type:ShaderForge.SFN_SceneColor,id:3684,x:32390,y:35314,varname:node_3684,prsc:2|UVIN-6960-OUT;n:type:ShaderForge.SFN_Add,id:7994,x:32677,y:35236,varname:node_7994,prsc:2|A-405-RGB,B-3684-RGB,C-4518-RGB,D-416-RGB;n:type:ShaderForge.SFN_Add,id:6082,x:32092,y:35455,varname:node_6082,prsc:2|A-2632-OUT,B-8052-OUT;n:type:ShaderForge.SFN_Subtract,id:2762,x:32092,y:35591,varname:node_2762,prsc:2|A-2484-OUT,B-8052-OUT;n:type:ShaderForge.SFN_Add,id:6560,x:32092,y:35724,varname:node_6560,prsc:2|A-2109-OUT,B-2070-OUT;n:type:ShaderForge.SFN_Subtract,id:9103,x:32092,y:35859,varname:node_9103,prsc:2|A-5397-OUT,B-2070-OUT;n:type:ShaderForge.SFN_Get,id:2632,x:31862,y:35434,varname:node_2632,prsc:2|IN-7454-OUT;n:type:ShaderForge.SFN_Get,id:8052,x:31867,y:35562,varname:node_8052,prsc:2|IN-8472-OUT;n:type:ShaderForge.SFN_Get,id:2484,x:31849,y:35655,varname:node_2484,prsc:2|IN-4999-OUT;n:type:ShaderForge.SFN_Get,id:2109,x:31879,y:35724,varname:node_2109,prsc:2|IN-4999-OUT;n:type:ShaderForge.SFN_Append,id:7236,x:32265,y:35519,varname:node_7236,prsc:2|A-6082-OUT,B-2762-OUT;n:type:ShaderForge.SFN_Append,id:7849,x:32290,y:35774,varname:node_7849,prsc:2|A-9103-OUT,B-6560-OUT;n:type:ShaderForge.SFN_SceneColor,id:4518,x:32443,y:35544,varname:node_4518,prsc:2|UVIN-7236-OUT;n:type:ShaderForge.SFN_SceneColor,id:416,x:32474,y:35774,varname:node_416,prsc:2|UVIN-7849-OUT;n:type:ShaderForge.SFN_Get,id:2070,x:31895,y:35797,varname:node_2070,prsc:2|IN-8472-OUT;n:type:ShaderForge.SFN_Get,id:5397,x:31879,y:35859,varname:node_5397,prsc:2|IN-7454-OUT;n:type:ShaderForge.SFN_Add,id:6215,x:32718,y:34604,varname:node_6215,prsc:2|A-4263-OUT,B-7994-OUT;n:type:ShaderForge.SFN_Distance,id:1001,x:31548,y:31659,varname:node_1001,prsc:2|A-4473-XYZ,B-9385-XYZ;n:type:ShaderForge.SFN_ViewPosition,id:9385,x:31335,y:31852,varname:node_9385,prsc:2;n:type:ShaderForge.SFN_Divide,id:5014,x:31804,y:31581,varname:node_5014,prsc:2|A-7853-OUT,B-1001-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6883,x:32256,y:33568,ptovrint:False,ptlb:Blur,ptin:_Blur,varname:node_6883,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7307-OUT,B-6612-OUT;n:type:ShaderForge.SFN_Slider,id:6046,x:31888,y:31929,ptovrint:False,ptlb:Pixelation Strength,ptin:_PixelationStrength,varname:node_6046,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:10,cur:10,max:500;n:type:ShaderForge.SFN_Set,id:3239,x:32232,y:31971,varname:Pixel,prsc:2|IN-6046-OUT;n:type:ShaderForge.SFN_Multiply,id:413,x:31493,y:33644,varname:node_413,prsc:2|A-6398-OUT,B-7397-OUT;n:type:ShaderForge.SFN_Get,id:6398,x:31168,y:33642,varname:node_6398,prsc:2|IN-7301-OUT;n:type:ShaderForge.SFN_Get,id:7397,x:31307,y:33710,varname:node_7397,prsc:2|IN-3239-OUT;n:type:ShaderForge.SFN_Floor,id:1960,x:31645,y:33626,varname:node_1960,prsc:2|IN-413-OUT;n:type:ShaderForge.SFN_Divide,id:2087,x:31673,y:33756,varname:node_2087,prsc:2|A-1960-OUT,B-7397-OUT;n:type:ShaderForge.SFN_SceneColor,id:3742,x:31732,y:33890,varname:node_3742,prsc:2|UVIN-2087-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7307,x:31988,y:33551,ptovrint:False,ptlb:Pixelate,ptin:_Pixelate,varname:node_7307,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3190-OUT,B-3742-RGB;n:type:ShaderForge.SFN_Vector1,id:3190,x:31793,y:33523,varname:node_3190,prsc:2,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:4473,x:31335,y:31659,varname:node_4473,prsc:2;proporder:6883-7853-7307-6046;pass:END;sub:END;*/

Shader "Bender's Shaders/Screen FX/Blur & Pixel" {
    Properties {
        [MaterialToggle] _Blur ("Blur", Float ) = 0
        _BlurStrength ("Blur Strength", Range(0, 0.075)) = 0
        [MaterialToggle] _Pixelate ("Pixelate", Float ) = 0
        _PixelationStrength ("Pixelation Strength", Range(10, 500)) = 10
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+100"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _BlurStrength;
            uniform fixed _Blur;
            uniform float _PixelationStrength;
            uniform fixed _Pixelate;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float2 _ScreenPos = sceneUVs.rg;
                float Pixel = _PixelationStrength;
                float node_7397 = Pixel;
                float _ScreenposU = sceneUVs.r;
                float _Diffuse = (_BlurStrength/distance(i.posWorld.rgb,_WorldSpaceCameraPos));
                float _ScreenposV = sceneUVs.g;
                float2 node_1761 = _ScreenPos;
                float node_67 = _Diffuse;
                float node_8052 = _Diffuse;
                float node_2070 = _Diffuse;
                float3 finalColor = lerp( lerp( 0.0, tex2D( _GrabTexture, (floor((_ScreenPos*node_7397))/node_7397)).rgb, _Pixelate ), (((tex2D( _GrabTexture, _ScreenPos).rgb+tex2D( _GrabTexture, float2((_ScreenposU+_Diffuse),_ScreenposV)).rgb+tex2D( _GrabTexture, float2(_ScreenposU,(_ScreenposV+_Diffuse))).rgb+tex2D( _GrabTexture, float2((_ScreenposU-_Diffuse),_ScreenposV)).rgb+tex2D( _GrabTexture, float2(_ScreenposU,(_ScreenposV-_Diffuse))).rgb)+(tex2D( _GrabTexture, (node_1761+node_67)).rgb+tex2D( _GrabTexture, (node_1761-node_67)).rgb+tex2D( _GrabTexture, float2((_ScreenposU+node_8052),(_ScreenposV-node_8052))).rgb+tex2D( _GrabTexture, float2((_ScreenposU-node_2070),(_ScreenposV+node_2070))).rgb))/9.0), _Blur );
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
