// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-4942-OUT,custl-7213-OUT,olwid-375-OUT,olcol-6423-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:1816,x:32966,y:32621,varname:node_1816,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5706,x:33215,y:32718,varname:node_5706,prsc:2|A-1816-OUT,B-6971-OUT;n:type:ShaderForge.SFN_Slider,id:6971,x:32898,y:32792,ptovrint:False,ptlb:Shading Strength,ptin:_ShadingStrength,varname:node_6971,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.3;n:type:ShaderForge.SFN_Dot,id:3929,x:33473,y:32923,varname:node_3929,prsc:2,dt:1|A-5374-OUT,B-751-OUT;n:type:ShaderForge.SFN_Posterize,id:303,x:33229,y:33075,varname:node_303,prsc:2|IN-3929-OUT,STPS-3192-OUT;n:type:ShaderForge.SFN_Slider,id:3192,x:32905,y:33254,ptovrint:False,ptlb:Lighting Bands,ptin:_LightingBands,varname:node_3192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_NormalVector,id:5374,x:33401,y:32731,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:751,x:33582,y:32741,varname:node_751,prsc:2;n:type:ShaderForge.SFN_LightColor,id:5276,x:32929,y:32967,varname:node_5276,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7213,x:33186,y:32916,varname:node_7213,prsc:2|A-5706-OUT,B-5276-RGB,C-303-OUT;n:type:ShaderForge.SFN_Tex2d,id:8920,x:31527,y:32448,ptovrint:False,ptlb:Albedo,ptin:_Albedo,varname:node_8920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5851,x:32109,y:32570,varname:node_5851,prsc:2|A-8920-RGB,B-6771-OUT;n:type:ShaderForge.SFN_Add,id:619,x:32109,y:32710,varname:node_619,prsc:2|A-8920-RGB,B-6771-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3503,x:32272,y:32658,ptovrint:False,ptlb:Tint/Saturate,ptin:_TintSaturate,varname:node_3503,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5851-OUT,B-619-OUT;n:type:ShaderForge.SFN_Multiply,id:6771,x:31944,y:32783,varname:node_6771,prsc:2|A-9961-RGB,B-7204-OUT;n:type:ShaderForge.SFN_Slider,id:7204,x:31597,y:32923,ptovrint:False,ptlb:Maintex Color Strength,ptin:_MaintexColorStrength,varname:node_7204,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:9961,x:31729,y:32654,ptovrint:False,ptlb:MainTex Color,ptin:_MainTexColor,varname:node_9961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:723,x:32324,y:32987,varname:node_723,prsc:2|A-7081-RGB,B-6177-RGB,T-291-R;n:type:ShaderForge.SFN_Slider,id:8382,x:30521,y:32508,ptovrint:False,ptlb:Outline Width,ptin:_OutlineWidth,varname:node_8382,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.01708778,max:0.02;n:type:ShaderForge.SFN_Color,id:7081,x:32061,y:32960,ptovrint:False,ptlb:Outline Color 1,ptin:_OutlineColor1,varname:node_7081,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6177,x:31930,y:32960,ptovrint:False,ptlb:Outline Color 2,ptin:_OutlineColor2,varname:_node_7081_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:291,x:31930,y:33127,ptovrint:False,ptlb:Outline Color Noise Profile,ptin:_OutlineColorNoiseProfile,varname:node_291,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4466-OUT;n:type:ShaderForge.SFN_TexCoord,id:8562,x:30469,y:33408,varname:node_8562,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:3158,x:29912,y:33630,ptovrint:False,ptlb:Outline U speed,ptin:_OutlineUspeed,varname:node_3158,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6390,x:29912,y:33737,ptovrint:False,ptlb:Outline V speed,ptin:_OutlineVspeed,varname:node_6390,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:7199,x:30250,y:33714,varname:node_7199,prsc:2|A-3158-OUT,B-6390-OUT;n:type:ShaderForge.SFN_Multiply,id:6503,x:30412,y:33593,varname:node_6503,prsc:2|A-7199-OUT,B-9763-T;n:type:ShaderForge.SFN_Time,id:9763,x:30143,y:33466,varname:node_9763,prsc:2;n:type:ShaderForge.SFN_Add,id:912,x:30681,y:33650,varname:node_912,prsc:2|A-8562-UVOUT,B-6503-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6423,x:32521,y:33093,ptovrint:False,ptlb:Color Lerp/Texture Outline,ptin:_ColorLerpTextureOutline,varname:node_6423,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9249-RGB,B-723-OUT;n:type:ShaderForge.SFN_Tex2d,id:9249,x:32344,y:33222,ptovrint:False,ptlb:Outline Tex,ptin:_OutlineTex,varname:node_9249,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4466-OUT;n:type:ShaderForge.SFN_Add,id:3315,x:32352,y:32390,varname:node_3315,prsc:2|A-5979-RGB,B-6055-OUT;n:type:ShaderForge.SFN_LightColor,id:5979,x:32101,y:32312,varname:node_5979,prsc:2;n:type:ShaderForge.SFN_Slider,id:6055,x:32032,y:32463,ptovrint:False,ptlb:Darkness Self Lighting,ptin:_DarknessSelfLighting,varname:node_6055,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:4942,x:32482,y:32704,varname:node_4942,prsc:2|A-3503-OUT,B-3315-OUT;n:type:ShaderForge.SFN_Tex2d,id:121,x:30628,y:33090,ptovrint:False,ptlb:Outline Noise Warping,ptin:_OutlineNoiseWarping,varname:node_121,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6451-OUT;n:type:ShaderForge.SFN_Time,id:7641,x:29895,y:33003,varname:node_7641,prsc:2;n:type:ShaderForge.SFN_Append,id:6176,x:30002,y:33251,varname:node_6176,prsc:2|A-9430-OUT,B-5886-OUT;n:type:ShaderForge.SFN_Multiply,id:6203,x:30164,y:33130,varname:node_6203,prsc:2|A-6176-OUT,B-7641-T;n:type:ShaderForge.SFN_TexCoord,id:5967,x:30221,y:32945,varname:node_5967,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:6451,x:30433,y:33187,varname:node_6451,prsc:2|A-5967-UVOUT,B-6203-OUT;n:type:ShaderForge.SFN_Slider,id:9430,x:29611,y:33263,ptovrint:False,ptlb:Outline Warp U speed,ptin:_OutlineWarpUspeed,varname:node_9430,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5886,x:29611,y:33378,ptovrint:False,ptlb:Outline warp V speed,ptin:_OutlinewarpVspeed,varname:node_5886,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:4466,x:30900,y:33327,varname:node_4466,prsc:2|A-912-OUT,B-121-R,T-3521-OUT;n:type:ShaderForge.SFN_Slider,id:3521,x:30606,y:33418,ptovrint:False,ptlb:Outline Warp Strength,ptin:_OutlineWarpStrength,varname:node_3521,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:375,x:31151,y:32671,ptovrint:False,ptlb:Noise Based Outline Width,ptin:_NoiseBasedOutlineWidth,varname:node_375,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8382-OUT,B-3510-OUT;n:type:ShaderForge.SFN_Tex2d,id:8755,x:30464,y:32620,ptovrint:False,ptlb:Outline Width Noise profile,ptin:_OutlineWidthNoiseprofile,varname:node_8755,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7787-OUT;n:type:ShaderForge.SFN_Append,id:4759,x:29795,y:32749,varname:node_4759,prsc:2|A-3431-OUT,B-3154-OUT;n:type:ShaderForge.SFN_Time,id:2774,x:29688,y:32501,varname:node_2774,prsc:2;n:type:ShaderForge.SFN_Add,id:7787,x:30226,y:32685,varname:node_7787,prsc:2|A-4461-UVOUT,B-2455-OUT;n:type:ShaderForge.SFN_Multiply,id:2455,x:29957,y:32628,varname:node_2455,prsc:2|A-4759-OUT,B-2774-T;n:type:ShaderForge.SFN_TexCoord,id:4461,x:30014,y:32443,varname:node_4461,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:3431,x:29387,y:32704,ptovrint:False,ptlb:Outline Noise Width U speed,ptin:_OutlineNoiseWidthUspeed,varname:node_3431,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:3154,x:29387,y:32838,ptovrint:False,ptlb:Outline Noise Width V Speed,ptin:_OutlineNoiseWidthVSpeed,varname:node_3154,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:3510,x:30958,y:32766,varname:node_3510,prsc:2|A-4205-OUT,B-8755-R;n:type:ShaderForge.SFN_Multiply,id:4205,x:30910,y:32601,varname:node_4205,prsc:2|A-8382-OUT,B-9977-OUT;n:type:ShaderForge.SFN_Vector1,id:9977,x:30712,y:32635,varname:node_9977,prsc:2,v1:5;proporder:8920-3503-9961-7204-6971-3192-6055-8382-375-8755-3431-3154-6423-7081-6177-291-9249-3158-6390-121-3521-9430-5886;pass:END;sub:END;*/

Shader "Bender's Shaders/Custom Animated Outline" {
    Properties {
		[Header(Main Properties)]
		_Albedo ("Albedo", 2D) = "white" {}
		[MaterialToggle] _TintSaturate ("Tint/Saturate", Float ) = 0
		_MainTexColor ("MainTex Color", Color) = (0.5,0.5,0.5,1)
		_MaintexColorStrength ("Maintex Color Strength", Range(0, 1)) = 0
		[Space(20)]
		[Header(Custom Lighting)]
        _ShadingStrength ("Shading Strength", Range(0, 0.3)) = 0
        _LightingBands ("Lighting Bands", Range(0, 5)) = 0
        _DarknessSelfLighting ("Darkness Self Lighting", Range(0, 1)) = 0
		[Space(20)]
		[Header(Base Outline Settings)]
        _OutlineWidth ("Outline Width", Range(0, 0.02)) = 0.01708778
        [MaterialToggle] _NoiseBasedOutlineWidth ("Noise Based Outline Width", Float ) = 0.01708778
        _OutlineWidthNoiseprofile ("Outline Width Noise profile", 2D) = "white" {}
        _OutlineNoiseWidthUspeed ("Outline Noise Width U speed", Range(-1, 1)) = 0
        _OutlineNoiseWidthVSpeed ("Outline Noise Width V Speed", Range(-1, 1)) = 0
		[Space(20)]
		[Header(Color Lerp Settings)]
        [MaterialToggle] _ColorLerpTextureOutline ("Color Lerp/Texture Outline", Float ) = 0
        _OutlineColor1 ("Outline Color 1", Color) = (1,1,1,1)
        _OutlineColor2 ("Outline Color 2", Color) = (1,1,1,1)
        _OutlineColorNoiseProfile ("Outline Color Noise Profile", 2D) = "white" {}
		[Space(20)]
		[Header(Outline Texture Settings)]
        _OutlineTex ("Outline Tex", 2D) = "white" {}
        _OutlineUspeed ("Outline U speed", Range(-1, 1)) = 0
        _OutlineVspeed ("Outline V speed", Range(-1, 1)) = 0
		[Space(20)]
		[Header(Outline Noise UV Warp Settings)]
        _OutlineNoiseWarping ("Outline Noise Warping", 2D) = "white" {}
        _OutlineWarpStrength ("Outline Warp Strength", Range(0, 1)) = 0
        _OutlineWarpUspeed ("Outline Warp U speed", Range(-1, 1)) = 0
        _OutlinewarpVspeed ("Outline warp V speed", Range(-1, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _OutlineWidth;
            uniform float4 _OutlineColor1;
            uniform float4 _OutlineColor2;
            uniform sampler2D _OutlineColorNoiseProfile; uniform float4 _OutlineColorNoiseProfile_ST;
            uniform float _OutlineUspeed;
            uniform float _OutlineVspeed;
            uniform fixed _ColorLerpTextureOutline;
            uniform sampler2D _OutlineTex; uniform float4 _OutlineTex_ST;
            uniform sampler2D _OutlineNoiseWarping; uniform float4 _OutlineNoiseWarping_ST;
            uniform float _OutlineWarpUspeed;
            uniform float _OutlinewarpVspeed;
            uniform float _OutlineWarpStrength;
            uniform fixed _NoiseBasedOutlineWidth;
            uniform sampler2D _OutlineWidthNoiseprofile; uniform float4 _OutlineWidthNoiseprofile_ST;
            uniform float _OutlineNoiseWidthUspeed;
            uniform float _OutlineNoiseWidthVSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_2774 = _Time;
                float2 node_7787 = (o.uv0+(float2(_OutlineNoiseWidthUspeed,_OutlineNoiseWidthVSpeed)*node_2774.g));
                float4 _OutlineWidthNoiseprofile_var = tex2Dlod(_OutlineWidthNoiseprofile,float4(TRANSFORM_TEX(node_7787, _OutlineWidthNoiseprofile),0.0,0));
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*lerp( _OutlineWidth, ((_OutlineWidth*5.0)*_OutlineWidthNoiseprofile_var.r), _NoiseBasedOutlineWidth ),1) );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_9763 = _Time;
                float4 node_7641 = _Time;
                float2 node_6451 = (i.uv0+(float2(_OutlineWarpUspeed,_OutlinewarpVspeed)*node_7641.g));
                float4 _OutlineNoiseWarping_var = tex2D(_OutlineNoiseWarping,TRANSFORM_TEX(node_6451, _OutlineNoiseWarping));
                float2 node_4466 = lerp((i.uv0+(float2(_OutlineUspeed,_OutlineVspeed)*node_9763.g)),float2(_OutlineNoiseWarping_var.r,_OutlineNoiseWarping_var.r),_OutlineWarpStrength);
                float4 _OutlineTex_var = tex2D(_OutlineTex,TRANSFORM_TEX(node_4466, _OutlineTex));
                float4 _OutlineColorNoiseProfile_var = tex2D(_OutlineColorNoiseProfile,TRANSFORM_TEX(node_4466, _OutlineColorNoiseProfile));
                return fixed4(lerp( _OutlineTex_var.rgb, lerp(_OutlineColor1.rgb,_OutlineColor2.rgb,_OutlineColorNoiseProfile_var.r), _ColorLerpTextureOutline ),0);
            }
            ENDCG
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _ShadingStrength;
            uniform float _LightingBands;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform fixed _TintSaturate;
            uniform float _MaintexColorStrength;
            uniform float4 _MainTexColor;
            uniform float _DarknessSelfLighting;
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
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(i.uv0, _Albedo));
                float3 node_6771 = (_MainTexColor.rgb*_MaintexColorStrength);
                float3 emissive = (lerp( (_Albedo_var.rgb*node_6771), (_Albedo_var.rgb+node_6771), _TintSaturate )*(_LightColor0.rgb+_DarknessSelfLighting));
                float3 finalColor = emissive + ((attenuation*_ShadingStrength)*_LightColor0.rgb*floor(max(0,dot(i.normalDir,lightDirection)) * _LightingBands) / (_LightingBands - 1));
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _ShadingStrength;
            uniform float _LightingBands;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform fixed _TintSaturate;
            uniform float _MaintexColorStrength;
            uniform float4 _MainTexColor;
            uniform float _DarknessSelfLighting;
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
                float3 finalColor = ((attenuation*_ShadingStrength)*_LightColor0.rgb*floor(max(0,dot(i.normalDir,lightDirection)) * _LightingBands) / (_LightingBands - 1));
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
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
