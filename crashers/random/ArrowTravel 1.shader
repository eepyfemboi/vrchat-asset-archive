// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:0,x:34330,y:31982,varname:node_0,prsc:2|emission-503-OUT,custl-64-OUT,voffset-3718-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:33849,y:32181,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:33348,y:32104,varname:node_40,prsc:2,dt:1|A-42-OUT,B-2719-OUT;n:type:ShaderForge.SFN_LightVector,id:42,x:33185,y:31995,varname:node_42,prsc:2;n:type:ShaderForge.SFN_Dot,id:52,x:33239,y:32301,varname:node_52,prsc:2,dt:1|A-2719-OUT,B-62-OUT;n:type:ShaderForge.SFN_Add,id:55,x:33887,y:32413,varname:node_55,prsc:2|A-3512-OUT,B-8151-OUT;n:type:ShaderForge.SFN_HalfVector,id:62,x:32980,y:32445,varname:node_62,prsc:2;n:type:ShaderForge.SFN_LightColor,id:63,x:33862,y:32299,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-37-OUT,B-63-RGB,C-55-OUT;n:type:ShaderForge.SFN_Slider,id:239,x:32538,y:32669,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:8151,x:33671,y:32390,varname:node_8151,prsc:2|A-40-OUT,B-8265-OUT,C-7005-RGB;n:type:ShaderForge.SFN_Power,id:8265,x:33422,y:32390,varname:node_8265,prsc:2|VAL-52-OUT,EXP-5105-OUT;n:type:ShaderForge.SFN_Color,id:7005,x:33395,y:32654,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:node_7005,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Exp,id:5105,x:33181,y:32578,varname:node_5105,prsc:2,et:1|IN-5493-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:5493,x:32941,y:32610,varname:node_5493,prsc:2,a:1,b:11|IN-239-OUT;n:type:ShaderForge.SFN_Add,id:2719,x:32705,y:32226,varname:node_2719,prsc:2|A-3546-OUT,B-4043-OUT,C-3800-OUT;n:type:ShaderForge.SFN_Multiply,id:3546,x:32470,y:32064,varname:node_3546,prsc:2|A-9047-OUT,B-6618-R;n:type:ShaderForge.SFN_Multiply,id:4043,x:32470,y:32242,varname:node_4043,prsc:2|A-8033-OUT,B-6618-G;n:type:ShaderForge.SFN_Multiply,id:3800,x:32470,y:32395,varname:node_3800,prsc:2|A-6388-OUT,B-6618-B;n:type:ShaderForge.SFN_Get,id:9047,x:32231,y:32062,varname:node_9047,prsc:2|IN-4996-OUT;n:type:ShaderForge.SFN_Get,id:8033,x:32171,y:32217,varname:node_8033,prsc:2|IN-8064-OUT;n:type:ShaderForge.SFN_Get,id:6388,x:32149,y:32393,varname:node_6388,prsc:2|IN-8830-OUT;n:type:ShaderForge.SFN_Multiply,id:3512,x:33561,y:32121,varname:node_3512,prsc:2|A-7807-OUT,B-40-OUT;n:type:ShaderForge.SFN_Multiply,id:7807,x:33424,y:31877,varname:node_7807,prsc:2|A-451-RGB,B-5400-RGB;n:type:ShaderForge.SFN_Tex2d,id:451,x:33184,y:31627,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_451,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5400,x:33198,y:31844,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5400,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_AmbientLight,id:9017,x:33710,y:31988,varname:node_9017,prsc:2;n:type:ShaderForge.SFN_Multiply,id:503,x:33982,y:31944,varname:node_503,prsc:2|A-7807-OUT,B-9017-RGB;n:type:ShaderForge.SFN_TexCoord,id:1817,x:31763,y:31511,varname:node_1817,prsc:2,uv:0,uaff:True;n:type:ShaderForge.SFN_TexCoord,id:2208,x:31759,y:31714,varname:node_2208,prsc:2,uv:1,uaff:True;n:type:ShaderForge.SFN_Append,id:3494,x:31985,y:31521,varname:node_3494,prsc:2|A-1817-Z,B-1817-W,C-2208-U;n:type:ShaderForge.SFN_Append,id:4531,x:31961,y:31710,varname:node_4531,prsc:2|A-2208-V,B-2208-Z,C-2208-W;n:type:ShaderForge.SFN_Set,id:8064,x:32395,y:31546,varname:vel,prsc:2|IN-9168-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2263,x:31925,y:31866,varname:node_2263,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:9917,x:32160,y:31940,varname:node_9917,prsc:2;n:type:ShaderForge.SFN_Subtract,id:9065,x:32145,y:31769,varname:node_9065,prsc:2|A-2263-XYZ,B-4531-OUT;n:type:ShaderForge.SFN_Subtract,id:6452,x:32384,y:31825,varname:node_6452,prsc:2|A-9065-OUT,B-9917-XYZ;n:type:ShaderForge.SFN_Set,id:1298,x:32639,y:31870,varname:temppos,prsc:2|IN-6452-OUT;n:type:ShaderForge.SFN_Vector3,id:2591,x:31561,y:32561,varname:node_2591,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Cross,id:5325,x:31767,y:32561,varname:node_5325,prsc:2|A-2591-OUT,B-7827-OUT;n:type:ShaderForge.SFN_Normalize,id:5811,x:31991,y:32561,varname:node_5811,prsc:2|IN-5325-OUT;n:type:ShaderForge.SFN_Set,id:4996,x:32228,y:32599,varname:newaxis1,prsc:2|IN-5811-OUT;n:type:ShaderForge.SFN_Get,id:7827,x:31561,y:32682,varname:node_7827,prsc:2|IN-8064-OUT;n:type:ShaderForge.SFN_Normalize,id:9168,x:32186,y:31493,varname:node_9168,prsc:2|IN-3494-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6618,x:31923,y:32224,varname:node_6618,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-4601-OUT;n:type:ShaderForge.SFN_Normalize,id:8028,x:31987,y:32960,varname:node_8028,prsc:2|IN-338-OUT;n:type:ShaderForge.SFN_Cross,id:338,x:31784,y:32825,varname:node_338,prsc:2|A-5811-OUT,B-7827-OUT;n:type:ShaderForge.SFN_Set,id:8830,x:32246,y:33022,varname:newaxis2,prsc:2|IN-8028-OUT;n:type:ShaderForge.SFN_Get,id:1732,x:32130,y:32834,varname:node_1732,prsc:2|IN-1298-OUT;n:type:ShaderForge.SFN_ComponentMask,id:922,x:32338,y:32846,varname:node_922,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-1732-OUT;n:type:ShaderForge.SFN_Multiply,id:8407,x:32586,y:32835,varname:node_8407,prsc:2|A-5811-OUT,B-922-R;n:type:ShaderForge.SFN_Multiply,id:6318,x:32586,y:32989,varname:node_6318,prsc:2|A-6850-OUT,B-922-G;n:type:ShaderForge.SFN_Get,id:6850,x:32342,y:33109,varname:node_6850,prsc:2|IN-8064-OUT;n:type:ShaderForge.SFN_Multiply,id:6852,x:32586,y:33148,varname:node_6852,prsc:2|A-8028-OUT,B-922-B;n:type:ShaderForge.SFN_Get,id:2327,x:32793,y:33183,varname:node_2327,prsc:2|IN-1298-OUT;n:type:ShaderForge.SFN_Add,id:2628,x:32803,y:33015,varname:node_2628,prsc:2|A-8407-OUT,B-6318-OUT,C-6852-OUT;n:type:ShaderForge.SFN_Subtract,id:3718,x:33046,y:33042,varname:node_3718,prsc:2|A-2628-OUT,B-2327-OUT;n:type:ShaderForge.SFN_NormalVector,id:4601,x:31598,y:32216,prsc:2,pt:False;proporder:239-7005-5400-451;pass:END;sub:END;*/

Shader "Bender's Shaders/Velocitybaseddirection" {
    Properties {
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Diffuse ("Diffuse", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform float _Gloss;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 vel = normalize(float3(o.uv0.b,o.uv0.a,o.uv1.r));
                float3 node_7827 = vel;
                float3 node_5811 = normalize(cross(float3(0,1,0),node_7827));
                float3 temppos = ((mul(unity_ObjectToWorld, v.vertex).rgb-float3(o.uv1.g,o.uv1.b,o.uv1.a))-objPos.rgb);
                float3 node_922 = temppos.rgb;
                float3 node_8028 = normalize(cross(node_5811,node_7827));
                v.vertex.xyz += (((node_5811*node_922.r)+(vel*node_922.g)+(node_8028*node_922.b))-temppos);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_7807 = (_Diffuse_var.rgb*_Color.rgb);
                float3 emissive = (node_7807*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float3 vel = normalize(float3(i.uv0.b,i.uv0.a,i.uv1.r));
                float3 node_7827 = vel;
                float3 node_5811 = normalize(cross(float3(0,1,0),node_7827));
                float3 newaxis1 = node_5811;
                float3 node_6618 = i.normalDir.rgb;
                float3 node_8028 = normalize(cross(node_5811,node_7827));
                float3 newaxis2 = node_8028;
                float3 node_2719 = ((newaxis1*node_6618.r)+(vel*node_6618.g)+(newaxis2*node_6618.b));
                float node_40 = max(0,dot(lightDirection,node_2719));
                float3 finalColor = emissive + (attenuation*_LightColor0.rgb*((node_7807*node_40)+(node_40*pow(max(0,dot(node_2719,halfDirection)),exp2(lerp(1,11,_Gloss)))*_SpecColor.rgb)));
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform float _Gloss;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 vel = normalize(float3(o.uv0.b,o.uv0.a,o.uv1.r));
                float3 node_7827 = vel;
                float3 node_5811 = normalize(cross(float3(0,1,0),node_7827));
                float3 temppos = ((mul(unity_ObjectToWorld, v.vertex).rgb-float3(o.uv1.g,o.uv1.b,o.uv1.a))-objPos.rgb);
                float3 node_922 = temppos.rgb;
                float3 node_8028 = normalize(cross(node_5811,node_7827));
                v.vertex.xyz += (((node_5811*node_922.r)+(vel*node_922.g)+(node_8028*node_922.b))-temppos);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_7807 = (_Diffuse_var.rgb*_Color.rgb);
                float3 vel = normalize(float3(i.uv0.b,i.uv0.a,i.uv1.r));
                float3 node_7827 = vel;
                float3 node_5811 = normalize(cross(float3(0,1,0),node_7827));
                float3 newaxis1 = node_5811;
                float3 node_6618 = i.normalDir.rgb;
                float3 node_8028 = normalize(cross(node_5811,node_7827));
                float3 newaxis2 = node_8028;
                float3 node_2719 = ((newaxis1*node_6618.r)+(vel*node_6618.g)+(newaxis2*node_6618.b));
                float node_40 = max(0,dot(lightDirection,node_2719));
                float3 finalColor = (attenuation*_LightColor0.rgb*((node_7807*node_40)+(node_40*pow(max(0,dot(node_2719,halfDirection)),exp2(lerp(1,11,_Gloss)))*_SpecColor.rgb)));
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
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float4 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 uv0 : TEXCOORD1;
                float4 uv1 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 vel = normalize(float3(o.uv0.b,o.uv0.a,o.uv1.r));
                float3 node_7827 = vel;
                float3 node_5811 = normalize(cross(float3(0,1,0),node_7827));
                float3 temppos = ((mul(unity_ObjectToWorld, v.vertex).rgb-float3(o.uv1.g,o.uv1.b,o.uv1.a))-objPos.rgb);
                float3 node_922 = temppos.rgb;
                float3 node_8028 = normalize(cross(node_5811,node_7827));
                v.vertex.xyz += (((node_5811*node_922.r)+(vel*node_922.g)+(node_8028*node_922.b))-temppos);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
            #include "UnityCG.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float4 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 vel = normalize(float3(o.uv0.b,o.uv0.a,o.uv1.r));
                float3 node_7827 = vel;
                float3 node_5811 = normalize(cross(float3(0,1,0),node_7827));
                float3 temppos = ((mul(unity_ObjectToWorld, v.vertex).rgb-float3(o.uv1.g,o.uv1.b,o.uv1.a))-objPos.rgb);
                float3 node_922 = temppos.rgb;
                float3 node_8028 = normalize(cross(node_5811,node_7827));
                v.vertex.xyz += (((node_5811*node_922.r)+(vel*node_922.g)+(node_8028*node_922.b))-temppos);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_7807 = (_Diffuse_var.rgb*_Color.rgb);
                o.Emission = (node_7807*UNITY_LIGHTMODEL_AMBIENT.rgb);
                
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
