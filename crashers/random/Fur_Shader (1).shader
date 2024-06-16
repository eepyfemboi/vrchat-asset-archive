// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-7733-OUT,custl-2833-OUT,disp-8285-OUT,tess-5172-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31890,y:32317,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5671,x:31285,y:32955,ptovrint:False,ptlb:Fur Heightmap,ptin:_FurHeightmap,varname:node_5671,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6605-UVOUT;n:type:ShaderForge.SFN_Slider,id:5172,x:32367,y:33211,ptovrint:False,ptlb:Fur Tesselation,ptin:_FurTesselation,varname:node_5172,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.1,max:50;n:type:ShaderForge.SFN_NormalVector,id:9432,x:32217,y:33046,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:8285,x:32447,y:32892,varname:node_8285,prsc:2|A-4377-OUT,B-9432-OUT;n:type:ShaderForge.SFN_TexCoord,id:6605,x:30773,y:32812,varname:node_6605,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:4377,x:32217,y:32892,varname:node_4377,prsc:2|A-2379-OUT,B-2908-OUT;n:type:ShaderForge.SFN_Slider,id:2908,x:31919,y:33060,ptovrint:False,ptlb:Fur Length,ptin:_FurLength,varname:node_2908,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9293,x:31324,y:33132,ptovrint:False,ptlb:Sway,ptin:_Sway,varname:node_9293,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:0.1583158,max:10;n:type:ShaderForge.SFN_FragmentPosition,id:4365,x:30898,y:32420,varname:node_4365,prsc:2;n:type:ShaderForge.SFN_Subtract,id:7988,x:31112,y:32464,varname:node_7988,prsc:2|A-4365-XYZ,B-4762-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:4762,x:30898,y:32582,varname:node_4762,prsc:2;n:type:ShaderForge.SFN_Transform,id:1668,x:31093,y:32652,varname:node_1668,prsc:2,tffrom:0,tfto:1|IN-7988-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2671,x:31030,y:32756,varname:node_2671,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1668-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:6408,x:30530,y:33013,varname:node_6408,prsc:2;n:type:ShaderForge.SFN_Transform,id:3300,x:30696,y:33013,varname:node_3300,prsc:2,tffrom:0,tfto:1|IN-6408-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:1335,x:30901,y:32951,varname:node_1335,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3300-XYZ;n:type:ShaderForge.SFN_Multiply,id:7544,x:31844,y:33310,varname:node_7544,prsc:2|A-3695-OUT,B-1482-OUT;n:type:ShaderForge.SFN_Subtract,id:6420,x:30850,y:33260,varname:node_6420,prsc:2|A-3073-UVOUT,B-1739-OUT;n:type:ShaderForge.SFN_Divide,id:5010,x:31070,y:33260,varname:node_5010,prsc:2|A-6420-OUT,B-2688-OUT;n:type:ShaderForge.SFN_Vector1,id:1739,x:30822,y:33454,varname:node_1739,prsc:2,v1:0.74;n:type:ShaderForge.SFN_Vector1,id:2688,x:30979,y:33406,varname:node_2688,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Abs,id:8564,x:31259,y:33274,varname:node_8564,prsc:2|IN-5010-OUT;n:type:ShaderForge.SFN_Length,id:7701,x:31384,y:33308,varname:node_7701,prsc:2|IN-8564-OUT;n:type:ShaderForge.SFN_Multiply,id:1482,x:31613,y:33340,varname:node_1482,prsc:2|A-7701-OUT,B-1068-OUT;n:type:ShaderForge.SFN_Vector1,id:1068,x:31420,y:33458,varname:node_1068,prsc:2,v1:1.2;n:type:ShaderForge.SFN_Rotator,id:8631,x:31581,y:32984,varname:node_8631,prsc:2|UVIN-9577-OUT,ANG-6082-OUT;n:type:ShaderForge.SFN_Multiply,id:8121,x:32096,y:33421,varname:node_8121,prsc:2|A-7544-OUT,B-1353-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6082,x:30286,y:33189,ptovrint:False,ptlb:Animated Sway,ptin:_AnimatedSway,varname:node_6082,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7544-OUT,B-8121-OUT;n:type:ShaderForge.SFN_Time,id:4448,x:31633,y:33527,varname:node_4448,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:1429,x:32064,y:33543,varname:node_1429,prsc:2|IN-4662-OUT;n:type:ShaderForge.SFN_Frac,id:1237,x:31913,y:33698,varname:node_1237,prsc:2|IN-6900-OUT;n:type:ShaderForge.SFN_RemapRange,id:9885,x:32092,y:33680,varname:node_9885,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1237-OUT;n:type:ShaderForge.SFN_Abs,id:2164,x:32200,y:33746,varname:node_2164,prsc:2|IN-9885-OUT;n:type:ShaderForge.SFN_TexCoord,id:3073,x:30383,y:33371,varname:node_3073,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:3731,x:31703,y:32405,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_3731,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3838,x:32276,y:32645,varname:node_3838,prsc:2|A-5965-OUT,B-8194-OUT;n:type:ShaderForge.SFN_Multiply,id:8194,x:32137,y:32384,varname:node_8194,prsc:2|A-7241-RGB,B-9927-OUT;n:type:ShaderForge.SFN_Slider,id:9927,x:31810,y:32524,ptovrint:False,ptlb:Color Strength,ptin:_ColorStrength,varname:node_9927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:9577,x:31495,y:32864,varname:node_9577,prsc:2|A-5671-R,B-5671-G;n:type:ShaderForge.SFN_Append,id:2379,x:31787,y:32952,varname:node_2379,prsc:2|A-8631-UVOUT,B-5671-B;n:type:ShaderForge.SFN_FragmentPosition,id:8176,x:30254,y:33558,varname:node_8176,prsc:2;n:type:ShaderForge.SFN_Transform,id:6071,x:30467,y:33574,varname:node_6071,prsc:2,tffrom:0,tfto:1|IN-8176-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:8876,x:30661,y:33550,varname:node_8876,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6071-XYZ;n:type:ShaderForge.SFN_SwitchProperty,id:3695,x:32093,y:33141,ptovrint:False,ptlb:Custom sway animation values,ptin:_Customswayanimationvalues,varname:node_3695,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5361-OUT,B-2918-OUT;n:type:ShaderForge.SFN_RemapRange,id:5361,x:31647,y:33109,varname:node_5361,prsc:2,frmn:-10,frmx:10,tomn:-0.5,tomx:0.5|IN-9293-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2918,x:32786,y:33420,varname:node_2918,prsc:2|IN-9293-OUT,IMIN-8236-OUT,IMAX-4599-OUT,OMIN-8216-OUT,OMAX-5953-OUT;n:type:ShaderForge.SFN_Vector1,id:8236,x:32453,y:33505,varname:node_8236,prsc:2,v1:-10;n:type:ShaderForge.SFN_Vector1,id:4599,x:32517,y:33569,varname:node_4599,prsc:2,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:8216,x:32699,y:33658,ptovrint:False,ptlb:Custom Sway Min,ptin:_CustomSwayMin,varname:node_8216,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5953,x:32763,y:33722,ptovrint:False,ptlb:Custom Sway Max,ptin:_CustomSwayMax,varname:_node_8216_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6900,x:31634,y:33718,varname:node_6900,prsc:2|A-4448-TSL,B-8738-OUT;n:type:ShaderForge.SFN_Slider,id:8738,x:31289,y:33725,ptovrint:False,ptlb:Sway Speed,ptin:_SwaySpeed,varname:node_8738,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_SwitchProperty,id:4662,x:31952,y:33868,ptovrint:False,ptlb:Sharp/Smooth Sway,ptin:_SharpSmoothSway,varname:node_4662,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2164-OUT,B-6795-OUT;n:type:ShaderForge.SFN_Sin,id:6795,x:31634,y:33856,varname:node_6795,prsc:2|IN-6900-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1353,x:31862,y:33543,ptovrint:False,ptlb:Cylce/Linear Rotation,ptin:_CylceLinearRotation,varname:node_1353,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6900-OUT,B-1429-OUT;n:type:ShaderForge.SFN_Multiply,id:3466,x:35732,y:32288,varname:node_3466,prsc:2|A-6062-OUT,B-2698-RGB,C-5398-OUT;n:type:ShaderForge.SFN_Dot,id:4188,x:36281,y:32209,varname:node_4188,prsc:2,dt:1|A-3303-OUT,B-6515-OUT;n:type:ShaderForge.SFN_LightVector,id:3303,x:36221,y:31991,varname:node_3303,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6515,x:36005,y:31964,prsc:2,pt:True;n:type:ShaderForge.SFN_Posterize,id:5398,x:36076,y:32418,varname:node_5398,prsc:2|IN-4188-OUT,STPS-4656-OUT;n:type:ShaderForge.SFN_Slider,id:4656,x:35760,y:32478,ptovrint:False,ptlb:Bands,ptin:_Bands,varname:node_8385,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_LightAttenuation,id:3653,x:35566,y:31882,varname:node_3653,prsc:2;n:type:ShaderForge.SFN_LightColor,id:2698,x:35566,y:32326,varname:node_2698,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6062,x:35819,y:32042,varname:node_6062,prsc:2|A-3653-OUT,B-1093-OUT;n:type:ShaderForge.SFN_Slider,id:1093,x:35458,y:32052,ptovrint:False,ptlb:Shading Strength,ptin:_ShadingStrength,varname:node_6407,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.05;n:type:ShaderForge.SFN_LightAttenuation,id:3083,x:32940,y:32602,varname:node_3083,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1415,x:33192,y:32696,varname:node_1415,prsc:2|A-3083-OUT,B-6037-OUT;n:type:ShaderForge.SFN_Slider,id:6037,x:32900,y:32800,ptovrint:False,ptlb:Shading Strength,ptin:_ShadingStrength,varname:node_6037,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.05;n:type:ShaderForge.SFN_LightVector,id:9637,x:33415,y:32548,varname:node_9637,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1651,x:33427,y:32686,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:2637,x:33604,y:32600,varname:node_2637,prsc:2,dt:1|A-9637-OUT,B-1651-OUT;n:type:ShaderForge.SFN_Posterize,id:4777,x:33596,y:32977,varname:node_4777,prsc:2|IN-2637-OUT,STPS-2180-OUT;n:type:ShaderForge.SFN_Multiply,id:2833,x:33275,y:32853,varname:node_2833,prsc:2|A-1415-OUT,B-8921-RGB,C-4777-OUT;n:type:ShaderForge.SFN_LightColor,id:8921,x:33006,y:32912,varname:node_8921,prsc:2;n:type:ShaderForge.SFN_Slider,id:2180,x:33236,y:33021,ptovrint:False,ptlb:Bands,ptin:_Bands,varname:node_2180,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:5965,x:32018,y:32650,varname:node_5965,prsc:2|A-3731-RGB,B-2209-OUT;n:type:ShaderForge.SFN_Color,id:825,x:31362,y:32523,ptovrint:False,ptlb:Light Tint,ptin:_LightTint,varname:node_825,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_LightColor,id:3707,x:31351,y:32667,varname:node_3707,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8924,x:31555,y:32625,varname:node_8924,prsc:2|A-3707-RGB,B-825-RGB;n:type:ShaderForge.SFN_Add,id:2209,x:31810,y:32625,varname:node_2209,prsc:2|A-8924-OUT,B-648-OUT;n:type:ShaderForge.SFN_Slider,id:648,x:31420,y:32550,ptovrint:False,ptlb:Darkness Self Lighting,ptin:_DarknessSelfLighting,varname:node_648,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:6955,x:32374,y:32538,varname:node_6955,prsc:2|A-5965-OUT,B-8194-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7733,x:32519,y:32615,ptovrint:False,ptlb:Tint/Saturate,ptin:_TintSaturate,varname:node_7733,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3838-OUT,B-6955-OUT;proporder:3731-7241-7733-9927-6037-2180-825-648-5671-2908-5172-9293-6082-4662-8738-3695-8216-5953-1353;pass:END;sub:END;*/

Shader "Bender's Shaders/Mesh FX/Fur" {
    Properties {
		[Space(20)]
		[Header(Main Settings)]
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        [MaterialToggle] _TintSaturate ("Tint/Saturate", Float ) = 0
        _ColorStrength ("Color Strength", Range(0, 1)) = 0
		[Space(20)]
		[Header(Custom Lighting)]
        _ShadingStrength ("Shading Strength", Range(0, 0.05)) = 0
        _Bands ("Bands", Range(0, 5)) = 0
        _LightTint ("Light Tint", Color) = (1,1,1,1)
        _DarknessSelfLighting ("Darkness Self Lighting", Range(0, 1)) = 0
		[Space(20)]
		[Header(Heightmapping and Tesselation)]
        _FurHeightmap ("Fur Heightmap", 2D) = "white" {}
        _FurLength ("Fur Length", float) = 0
        _FurTesselation ("Fur Tesselation", float) = 0.1
		[Space(20)]
		[Header(Fur Swaying)]
        _Sway ("Sway", Float) = 0.1583158
        [MaterialToggle] _AnimatedSway ("Animated Sway", Float ) = 0.01104537
        [MaterialToggle] _SharpSmoothSway ("Sharp/Smooth Sway", Float ) = 1
        _SwaySpeed ("Sway Speed", Float) = 0
        [MaterialToggle] _Customswayanimationvalues ("Custom sway animation values", Float ) = 0.007915798
        _CustomSwayMin ("Custom Sway Min", Float ) = 0
        _CustomSwayMax ("Custom Sway Max", Float ) = 0
        [MaterialToggle] _CylceLinearRotation ("Cylce/Linear Rotation", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
            "DisableBatching"="True"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _FurHeightmap; uniform float4 _FurHeightmap_ST;
            uniform float _FurTesselation;
            uniform float _FurLength;
            uniform float _Sway;
            uniform fixed _AnimatedSway;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _ColorStrength;
            uniform fixed _Customswayanimationvalues;
            uniform float _CustomSwayMin;
            uniform float _CustomSwayMax;
            uniform float _SwaySpeed;
            uniform fixed _SharpSmoothSway;
            uniform fixed _CylceLinearRotation;
            uniform float _ShadingStrength;
            uniform float _Bands;
            uniform float4 _LightTint;
            uniform float _DarknessSelfLighting;
            uniform fixed _TintSaturate;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_8236 = (-10.0);
                    float node_7544 = (lerp( (_Sway*0.05+0.000000007451), (_CustomSwayMin + ( (_Sway - node_8236) * (_CustomSwayMax - _CustomSwayMin) ) / (10.0 - node_8236)), _Customswayanimationvalues )*(length(abs(((v.texcoord0-0.74)/0.9)))*1.2));
                    float4 node_4448 = _Time;
                    float node_6900 = (node_4448.r*_SwaySpeed);
                    float node_8631_ang = lerp( node_7544, (node_7544*lerp( node_6900, saturate(lerp( abs((frac(node_6900)*2.0+-1.0)), sin(node_6900), _SharpSmoothSway )), _CylceLinearRotation )), _AnimatedSway );
                    float node_8631_spd = 1.0;
                    float node_8631_cos = cos(node_8631_spd*node_8631_ang);
                    float node_8631_sin = sin(node_8631_spd*node_8631_ang);
                    float2 node_8631_piv = float2(0.5,0.5);
                    float4 _FurHeightmap_var = tex2Dlod(_FurHeightmap,float4(TRANSFORM_TEX(v.texcoord0, _FurHeightmap),0.0,0));
                    float2 node_8631 = (mul(float2(_FurHeightmap_var.r,_FurHeightmap_var.g)-node_8631_piv,float2x2( node_8631_cos, -node_8631_sin, node_8631_sin, node_8631_cos))+node_8631_piv);
                    v.vertex.xyz += ((float3(node_8631,_FurHeightmap_var.b)*_FurLength)*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _FurTesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_5965 = (_MainTex_var.rgb*((_LightColor0.rgb*_LightTint.rgb)+_DarknessSelfLighting));
                float3 node_8194 = (_Color.rgb*_ColorStrength);
                float3 emissive = lerp( (node_5965*node_8194), (node_5965+node_8194), _TintSaturate );
                float3 finalColor = emissive + ((attenuation*_ShadingStrength)*_LightColor0.rgb*floor(max(0,dot(lightDirection,normalDirection)) * _Bands) / (_Bands - 1));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _Color;
            uniform sampler2D _FurHeightmap; uniform float4 _FurHeightmap_ST;
            uniform float _FurTesselation;
            uniform float _FurLength;
            uniform float _Sway;
            uniform fixed _AnimatedSway;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _ColorStrength;
            uniform fixed _Customswayanimationvalues;
            uniform float _CustomSwayMin;
            uniform float _CustomSwayMax;
            uniform float _SwaySpeed;
            uniform fixed _SharpSmoothSway;
            uniform fixed _CylceLinearRotation;
            uniform float _ShadingStrength;
            uniform float _Bands;
            uniform float4 _LightTint;
            uniform float _DarknessSelfLighting;
            uniform fixed _TintSaturate;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_8236 = (-10.0);
                    float node_7544 = (lerp( (_Sway*0.05+0.000000007451), (_CustomSwayMin + ( (_Sway - node_8236) * (_CustomSwayMax - _CustomSwayMin) ) / (10.0 - node_8236)), _Customswayanimationvalues )*(length(abs(((v.texcoord0-0.74)/0.9)))*1.2));
                    float4 node_4448 = _Time;
                    float node_6900 = (node_4448.r*_SwaySpeed);
                    float node_8631_ang = lerp( node_7544, (node_7544*lerp( node_6900, saturate(lerp( abs((frac(node_6900)*2.0+-1.0)), sin(node_6900), _SharpSmoothSway )), _CylceLinearRotation )), _AnimatedSway );
                    float node_8631_spd = 1.0;
                    float node_8631_cos = cos(node_8631_spd*node_8631_ang);
                    float node_8631_sin = sin(node_8631_spd*node_8631_ang);
                    float2 node_8631_piv = float2(0.5,0.5);
                    float4 _FurHeightmap_var = tex2Dlod(_FurHeightmap,float4(TRANSFORM_TEX(v.texcoord0, _FurHeightmap),0.0,0));
                    float2 node_8631 = (mul(float2(_FurHeightmap_var.r,_FurHeightmap_var.g)-node_8631_piv,float2x2( node_8631_cos, -node_8631_sin, node_8631_sin, node_8631_cos))+node_8631_piv);
                    v.vertex.xyz += ((float3(node_8631,_FurHeightmap_var.b)*_FurLength)*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _FurTesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = ((attenuation*_ShadingStrength)*_LightColor0.rgb*floor(max(0,dot(lightDirection,normalDirection)) * _Bands) / (_Bands - 1));
                return fixed4(finalColor * 1,0);
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _FurHeightmap; uniform float4 _FurHeightmap_ST;
            uniform float _FurTesselation;
            uniform float _FurLength;
            uniform float _Sway;
            uniform fixed _AnimatedSway;
            uniform fixed _Customswayanimationvalues;
            uniform float _CustomSwayMin;
            uniform float _CustomSwayMax;
            uniform float _SwaySpeed;
            uniform fixed _SharpSmoothSway;
            uniform fixed _CylceLinearRotation;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_8236 = (-10.0);
                    float node_7544 = (lerp( (_Sway*0.05+0.000000007451), (_CustomSwayMin + ( (_Sway - node_8236) * (_CustomSwayMax - _CustomSwayMin) ) / (10.0 - node_8236)), _Customswayanimationvalues )*(length(abs(((v.texcoord0-0.74)/0.9)))*1.2));
                    float4 node_4448 = _Time;
                    float node_6900 = (node_4448.r*_SwaySpeed);
                    float node_8631_ang = lerp( node_7544, (node_7544*lerp( node_6900, saturate(lerp( abs((frac(node_6900)*2.0+-1.0)), sin(node_6900), _SharpSmoothSway )), _CylceLinearRotation )), _AnimatedSway );
                    float node_8631_spd = 1.0;
                    float node_8631_cos = cos(node_8631_spd*node_8631_ang);
                    float node_8631_sin = sin(node_8631_spd*node_8631_ang);
                    float2 node_8631_piv = float2(0.5,0.5);
                    float4 _FurHeightmap_var = tex2Dlod(_FurHeightmap,float4(TRANSFORM_TEX(v.texcoord0, _FurHeightmap),0.0,0));
                    float2 node_8631 = (mul(float2(_FurHeightmap_var.r,_FurHeightmap_var.g)-node_8631_piv,float2x2( node_8631_cos, -node_8631_sin, node_8631_sin, node_8631_cos))+node_8631_piv);
                    v.vertex.xyz += ((float3(node_8631,_FurHeightmap_var.b)*_FurLength)*v.normal);
                }
                float Tessellation(TessVertex v){
                    return _FurTesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
