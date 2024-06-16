// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33164,y:32694,varname:node_4013,prsc:2|custl-9724-OUT;n:type:ShaderForge.SFN_Tex2d,id:3486,x:31956,y:32600,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_3486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ab0d80d116b791f439da676e04b08905,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8135,x:32666,y:32938,varname:node_8135,prsc:2|A-6628-OUT,B-4378-OUT;n:type:ShaderForge.SFN_LightColor,id:1580,x:31956,y:32938,varname:node_1580,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6603,x:32125,y:32938,varname:node_6603,prsc:2|A-1580-RGB,B-3681-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:3681,x:31956,y:33066,varname:node_3681,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:6628,x:32496,y:32938,varname:node_6628,prsc:2|IN-7016-OUT;n:type:ShaderForge.SFN_Add,id:7016,x:32320,y:32938,varname:node_7016,prsc:2|A-6603-OUT,B-170-OUT;n:type:ShaderForge.SFN_Code,id:170,x:32125,y:33114,varname:node_170,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsA,output:2,fname:Function_node_170,width:247,height:132,input:2,input_1_label:normal|A-4744-OUT;n:type:ShaderForge.SFN_Vector3,id:4744,x:31956,y:33199,varname:node_4744,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Tex2d,id:1156,x:31952,y:32413,ptovrint:False,ptlb:Map,ptin:_Map,varname:node_1156,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:63ece1ab5527a3d41b84e23bea78db9b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4378,x:32320,y:32798,varname:node_4378,prsc:2|A-3486-RGB,B-8752-RGB;n:type:ShaderForge.SFN_Color,id:2361,x:31952,y:32241,ptovrint:False,ptlb:Line Color,ptin:_LineColor,varname:node_2361,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2033953,c2:0.6194143,c3:0.7279412,c4:1;n:type:ShaderForge.SFN_Color,id:8752,x:31956,y:32786,ptovrint:False,ptlb:Tint Color,ptin:_TintColor,varname:node_8752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5220588,c2:0.5253549,c3:1,c4:1;n:type:ShaderForge.SFN_If,id:9724,x:32904,y:32841,varname:node_9724,prsc:2|A-1156-A,B-9604-OUT,GT-4323-OUT,EQ-8135-OUT,LT-8135-OUT;n:type:ShaderForge.SFN_Vector1,id:9604,x:32719,y:32861,varname:node_9604,prsc:2,v1:0.5;n:type:ShaderForge.SFN_TexCoord,id:5439,x:31952,y:32053,varname:node_5439,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:9567,x:31952,y:31861,varname:node_9567,prsc:2;n:type:ShaderForge.SFN_Add,id:9248,x:32171,y:32073,varname:node_9248,prsc:2|A-5879-OUT,B-5439-V;n:type:ShaderForge.SFN_Relay,id:4323,x:32778,y:32802,varname:node_4323,prsc:2|IN-6776-OUT;n:type:ShaderForge.SFN_Multiply,id:6776,x:32167,y:32241,varname:node_6776,prsc:2|A-2361-RGB,B-4556-OUT;n:type:ShaderForge.SFN_Fmod,id:8076,x:32376,y:32073,varname:node_8076,prsc:2|A-9248-OUT,B-307-OUT;n:type:ShaderForge.SFN_Vector1,id:307,x:32376,y:32213,varname:node_307,prsc:2,v1:1.5;n:type:ShaderForge.SFN_OneMinus,id:4556,x:32576,y:32073,varname:node_4556,prsc:2|IN-8076-OUT;n:type:ShaderForge.SFN_Multiply,id:5879,x:32171,y:31917,varname:node_5879,prsc:2|A-9567-T,B-8145-OUT;n:type:ShaderForge.SFN_Vector1,id:8145,x:31952,y:31982,varname:node_8145,prsc:2,v1:0.6;proporder:3486-1156-2361-8752;pass:END;sub:END;*/

Shader "Shader Forge/cyberpunk" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _Map ("Map", 2D) = "white" {}
        _LineColor ("Line Color", Color) = (0.2033953,0.6194143,0.7279412,1)
        _TintColor ("Tint Color", Color) = (0.5220588,0.5253549,1,1)
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            float3 Function_node_170( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            }
            
            uniform sampler2D _Map; uniform float4 _Map_ST;
            uniform float4 _LineColor;
            uniform float4 _TintColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                LIGHTING_COORDS(1,2)
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Map_var = tex2D(_Map,TRANSFORM_TEX(i.uv0, _Map));
                float node_9724_if_leA = step(_Map_var.a,0.5);
                float node_9724_if_leB = step(0.5,_Map_var.a);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 node_8135 = (saturate(((_LightColor0.rgb*attenuation)+Function_node_170( float3(0,1,0) )))*(_Texture_var.rgb*_TintColor.rgb));
                float4 node_9567 = _Time + _TimeEditor;
                float3 finalColor = lerp((node_9724_if_leA*node_8135)+(node_9724_if_leB*(_LineColor.rgb*(1.0 - fmod(((node_9567.g*0.6)+i.uv0.g),1.5)))),node_8135,node_9724_if_leA*node_9724_if_leB);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            float3 Function_node_170( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            }
            
            uniform sampler2D _Map; uniform float4 _Map_ST;
            uniform float4 _LineColor;
            uniform float4 _TintColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                LIGHTING_COORDS(1,2)
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Map_var = tex2D(_Map,TRANSFORM_TEX(i.uv0, _Map));
                float node_9724_if_leA = step(_Map_var.a,0.5);
                float node_9724_if_leB = step(0.5,_Map_var.a);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 node_8135 = (saturate(((_LightColor0.rgb*attenuation)+Function_node_170( float3(0,1,0) )))*(_Texture_var.rgb*_TintColor.rgb));
                float4 node_9567 = _Time + _TimeEditor;
                float3 finalColor = lerp((node_9724_if_leA*node_8135)+(node_9724_if_leB*(_LineColor.rgb*(1.0 - fmod(((node_9567.g*0.6)+i.uv0.g),1.5)))),node_8135,node_9724_if_leA*node_9724_if_leB);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
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
