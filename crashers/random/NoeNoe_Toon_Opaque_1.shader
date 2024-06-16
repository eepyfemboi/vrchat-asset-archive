// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:QQB1AHQAbwBMAGkAZwBoAHQA,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:1,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34020,y:32577,varname:node_3138,prsc:2|normal-4793-RGB,emission-8664-OUT,custl-1940-OUT,clip-7192-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32675,y:32222,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9151,x:32404,y:32286,ptovrint:False,ptlb:Main texture (RGB),ptin:_MainTex,varname:node_9151,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7815,x:32675,y:32080,varname:node_7815,prsc:2|A-9151-RGB,B-7241-RGB;n:type:ShaderForge.SFN_Desaturate,id:5160,x:33273,y:32044,varname:node_5160,prsc:2|COL-2316-OUT,DES-3971-OUT;n:type:ShaderForge.SFN_Vector1,id:3971,x:33273,y:32165,varname:node_3971,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Desaturate,id:9411,x:33476,y:32044,varname:node_9411,prsc:2|COL-5160-OUT,DES-8933-OUT;n:type:ShaderForge.SFN_OneMinus,id:8933,x:33476,y:31903,varname:node_8933,prsc:2|IN-8329-OUT;n:type:ShaderForge.SFN_Tex2d,id:6792,x:34730,y:32578,ptovrint:False,ptlb:Emission Map,ptin:_EmissionMap,varname:node_6792,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:1116,x:34730,y:32749,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_1116,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:2869,x:35035,y:32722,varname:node_2869,prsc:2|A-6792-RGB,B-1116-OUT;n:type:ShaderForge.SFN_Tex2d,id:4793,x:33352,y:32488,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_4793,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:2692,x:33352,y:32731,varname:node_2692,prsc:2|A-4067-OUT,B-1014-OUT,C-5812-OUT;n:type:ShaderForge.SFN_Slider,id:4067,x:32881,y:32681,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_1700,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:10;n:type:ShaderForge.SFN_LightColor,id:6153,x:31893,y:33607,varname:node_6153,prsc:2;n:type:ShaderForge.SFN_Code,id:4365,x:32060,y:33523,cmnt:ShadeSH9 node lifted from Cubeds shaders,varname:node_4365,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_3693,width:247,height:113,input:2,input_1_label:normal|A-9659-OUT;n:type:ShaderForge.SFN_Multiply,id:4808,x:32208,y:33654,varname:node_4808,prsc:2|A-6153-RGB,B-9405-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9405,x:31893,y:33728,varname:node_9405,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:5469,x:32372,y:33654,varname:node_5469,prsc:2|IN-4929-OUT;n:type:ShaderForge.SFN_Vector3,id:9659,x:31893,y:33523,varname:node_9659,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Add,id:4929,x:32372,y:33523,varname:node_4929,prsc:2|A-4365-OUT,B-4808-OUT;n:type:ShaderForge.SFN_Vector4Property,id:4622,x:27937,y:33258,ptovrint:False,ptlb:Static Toon Light,ptin:_StaticToonLight,varname:node_8394,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:3,v3:0,v4:0;n:type:ShaderForge.SFN_Tex2dAsset,id:1083,x:30239,y:33127,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_2423,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3281e7d3927047d42bdf0e9d5d4501ed,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Code,id:5505,x:30669,y:32005,varname:node_5505,prsc:2,code:IwBpAGYAIABkAGUAZgBpAG4AZQBkACgAVQBTAEkATgBHAF8AUwBUAEUAUgBFAE8AXwBNAEEAVABSAEkAQwBFAFMAKQANAAoAZgBsAG8AYQB0ADMAIABsAGUAZgB0AEUAeQBlACAAPQAgAHUAbgBpAHQAeQBfAFMAdABlAHIAZQBvAFcAbwByAGwAZABTAHAAYQBjAGUAQwBhAG0AZQByAGEAUABvAHMAWwAwAF0AOwANAAoAZgBsAG8AYQB0ADMAIAByAGkAZwBoAHQARQB5AGUAIAA9ACAAdQBuAGkAdAB5AF8AUwB0AGUAcgBlAG8AVwBvAHIAbABkAFMAcABhAGMAZQBDAGEAbQBlAHIAYQBQAG8AcwBbADEAXQA7AA0ACgANAAoAZgBsAG8AYQB0ADMAIABjAGUAbgB0AGUAcgBFAHkAZQAgAD0AIABsAGUAcgBwACgAbABlAGYAdABFAHkAZQAsACAAcgBpAGcAaAB0AEUAeQBlACwAIAAwAC4ANQApADsADQAKACMAZQBuAGQAaQBmAA0ACgAjAGkAZgAgACEAZABlAGYAaQBuAGUAZAAoAFUAUwBJAE4ARwBfAFMAVABFAFIARQBPAF8ATQBBAFQAUgBJAEMARQBTACkADQAKAGYAbABvAGEAdAAzACAAYwBlAG4AdABlAHIARQB5AGUAIAA9ACAAXwBXAG8AcgBsAGQAUwBwAGEAYwBlAEMAYQBtAGUAcgBhAFAAbwBzADsADQAKACMAZQBuAGQAaQBmAAoAcgBlAHQAdQByAG4AIABjAGUAbgB0AGUAcgBFAHkAZQA7AA==,output:2,fname:VRViewPosition,width:452,height:182;n:type:ShaderForge.SFN_Slider,id:8329,x:33116,y:31918,ptovrint:False,ptlb:Saturation,ptin:_Saturation,varname:node_8329,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.65,max:1;n:type:ShaderForge.SFN_ComponentMask,id:1153,x:27775,y:32816,varname:node_1153,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-4774-OUT;n:type:ShaderForge.SFN_Append,id:2113,x:28572,y:32957,varname:node_2113,prsc:2|A-3851-R,B-4622-Y,C-3851-G;n:type:ShaderForge.SFN_Multiply,id:975,x:28237,y:32957,varname:node_975,prsc:2|A-7017-OUT,B-4622-Z;n:type:ShaderForge.SFN_Append,id:5903,x:27937,y:32816,varname:node_5903,prsc:2|A-1153-R,B-1153-B;n:type:ShaderForge.SFN_ComponentMask,id:3851,x:28394,y:32957,varname:node_3851,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-975-OUT;n:type:ShaderForge.SFN_Normalize,id:7017,x:28086,y:32816,varname:node_7017,prsc:2|IN-5903-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:4527,x:28394,y:33248,ptovrint:False,ptlb:Billboard Static Light,ptin:_BillboardStaticLight,varname:node_4527,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_If,id:7394,x:28394,y:33344,varname:node_7394,prsc:2|A-4527-OUT,B-7833-OUT,GT-4622-XYZ,EQ-6534-OUT,LT-4622-XYZ;n:type:ShaderForge.SFN_Vector1,id:7833,x:28394,y:33295,varname:node_7833,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:1752,x:27775,y:33096,varname:node_1752,prsc:2|A-7869-OUT,B-4750-OUT;n:type:ShaderForge.SFN_Add,id:6534,x:28394,y:33095,varname:node_6534,prsc:2|A-8768-OUT,B-2113-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8628,x:27937,y:33096,varname:node_8628,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1752-OUT;n:type:ShaderForge.SFN_Append,id:8768,x:28237,y:33095,varname:node_8768,prsc:2|A-8628-R,B-4622-Y,C-8628-G;n:type:ShaderForge.SFN_Negate,id:2495,x:27775,y:32957,varname:node_2495,prsc:2|IN-7930-G;n:type:ShaderForge.SFN_ComponentMask,id:7930,x:27606,y:32957,varname:node_7930,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7017-OUT;n:type:ShaderForge.SFN_Append,id:7869,x:27937,y:32957,varname:node_7869,prsc:2|A-2495-OUT,B-7930-R;n:type:ShaderForge.SFN_Negate,id:4750,x:27606,y:33096,varname:node_4750,prsc:2|IN-4622-X;n:type:ShaderForge.SFN_FragmentPosition,id:8350,x:27775,y:32534,varname:node_8350,prsc:2;n:type:ShaderForge.SFN_Subtract,id:3406,x:27775,y:32664,varname:node_3406,prsc:2|A-8350-XYZ,B-8338-OUT;n:type:ShaderForge.SFN_Length,id:8063,x:27942,y:32544,varname:node_8063,prsc:2|IN-3406-OUT;n:type:ShaderForge.SFN_Divide,id:8704,x:27942,y:32664,varname:node_8704,prsc:2|A-3406-OUT,B-8063-OUT;n:type:ShaderForge.SFN_Negate,id:4774,x:28092,y:32664,varname:node_4774,prsc:2|IN-8704-OUT;n:type:ShaderForge.SFN_NormalVector,id:9090,x:29734,y:32997,prsc:2,pt:True;n:type:ShaderForge.SFN_FaceSign,id:679,x:29734,y:33135,varname:node_679,prsc:2,fstp:1;n:type:ShaderForge.SFN_Multiply,id:2136,x:29898,y:32997,varname:node_2136,prsc:2|A-9090-OUT,B-679-VFACE;n:type:ShaderForge.SFN_Dot,id:1617,x:30072,y:32997,varname:node_1617,prsc:2,dt:4|A-2136-OUT,B-6875-OUT;n:type:ShaderForge.SFN_Tex2d,id:9498,x:30394,y:32997,varname:node_9498,prsc:2,tex:3281e7d3927047d42bdf0e9d5d4501ed,ntxv:0,isnm:False|UVIN-8091-OUT,TEX-1083-TEX;n:type:ShaderForge.SFN_Append,id:8091,x:30239,y:32997,varname:node_8091,prsc:2|A-1617-OUT,B-1617-OUT;n:type:ShaderForge.SFN_Set,id:7363,x:31001,y:32200,varname:VRPosition,prsc:2|IN-5505-OUT;n:type:ShaderForge.SFN_Get,id:8338,x:27563,y:32682,varname:node_8338,prsc:2|IN-7363-OUT;n:type:ShaderForge.SFN_Set,id:1720,x:28394,y:33467,varname:StaticLightDirection,prsc:2|IN-7394-OUT;n:type:ShaderForge.SFN_Get,id:6875,x:29877,y:32954,varname:node_6875,prsc:2|IN-1720-OUT;n:type:ShaderForge.SFN_Set,id:7634,x:30669,y:33058,varname:StaticToonLighting,prsc:2|IN-9498-RGB;n:type:ShaderForge.SFN_Set,id:2562,x:32372,y:33776,varname:FlatLighting,prsc:2|IN-5469-OUT;n:type:ShaderForge.SFN_Get,id:1014,x:33017,y:32749,varname:node_1014,prsc:2|IN-2562-OUT;n:type:ShaderForge.SFN_Set,id:8934,x:32383,y:32439,varname:SurfaceAlpha,prsc:2|IN-9151-A;n:type:ShaderForge.SFN_Get,id:7192,x:33017,y:32950,varname:node_7192,prsc:2|IN-8934-OUT;n:type:ShaderForge.SFN_Set,id:1181,x:32654,y:32363,varname:MappedTexture,prsc:2|IN-7815-OUT;n:type:ShaderForge.SFN_Get,id:2316,x:33252,y:31983,varname:node_2316,prsc:2|IN-1181-OUT;n:type:ShaderForge.SFN_Set,id:5816,x:33455,y:32167,varname:Diffuse,prsc:2|IN-9411-OUT;n:type:ShaderForge.SFN_Get,id:5812,x:33017,y:32906,varname:node_5812,prsc:2|IN-5816-OUT;n:type:ShaderForge.SFN_Set,id:6721,x:35014,y:32668,varname:MappedEmissive,prsc:2|IN-2869-OUT;n:type:ShaderForge.SFN_Get,id:8664,x:33331,y:32655,varname:node_8664,prsc:2|IN-6721-OUT;n:type:ShaderForge.SFN_Get,id:3893,x:32609,y:32793,varname:node_3893,prsc:2|IN-7634-OUT;n:type:ShaderForge.SFN_Slider,id:3269,x:32631,y:32929,ptovrint:False,ptlb:Toon Contrast,ptin:_ToonContrast,varname:node_3269,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.25,max:1;n:type:ShaderForge.SFN_Lerp,id:9693,x:33038,y:32793,varname:node_9693,prsc:2|A-424-OUT,B-3893-OUT,T-3269-OUT;n:type:ShaderForge.SFN_Vector1,id:424,x:32788,y:32749,varname:node_424,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Blend,id:1940,x:33528,y:32788,varname:node_1940,prsc:2,blmd:12,clmp:True|SRC-2692-OUT,DST-9693-OUT;proporder:7241-9151-4622-4527-1083-3269-6792-1116-4067-8329-4793;pass:END;sub:END;*/

Shader "NoeNoe/NoeNoe Toon Shader/NoeNoe Toon Opaque" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Main texture (RGB)", 2D) = "white" {}
        _StaticToonLight ("Static Toon Light", Vector) = (0,3,0,0)
        [MaterialToggle] _BillboardStaticLight ("Billboard Static Light", Float ) = 0
        _Ramp ("Ramp", 2D) = "white" {}
        _ToonContrast ("Toon Contrast", Range(0, 1)) = 0.25
        _EmissionMap ("Emission Map", 2D) = "white" {}
        _Emission ("Emission", Range(0, 10)) = 0
        _Intensity ("Intensity", Range(0, 10)) = 0.8
        _Saturation ("Saturation", Range(0, 1)) = 0.65
        _NormalMap ("Normal Map", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
            uniform float _Emission;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _Intensity;
            float3 Function_node_3693( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform float4 _StaticToonLight;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            float3 VRViewPosition(){
            #if defined(USING_STEREO_MATRICES)
            float3 leftEye = unity_StereoWorldSpaceCameraPos[0];
            float3 rightEye = unity_StereoWorldSpaceCameraPos[1];
            
            float3 centerEye = lerp(leftEye, rightEye, 0.5);
            #endif
            #if !defined(USING_STEREO_MATRICES)
            float3 centerEye = _WorldSpaceCameraPos;
            #endif
            return centerEye;
            }
            
            uniform float _Saturation;
            uniform fixed _BillboardStaticLight;
            uniform float _ToonContrast;
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
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float SurfaceAlpha = _MainTex_var.a;
                clip(SurfaceAlpha - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i) / SHADOW_ATTENUATION(i);
////// Emissive:
                float4 _EmissionMap_var = tex2D(_EmissionMap,TRANSFORM_TEX(i.uv0, _EmissionMap));
                float3 MappedEmissive = (_EmissionMap_var.rgb*_Emission);
                float3 emissive = MappedEmissive;
                float3 FlatLighting = saturate((Function_node_3693( float3(0,1,0) )+(_LightColor0.rgb*attenuation)));
                float3 MappedTexture = (_MainTex_var.rgb*_Color.rgb);
                float3 Diffuse = lerp(lerp(MappedTexture,dot(MappedTexture,float3(0.3,0.59,0.11)),(-0.5)),dot(lerp(MappedTexture,dot(MappedTexture,float3(0.3,0.59,0.11)),(-0.5)),float3(0.3,0.59,0.11)),(1.0 - _Saturation));
                float node_424 = 0.5;
                float node_7394_if_leA = step(_BillboardStaticLight,1.0);
                float node_7394_if_leB = step(1.0,_BillboardStaticLight);
                float3 VRPosition = VRViewPosition();
                float3 node_3406 = (i.posWorld.rgb-VRPosition);
                float3 node_1153 = (-1*(node_3406/length(node_3406))).rgb;
                float2 node_7017 = normalize(float2(node_1153.r,node_1153.b));
                float2 node_7930 = node_7017.rg;
                float2 node_8628 = (float2((-1*node_7930.g),node_7930.r)*(-1*_StaticToonLight.r)).rg;
                float2 node_3851 = (node_7017*_StaticToonLight.b).rg;
                float3 StaticLightDirection = lerp((node_7394_if_leA*_StaticToonLight.rgb)+(node_7394_if_leB*_StaticToonLight.rgb),(float3(node_8628.r,_StaticToonLight.g,node_8628.g)+float3(node_3851.r,_StaticToonLight.g,node_3851.g)),node_7394_if_leA*node_7394_if_leB);
                float node_1617 = 0.5*dot((normalDirection*faceSign),StaticLightDirection)+0.5;
                float2 node_8091 = float2(node_1617,node_1617);
                float4 node_9498 = tex2D(_Ramp,TRANSFORM_TEX(node_8091, _Ramp));
                float3 StaticToonLighting = node_9498.rgb;
                float3 finalColor = emissive + saturate(((_Intensity*FlatLighting*Diffuse) > 0.5 ?  (1.0-(1.0-2.0*((_Intensity*FlatLighting*Diffuse)-0.5))*(1.0-lerp(float3(node_424,node_424,node_424),StaticToonLighting,_ToonContrast))) : (2.0*(_Intensity*FlatLighting*Diffuse)*lerp(float3(node_424,node_424,node_424),StaticToonLighting,_ToonContrast))) );
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
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
            uniform float _Emission;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _Intensity;
            float3 Function_node_3693( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform float4 _StaticToonLight;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            float3 VRViewPosition(){
            #if defined(USING_STEREO_MATRICES)
            float3 leftEye = unity_StereoWorldSpaceCameraPos[0];
            float3 rightEye = unity_StereoWorldSpaceCameraPos[1];
            
            float3 centerEye = lerp(leftEye, rightEye, 0.5);
            #endif
            #if !defined(USING_STEREO_MATRICES)
            float3 centerEye = _WorldSpaceCameraPos;
            #endif
            return centerEye;
            }
            
            uniform float _Saturation;
            uniform fixed _BillboardStaticLight;
            uniform float _ToonContrast;
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
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float SurfaceAlpha = _MainTex_var.a;
                clip(SurfaceAlpha - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i) / SHADOW_ATTENUATION(i);
                float3 FlatLighting = saturate((Function_node_3693( float3(0,1,0) )+(_LightColor0.rgb*attenuation)));
                float3 MappedTexture = (_MainTex_var.rgb*_Color.rgb);
                float3 Diffuse = lerp(lerp(MappedTexture,dot(MappedTexture,float3(0.3,0.59,0.11)),(-0.5)),dot(lerp(MappedTexture,dot(MappedTexture,float3(0.3,0.59,0.11)),(-0.5)),float3(0.3,0.59,0.11)),(1.0 - _Saturation));
                float node_424 = 0.5;
                float node_7394_if_leA = step(_BillboardStaticLight,1.0);
                float node_7394_if_leB = step(1.0,_BillboardStaticLight);
                float3 VRPosition = VRViewPosition();
                float3 node_3406 = (i.posWorld.rgb-VRPosition);
                float3 node_1153 = (-1*(node_3406/length(node_3406))).rgb;
                float2 node_7017 = normalize(float2(node_1153.r,node_1153.b));
                float2 node_7930 = node_7017.rg;
                float2 node_8628 = (float2((-1*node_7930.g),node_7930.r)*(-1*_StaticToonLight.r)).rg;
                float2 node_3851 = (node_7017*_StaticToonLight.b).rg;
                float3 StaticLightDirection = lerp((node_7394_if_leA*_StaticToonLight.rgb)+(node_7394_if_leB*_StaticToonLight.rgb),(float3(node_8628.r,_StaticToonLight.g,node_8628.g)+float3(node_3851.r,_StaticToonLight.g,node_3851.g)),node_7394_if_leA*node_7394_if_leB);
                float node_1617 = 0.5*dot((normalDirection*faceSign),StaticLightDirection)+0.5;
                float2 node_8091 = float2(node_1617,node_1617);
                float4 node_9498 = tex2D(_Ramp,TRANSFORM_TEX(node_8091, _Ramp));
                float3 StaticToonLighting = node_9498.rgb;
                float3 finalColor = saturate(((_Intensity*FlatLighting*Diffuse) > 0.5 ?  (1.0-(1.0-2.0*((_Intensity*FlatLighting*Diffuse)-0.5))*(1.0-lerp(float3(node_424,node_424,node_424),StaticToonLighting,_ToonContrast))) : (2.0*(_Intensity*FlatLighting*Diffuse)*lerp(float3(node_424,node_424,node_424),StaticToonLighting,_ToonContrast))) );
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
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "AutoLight.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float SurfaceAlpha = _MainTex_var.a;
                clip(SurfaceAlpha - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #include "AutoLight.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
            uniform float _Emission;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _EmissionMap_var = tex2D(_EmissionMap,TRANSFORM_TEX(i.uv0, _EmissionMap));
                float3 MappedEmissive = (_EmissionMap_var.rgb*_Emission);
                o.Emission = MappedEmissive;
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
