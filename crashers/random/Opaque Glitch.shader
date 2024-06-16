// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33336,y:33529,varname:node_3138,prsc:2|emission-6268-OUT,clip-9889-A,voffset-9872-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1302,x:31521,y:33584,varname:node_1302,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2920-XYZ;n:type:ShaderForge.SFN_Add,id:1262,x:31684,y:33693,varname:node_1262,prsc:2|A-1302-G,B-381-OUT;n:type:ShaderForge.SFN_Slider,id:804,x:34057,y:31910,ptovrint:False,ptlb:Glitch Speed,ptin:_GlitchSpeed,varname:node_804,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-1,max:1;n:type:ShaderForge.SFN_Sin,id:2709,x:31839,y:33544,varname:node_2709,prsc:2|IN-2380-OUT;n:type:ShaderForge.SFN_Multiply,id:381,x:31441,y:33727,varname:node_381,prsc:2|A-8425-OUT,B-5016-T;n:type:ShaderForge.SFN_Time,id:5016,x:31273,y:33831,varname:node_5016,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:8425,x:31273,y:33672,varname:node_8425,prsc:2,frmn:-1,frmx:1,tomn:-10,tomx:10|IN-2788-OUT;n:type:ShaderForge.SFN_Clamp01,id:2082,x:32121,y:33442,varname:node_2082,prsc:2|IN-4014-OUT;n:type:ShaderForge.SFN_Multiply,id:187,x:32301,y:33482,varname:node_187,prsc:2|A-2082-OUT,B-8972-OUT;n:type:ShaderForge.SFN_Slider,id:3296,x:33798,y:32350,ptovrint:False,ptlb:Glitch Strength,ptin:_GlitchStrength,varname:node_3296,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:9889,x:32601,y:33192,ptovrint:False,ptlb:Main Tex,ptin:_MainTex,varname:node_9889,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_FragmentPosition,id:9885,x:30945,y:33557,varname:node_9885,prsc:2;n:type:ShaderForge.SFN_Subtract,id:973,x:31103,y:33508,varname:node_973,prsc:2|A-9885-XYZ,B-7917-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:7917,x:30945,y:33674,varname:node_7917,prsc:2;n:type:ShaderForge.SFN_Transform,id:2920,x:31273,y:33508,varname:node_2920,prsc:2,tffrom:0,tfto:1|IN-973-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4014,x:32121,y:33656,varname:node_4014,prsc:2|IN-2709-OUT,IMIN-8575-OUT,IMAX-7871-OUT,OMIN-6003-OUT,OMAX-953-OUT;n:type:ShaderForge.SFN_Slider,id:1741,x:33968,y:32109,ptovrint:False,ptlb:Glitch Size,ptin:_GlitchSize,varname:node_1741,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:6496,x:34268,y:32109,varname:node_6496,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0.9|IN-1741-OUT;n:type:ShaderForge.SFN_Add,id:828,x:34362,y:32288,varname:node_828,prsc:2|A-6496-OUT,B-5960-OUT;n:type:ShaderForge.SFN_Slider,id:8026,x:33826,y:32245,ptovrint:False,ptlb:Glitch Edge Hardness,ptin:_GlitchEdgeHardness,varname:node_8026,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:5960,x:34182,y:32260,varname:node_5960,prsc:2,frmn:0,frmx:1,tomn:0.05,tomx:0.001|IN-8026-OUT;n:type:ShaderForge.SFN_Vector1,id:6003,x:31893,y:33739,varname:node_6003,prsc:2,v1:-5;n:type:ShaderForge.SFN_Vector1,id:953,x:31876,y:33799,varname:node_953,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:2380,x:31852,y:33433,varname:node_2380,prsc:2|A-393-OUT,B-1262-OUT;n:type:ShaderForge.SFN_Slider,id:4027,x:34004,y:32015,ptovrint:False,ptlb:Glitch artifacts,ptin:_Glitchartifacts,varname:node_4027,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:5;n:type:ShaderForge.SFN_Set,id:2692,x:34509,y:32095,varname:GlitchSize,prsc:2|IN-6496-OUT;n:type:ShaderForge.SFN_Set,id:2625,x:34584,y:32208,varname:GlitchHardness,prsc:2|IN-828-OUT;n:type:ShaderForge.SFN_Get,id:8575,x:31889,y:33633,varname:node_8575,prsc:2|IN-2692-OUT;n:type:ShaderForge.SFN_Get,id:7871,x:31900,y:33681,varname:node_7871,prsc:2|IN-2625-OUT;n:type:ShaderForge.SFN_Set,id:5687,x:34161,y:32494,varname:GlitchStrength,prsc:2|IN-4774-OUT;n:type:ShaderForge.SFN_Get,id:8972,x:32121,y:33582,varname:node_8972,prsc:2|IN-5687-OUT;n:type:ShaderForge.SFN_Set,id:5883,x:34412,y:32027,varname:GlitchArtifacts,prsc:2|IN-4027-OUT;n:type:ShaderForge.SFN_Get,id:393,x:31668,y:33433,varname:node_393,prsc:2|IN-5883-OUT;n:type:ShaderForge.SFN_Set,id:6999,x:34397,y:31923,varname:Speed,prsc:2|IN-804-OUT;n:type:ShaderForge.SFN_Get,id:2788,x:31083,y:33693,varname:node_2788,prsc:2|IN-6999-OUT;n:type:ShaderForge.SFN_ComponentMask,id:495,x:31455,y:34018,varname:node_495,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-9150-XYZ;n:type:ShaderForge.SFN_Add,id:8881,x:31618,y:34127,varname:node_8881,prsc:2|A-495-B,B-6153-OUT;n:type:ShaderForge.SFN_Sin,id:2784,x:31773,y:33979,varname:node_2784,prsc:2|IN-4032-OUT;n:type:ShaderForge.SFN_Multiply,id:6153,x:31375,y:34161,varname:node_6153,prsc:2|A-4335-OUT,B-249-T;n:type:ShaderForge.SFN_Time,id:249,x:31207,y:34265,varname:node_249,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:4335,x:31207,y:34107,varname:node_4335,prsc:2,frmn:-1,frmx:1,tomn:-10,tomx:10|IN-2896-OUT;n:type:ShaderForge.SFN_Clamp01,id:8175,x:32055,y:33876,varname:node_8175,prsc:2|IN-2439-OUT;n:type:ShaderForge.SFN_Multiply,id:120,x:32235,y:33916,varname:node_120,prsc:2|A-8175-OUT,B-8146-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1659,x:30880,y:33992,varname:node_1659,prsc:2;n:type:ShaderForge.SFN_Subtract,id:8812,x:31037,y:33943,varname:node_8812,prsc:2|A-1659-XYZ,B-3396-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:3396,x:30880,y:34108,varname:node_3396,prsc:2;n:type:ShaderForge.SFN_Transform,id:9150,x:31207,y:33943,varname:node_9150,prsc:2,tffrom:0,tfto:1|IN-8812-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2439,x:32055,y:34091,varname:node_2439,prsc:2|IN-2784-OUT,IMIN-7188-OUT,IMAX-8109-OUT,OMIN-5276-OUT,OMAX-6885-OUT;n:type:ShaderForge.SFN_Vector1,id:5276,x:31827,y:34174,varname:node_5276,prsc:2,v1:-5;n:type:ShaderForge.SFN_Vector1,id:6885,x:31810,y:34234,varname:node_6885,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4032,x:31787,y:33867,varname:node_4032,prsc:2|A-1623-OUT,B-8881-OUT;n:type:ShaderForge.SFN_Get,id:7188,x:31824,y:34068,varname:node_7188,prsc:2|IN-2692-OUT;n:type:ShaderForge.SFN_Get,id:8109,x:31835,y:34116,varname:node_8109,prsc:2|IN-2625-OUT;n:type:ShaderForge.SFN_Get,id:8146,x:32055,y:34016,varname:node_8146,prsc:2|IN-5687-OUT;n:type:ShaderForge.SFN_Get,id:1623,x:31602,y:33867,varname:node_1623,prsc:2|IN-5883-OUT;n:type:ShaderForge.SFN_Get,id:2896,x:31018,y:34127,varname:node_2896,prsc:2|IN-6999-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7952,x:31450,y:34472,varname:node_7952,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-6364-XYZ;n:type:ShaderForge.SFN_Add,id:4529,x:31613,y:34581,varname:node_4529,prsc:2|A-7952-R,B-739-OUT;n:type:ShaderForge.SFN_Sin,id:9286,x:31768,y:34433,varname:node_9286,prsc:2|IN-445-OUT;n:type:ShaderForge.SFN_Multiply,id:739,x:31370,y:34615,varname:node_739,prsc:2|A-3859-OUT,B-7738-T;n:type:ShaderForge.SFN_Time,id:7738,x:31202,y:34719,varname:node_7738,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:3859,x:31202,y:34561,varname:node_3859,prsc:2,frmn:-1,frmx:1,tomn:-10,tomx:10|IN-6933-OUT;n:type:ShaderForge.SFN_Clamp01,id:4126,x:32050,y:34330,varname:node_4126,prsc:2|IN-6279-OUT;n:type:ShaderForge.SFN_Multiply,id:2475,x:32230,y:34370,varname:node_2475,prsc:2|A-4126-OUT,B-9942-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4838,x:30875,y:34446,varname:node_4838,prsc:2;n:type:ShaderForge.SFN_Subtract,id:1199,x:31032,y:34397,varname:node_1199,prsc:2|A-4838-XYZ,B-1019-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:1019,x:30875,y:34562,varname:node_1019,prsc:2;n:type:ShaderForge.SFN_Transform,id:6364,x:31202,y:34397,varname:node_6364,prsc:2,tffrom:0,tfto:1|IN-1199-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:6279,x:32050,y:34545,varname:node_6279,prsc:2|IN-9286-OUT,IMIN-19-OUT,IMAX-7243-OUT,OMIN-3713-OUT,OMAX-4326-OUT;n:type:ShaderForge.SFN_Vector1,id:3713,x:31822,y:34628,varname:node_3713,prsc:2,v1:-5;n:type:ShaderForge.SFN_Vector1,id:4326,x:31805,y:34688,varname:node_4326,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:445,x:31782,y:34321,varname:node_445,prsc:2|A-7926-OUT,B-4529-OUT;n:type:ShaderForge.SFN_Get,id:19,x:31819,y:34522,varname:node_19,prsc:2|IN-2692-OUT;n:type:ShaderForge.SFN_Get,id:7243,x:31830,y:34570,varname:node_7243,prsc:2|IN-2625-OUT;n:type:ShaderForge.SFN_Get,id:9942,x:32050,y:34470,varname:node_9942,prsc:2|IN-5687-OUT;n:type:ShaderForge.SFN_Get,id:7926,x:31597,y:34321,varname:node_7926,prsc:2|IN-5883-OUT;n:type:ShaderForge.SFN_Get,id:6933,x:31013,y:34581,varname:node_6933,prsc:2|IN-6999-OUT;n:type:ShaderForge.SFN_Append,id:9872,x:33038,y:33992,varname:node_9872,prsc:2|A-875-OUT,B-1569-OUT,C-8960-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1569,x:32735,y:33795,ptovrint:False,ptlb:Verticle Glitch,ptin:_VerticleGlitch,varname:node_1569,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3183-OUT,B-187-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8960,x:32735,y:33937,ptovrint:False,ptlb:Depth Glitch,ptin:_DepthGlitch,varname:_VerticleGlitch_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3183-OUT,B-120-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:875,x:32735,y:34075,ptovrint:False,ptlb:Horizontal Glitch,ptin:_HorizontalGlitch,varname:_VerticleGlitch_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3183-OUT,B-2475-OUT;n:type:ShaderForge.SFN_Vector1,id:3183,x:32460,y:34000,varname:node_3183,prsc:2,v1:0;n:type:ShaderForge.SFN_RemapRange,id:4774,x:33983,y:32440,varname:node_4774,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.2|IN-3296-OUT;n:type:ShaderForge.SFN_Color,id:9310,x:32042,y:33154,ptovrint:False,ptlb:Tex/Holo Color,ptin:_TexHoloColor,varname:node_9310,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3265,x:32219,y:33209,varname:node_3265,prsc:2|A-9310-RGB,B-5060-OUT;n:type:ShaderForge.SFN_Slider,id:5060,x:31899,y:33311,ptovrint:False,ptlb:Color Strength,ptin:_ColorStrength,varname:node_5060,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:6268,x:33030,y:33171,ptovrint:False,ptlb:Saturate/Tint,ptin:_SaturateTint,varname:node_6268,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7929-OUT,B-1969-OUT;n:type:ShaderForge.SFN_Multiply,id:1969,x:32803,y:33014,varname:node_1969,prsc:2|A-9889-RGB,B-3265-OUT;n:type:ShaderForge.SFN_Add,id:7929,x:32804,y:33144,varname:node_7929,prsc:2|A-9889-RGB,B-3265-OUT;n:type:ShaderForge.SFN_Slider,id:1637,x:32652,y:33541,ptovrint:False,ptlb:Hologram Strength,ptin:_HologramStrength,varname:node_1637,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:8058,x:32998,y:33524,varname:node_8058,prsc:2|IN-1637-OUT;proporder:9889-6268-9310-5060-1569-875-8960-3296-1741-8026-4027-804-1637;pass:END;sub:END;*/

Shader "Bender's Shaders/Special FX/Opaque Glitch" {
    Properties {
        _MainTex ("Main Tex", 2D) = "white" {}
        [MaterialToggle] _SaturateTint ("Saturate/Tint", Float ) = 0
        _TexHoloColor ("Tex/Holo Color", Color) = (1,1,1,1)
        _ColorStrength ("Color Strength", Range(0, 1)) = 0
        [MaterialToggle] _VerticleGlitch ("Verticle Glitch", Float ) = 0
        [MaterialToggle] _HorizontalGlitch ("Horizontal Glitch", Float ) = 0
        [MaterialToggle] _DepthGlitch ("Depth Glitch", Float ) = 0
        _GlitchStrength ("Glitch Strength", Range(0, 1)) = 0
        _GlitchSize ("Glitch Size", Range(0, 1)) = 0
        _GlitchEdgeHardness ("Glitch Edge Hardness", Range(0, 1)) = 0
        _Glitchartifacts ("Glitch artifacts", Range(1, 5)) = 1
        _GlitchSpeed ("Glitch Speed", Range(-1, 1)) = -1
        [HideInInspector]_HologramStrength ("Hologram Strength", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
            "DisableBatching"="True"
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
            uniform float _GlitchSpeed;
            uniform float _GlitchStrength;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _GlitchSize;
            uniform float _GlitchEdgeHardness;
            uniform float _Glitchartifacts;
            uniform fixed _VerticleGlitch;
            uniform fixed _DepthGlitch;
            uniform fixed _HorizontalGlitch;
            uniform float4 _TexHoloColor;
            uniform float _ColorStrength;
            uniform fixed _SaturateTint;
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
                float node_3183 = 0.0;
                float GlitchArtifacts = _Glitchartifacts;
                float Speed = _GlitchSpeed;
                float4 node_7738 = _Time;
                float node_6496 = (_GlitchSize*-0.1+1.0);
                float GlitchSize = node_6496;
                float node_19 = GlitchSize;
                float GlitchHardness = (node_6496+(_GlitchEdgeHardness*-0.049+0.05));
                float node_3713 = (-5.0);
                float GlitchStrength = (_GlitchStrength*0.2+0.0);
                float4 node_5016 = _Time;
                float node_8575 = GlitchSize;
                float node_6003 = (-5.0);
                float4 node_249 = _Time;
                float node_7188 = GlitchSize;
                float node_5276 = (-5.0);
                v.vertex.xyz += float3(lerp( node_3183, (saturate((node_3713 + ( (sin((GlitchArtifacts*(mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rgb.r+((Speed*10.0+0.0)*node_7738.g)))) - node_19) * (1.0 - node_3713) ) / (GlitchHardness - node_19)))*GlitchStrength), _HorizontalGlitch ),lerp( node_3183, (saturate((node_6003 + ( (sin((GlitchArtifacts*(mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rgb.g+((Speed*10.0+0.0)*node_5016.g)))) - node_8575) * (1.0 - node_6003) ) / (GlitchHardness - node_8575)))*GlitchStrength), _VerticleGlitch ),lerp( node_3183, (saturate((node_5276 + ( (sin((GlitchArtifacts*(mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rgb.b+((Speed*10.0+0.0)*node_249.g)))) - node_7188) * (1.0 - node_5276) ) / (GlitchHardness - node_7188)))*GlitchStrength), _DepthGlitch ));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
////// Lighting:
////// Emissive:
                float3 node_3265 = (_TexHoloColor.rgb*_ColorStrength);
                float3 emissive = lerp( (_MainTex_var.rgb+node_3265), (_MainTex_var.rgb*node_3265), _SaturateTint );
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
            uniform float _GlitchSpeed;
            uniform float _GlitchStrength;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _GlitchSize;
            uniform float _GlitchEdgeHardness;
            uniform float _Glitchartifacts;
            uniform fixed _VerticleGlitch;
            uniform fixed _DepthGlitch;
            uniform fixed _HorizontalGlitch;
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
                float node_3183 = 0.0;
                float GlitchArtifacts = _Glitchartifacts;
                float Speed = _GlitchSpeed;
                float4 node_7738 = _Time;
                float node_6496 = (_GlitchSize*-0.1+1.0);
                float GlitchSize = node_6496;
                float node_19 = GlitchSize;
                float GlitchHardness = (node_6496+(_GlitchEdgeHardness*-0.049+0.05));
                float node_3713 = (-5.0);
                float GlitchStrength = (_GlitchStrength*0.2+0.0);
                float4 node_5016 = _Time;
                float node_8575 = GlitchSize;
                float node_6003 = (-5.0);
                float4 node_249 = _Time;
                float node_7188 = GlitchSize;
                float node_5276 = (-5.0);
                v.vertex.xyz += float3(lerp( node_3183, (saturate((node_3713 + ( (sin((GlitchArtifacts*(mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rgb.r+((Speed*10.0+0.0)*node_7738.g)))) - node_19) * (1.0 - node_3713) ) / (GlitchHardness - node_19)))*GlitchStrength), _HorizontalGlitch ),lerp( node_3183, (saturate((node_6003 + ( (sin((GlitchArtifacts*(mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rgb.g+((Speed*10.0+0.0)*node_5016.g)))) - node_8575) * (1.0 - node_6003) ) / (GlitchHardness - node_8575)))*GlitchStrength), _VerticleGlitch ),lerp( node_3183, (saturate((node_5276 + ( (sin((GlitchArtifacts*(mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rgb.b+((Speed*10.0+0.0)*node_249.g)))) - node_7188) * (1.0 - node_5276) ) / (GlitchHardness - node_7188)))*GlitchStrength), _DepthGlitch ));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
