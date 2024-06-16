// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34020,y:32577,varname:node_3138,prsc:2|emission-5317-OUT,custl-2300-OUT,alpha-2475-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32844,y:32480,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9151,x:32833,y:32648,ptovrint:False,ptlb:Main texture (RGB),ptin:_MainTex,varname:node_9151,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a8b7c55831a0e2e4f8331e24e3864a8e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:1700,x:33700,y:33232,ptovrint:False,ptlb:Light Multiplier,ptin:_LightMultiplier,varname:node_1700,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:7815,x:33096,y:32599,varname:node_7815,prsc:2|A-9151-RGB,B-7241-RGB;n:type:ShaderForge.SFN_NormalVector,id:8679,x:31864,y:33235,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2544,x:32057,y:33395,varname:node_2544,prsc:2;n:type:ShaderForge.SFN_Dot,id:8445,x:32057,y:33235,varname:node_8445,prsc:2,dt:0|A-8679-OUT,B-2544-OUT;n:type:ShaderForge.SFN_Append,id:5668,x:32372,y:33235,varname:node_5668,prsc:2|A-6756-OUT,B-9311-OUT;n:type:ShaderForge.SFN_Vector1,id:9311,x:32216,y:33384,varname:node_9311,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Tex2d,id:6405,x:32535,y:33235,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_6405,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dda255c6e7ca25c4da940fccb27f832d,ntxv:0,isnm:False|UVIN-5668-OUT;n:type:ShaderForge.SFN_Desaturate,id:6833,x:32701,y:33235,varname:node_6833,prsc:2|COL-6405-RGB;n:type:ShaderForge.SFN_Add,id:6343,x:32866,y:33235,varname:node_6343,prsc:2|A-6833-OUT,B-6991-OUT;n:type:ShaderForge.SFN_Vector1,id:6991,x:32701,y:33354,varname:node_6991,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Posterize,id:2233,x:33209,y:33235,varname:node_2233,prsc:2|IN-9048-OUT,STPS-4857-OUT;n:type:ShaderForge.SFN_Vector1,id:4857,x:33032,y:33366,varname:node_4857,prsc:2,v1:3;n:type:ShaderForge.SFN_Clamp01,id:9048,x:33032,y:33235,varname:node_9048,prsc:2|IN-6343-OUT;n:type:ShaderForge.SFN_Clamp01,id:6756,x:32216,y:33235,varname:node_6756,prsc:2|IN-8445-OUT;n:type:ShaderForge.SFN_LightColor,id:951,x:32686,y:32888,varname:node_951,prsc:2;n:type:ShaderForge.SFN_Code,id:6511,x:32358,y:32839,varname:node_6511,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsACgA=,output:2,fname:Function_node_3693,width:292,height:112,input:2,input_1_label:normal|A-8487-OUT;n:type:ShaderForge.SFN_Multiply,id:9979,x:32860,y:32888,varname:node_9979,prsc:2|A-951-RGB,B-2967-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:2967,x:32686,y:33036,varname:node_2967,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:6092,x:33201,y:32838,varname:node_6092,prsc:2|IN-7052-OUT;n:type:ShaderForge.SFN_Vector3,id:8487,x:32181,y:32839,varname:node_8487,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Add,id:7052,x:33029,y:32838,varname:node_7052,prsc:2|A-6511-OUT,B-9979-OUT;n:type:ShaderForge.SFN_Multiply,id:2300,x:33769,y:32834,varname:node_2300,prsc:2|A-7815-OUT,B-1700-OUT,C-6169-OUT,D-8518-OUT;n:type:ShaderForge.SFN_Clamp01,id:6169,x:33536,y:32838,varname:node_6169,prsc:2|IN-5562-OUT;n:type:ShaderForge.SFN_Multiply,id:5562,x:33374,y:32838,varname:node_5562,prsc:2|A-6092-OUT,B-2233-OUT;n:type:ShaderForge.SFN_Slider,id:9896,x:33651,y:32373,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_9896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_OneMinus,id:4086,x:33310,y:32435,varname:node_4086,prsc:2|IN-7241-A;n:type:ShaderForge.SFN_Desaturate,id:8518,x:33549,y:32466,varname:node_8518,prsc:2|COL-7241-RGB,DES-4086-OUT;n:type:ShaderForge.SFN_Multiply,id:2475,x:33746,y:32588,varname:node_2475,prsc:2|A-9151-A,B-9896-OUT;n:type:ShaderForge.SFN_Tex2d,id:8163,x:32944,y:32186,ptovrint:False,ptlb:Emission texture,ptin:_Emissiontexture,varname:node_8163,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:9682,x:33140,y:32049,ptovrint:False,ptlb:Emission Color,ptin:_EmissionColor,varname:node_9682,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7673,x:33391,y:32221,varname:node_7673,prsc:2|A-9682-RGB,B-8163-RGB,C-9678-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5317,x:33651,y:32140,ptovrint:False,ptlb:Enable Emission,ptin:_EnableEmission,varname:node_5317,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-3018-OUT,B-7673-OUT;n:type:ShaderForge.SFN_Vector1,id:3018,x:33437,y:32053,varname:node_3018,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9678,x:33169,y:32325,ptovrint:False,ptlb:Emission Intensity,ptin:_EmissionIntensity,varname:node_9678,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:7241-9151-6405-1700-9896-5317-9682-8163-9678;pass:END;sub:END;*/

Shader "NoeNoe/2D Tiled Transparent Lite" {
    Properties {
		[Enum(Off,0,Front,1,Back,2)] _CullMode ("Culling", Float) = 2 //0 = off, 2=back
		[Toggle] _ZWriteMode("Write to Z-buffer", Int) = 1
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Main texture (RGB)", 2D) = "white" {}
        _Ramp ("Ramp", 2D) = "white" {}
        _LightMultiplier ("Light Multiplier", Range(0, 10)) = 1
        _Opacity ("Opacity", Range(0, 1)) = 1
        [MaterialToggle] _EnableEmission ("Enable Emission", Float ) = 0
        _EmissionColor ("Emission Color", Color) = (1,1,1,1)
        _Emissiontexture ("Emission texture", 2D) = "white" {}
        _EmissionIntensity ("Emission Intensity", Float ) = 1
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
            Cull [_CullMode]
            ZWrite [_ZWriteMode]
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _LightMultiplier;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            float3 Function_node_3693( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform float _Opacity;
            uniform sampler2D _Emissiontexture; uniform float4 _Emissiontexture_ST;
            uniform float4 _EmissionColor;
            uniform fixed _EnableEmission;
            uniform float _EmissionIntensity;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
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
                float attenuation = 1;
////// Emissive:
                float4 _Emissiontexture_var = tex2D(_Emissiontexture,TRANSFORM_TEX(i.uv0, _Emissiontexture));
                float3 emissive = lerp( 0.0, (_EmissionColor.rgb*_Emissiontexture_var.rgb*_EmissionIntensity), _EnableEmission );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float2 node_5668 = float2(saturate(dot(i.normalDir,lightDirection)),0.2);
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_5668, _Ramp));
                float node_4857 = 3.0;
                float3 finalColor = emissive + ((_MainTex_var.rgb*_Color.rgb)*_LightMultiplier*saturate((saturate((Function_node_3693( float3(0,1,0) )+(_LightColor0.rgb*attenuation)))*floor(saturate((dot(_Ramp_var.rgb,float3(0.3,0.59,0.11))+0.8)) * node_4857) / (node_4857 - 1)))*lerp(_Color.rgb,dot(_Color.rgb,float3(0.3,0.59,0.11)),(1.0 - _Color.a)));
                return fixed4(finalColor,(_MainTex_var.a*_Opacity));
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull [_CullMode]
            ZWrite [_ZWriteMode]
            
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
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _LightMultiplier;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            float3 Function_node_3693( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            
            }
            
            uniform float _Opacity;
            uniform sampler2D _Emissiontexture; uniform float4 _Emissiontexture_ST;
            uniform float4 _EmissionColor;
            uniform fixed _EnableEmission;
            uniform float _EmissionIntensity;
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float2 node_5668 = float2(saturate(dot(i.normalDir,lightDirection)),0.2);
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_5668, _Ramp));
                float node_4857 = 3.0;
                float3 finalColor = ((_MainTex_var.rgb*_Color.rgb)*_LightMultiplier*saturate((saturate((Function_node_3693( float3(0,1,0) )+(_LightColor0.rgb*attenuation)))*floor(saturate((dot(_Ramp_var.rgb,float3(0.3,0.59,0.11))+0.8)) * node_4857) / (node_4857 - 1)))*lerp(_Color.rgb,dot(_Color.rgb,float3(0.3,0.59,0.11)),(1.0 - _Color.a)));
                return fixed4(finalColor * (_MainTex_var.a*_Opacity),0);
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
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Emissiontexture; uniform float4 _Emissiontexture_ST;
            uniform float4 _EmissionColor;
            uniform fixed _EnableEmission;
            uniform float _EmissionIntensity;
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
                
                float4 _Emissiontexture_var = tex2D(_Emissiontexture,TRANSFORM_TEX(i.uv0, _Emissiontexture));
                o.Emission = lerp( 0.0, (_EmissionColor.rgb*_Emissiontexture_var.rgb*_EmissionIntensity), _EnableEmission );
                
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
