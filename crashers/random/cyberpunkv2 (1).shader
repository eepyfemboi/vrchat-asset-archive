// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33164,y:32694,varname:node_4013,prsc:2|custl-9724-OUT;n:type:ShaderForge.SFN_Tex2d,id:3486,x:31956,y:32600,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:_Texture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8135,x:32666,y:32938,varname:node_8135,prsc:2|A-6628-OUT,B-4378-OUT;n:type:ShaderForge.SFN_LightColor,id:1580,x:31956,y:32938,varname:node_1580,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6603,x:32125,y:32938,varname:node_6603,prsc:2|A-1580-RGB,B-3681-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:3681,x:31956,y:33066,varname:node_3681,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:6628,x:32496,y:32938,varname:node_6628,prsc:2|IN-7016-OUT;n:type:ShaderForge.SFN_Add,id:7016,x:32320,y:32938,varname:node_7016,prsc:2|A-6603-OUT,B-170-OUT;n:type:ShaderForge.SFN_Code,id:170,x:32125,y:33114,varname:node_170,prsc:2,code:cgBlAHQAdQByAG4AIABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABuAG8AcgBtAGEAbAAsACAAMQAuADAAKQApADsA,output:2,fname:Function_node_170,width:247,height:132,input:2,input_1_label:normal|A-4744-OUT;n:type:ShaderForge.SFN_Vector3,id:4744,x:31956,y:33199,varname:node_4744,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Tex2d,id:1156,x:31952,y:32413,ptovrint:False,ptlb:Overlay Map,ptin:_OverlayMap,varname:_OverlayMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4378,x:32320,y:32798,varname:node_4378,prsc:2|A-3486-RGB,B-8752-RGB;n:type:ShaderForge.SFN_Color,id:2361,x:31636,y:32234,ptovrint:False,ptlb:Overlay Tint,ptin:_OverlayTint,varname:_OverlayTint,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2033953,c2:0.6194143,c3:0.7279412,c4:1;n:type:ShaderForge.SFN_Color,id:8752,x:31956,y:32786,ptovrint:False,ptlb:Tint Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_If,id:9724,x:32904,y:32841,varname:node_9724,prsc:2|A-1156-A,B-9604-OUT,GT-4323-OUT,EQ-8135-OUT,LT-8135-OUT;n:type:ShaderForge.SFN_Vector1,id:9604,x:32719,y:32861,varname:node_9604,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Time,id:9567,x:31969,y:31811,varname:node_9567,prsc:2;n:type:ShaderForge.SFN_Add,id:9248,x:32171,y:32073,varname:node_9248,prsc:2|A-5879-OUT,B-3655-R;n:type:ShaderForge.SFN_Relay,id:4323,x:32778,y:32802,varname:node_4323,prsc:2|IN-629-OUT;n:type:ShaderForge.SFN_Multiply,id:6776,x:32171,y:32268,varname:node_6776,prsc:2|A-9811-OUT,B-4556-OUT;n:type:ShaderForge.SFN_Fmod,id:8076,x:32376,y:32073,varname:node_8076,prsc:2|A-9248-OUT,B-556-OUT;n:type:ShaderForge.SFN_OneMinus,id:4556,x:32625,y:32073,varname:node_4556,prsc:2|IN-8076-OUT;n:type:ShaderForge.SFN_Multiply,id:5879,x:32171,y:31917,varname:node_5879,prsc:2|A-9567-T,B-9763-OUT;n:type:ShaderForge.SFN_Tex2d,id:3655,x:31952,y:32073,ptovrint:False,ptlb:Movement Map,ptin:_MovementMap,varname:_MovementMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:9763,x:31952,y:31995,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:_Speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.6;n:type:ShaderForge.SFN_ValueProperty,id:556,x:32376,y:32241,ptovrint:False,ptlb:Frequency,ptin:_Frequency,varname:_Frequency,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.5;n:type:ShaderForge.SFN_Tex2d,id:7854,x:31636,y:32411,ptovrint:False,ptlb:Overlay Texture,ptin:_OverlayTexture,varname:_OverlayTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9811,x:31865,y:32244,varname:node_9811,prsc:2|A-2361-RGB,B-7854-RGB;n:type:ShaderForge.SFN_Desaturate,id:9675,x:32171,y:32413,varname:node_9675,prsc:2|COL-6776-OUT;n:type:ShaderForge.SFN_Tex2d,id:6422,x:32390,y:32453,ptovrint:False,ptlb:Overlay Background,ptin:_OverlayBackground,varname:_OverlayBackground,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Add,id:629,x:32832,y:32295,varname:node_629,prsc:2|A-7663-OUT,B-7046-OUT;n:type:ShaderForge.SFN_Append,id:7046,x:32530,y:32307,varname:node_7046,prsc:2|A-6776-OUT,B-9675-OUT;n:type:ShaderForge.SFN_Append,id:7663,x:32759,y:32455,varname:node_7663,prsc:2|A-8253-OUT,B-6422-A;n:type:ShaderForge.SFN_Color,id:5038,x:32390,y:32643,ptovrint:False,ptlb:Overlay Background Tint,ptin:_OverlayBackgroundTint,varname:_OverlayBackgroundTint,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8253,x:32588,y:32519,varname:node_8253,prsc:2|A-6422-RGB,B-5038-RGB;proporder:3486-8752-7854-2361-6422-5038-1156-3655-9763-556;pass:END;sub:END;*/

Shader "Shader Forge/cyberpunkv2" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _TintColor ("Tint Color", Color) = (1,1,1,1)
        _OverlayTexture ("Overlay Texture", 2D) = "white" {}
        _OverlayTint ("Overlay Tint", Color) = (0.2033953,0.6194143,0.7279412,1)
        _OverlayBackground ("Overlay Background", 2D) = "black" {}
        _OverlayBackgroundTint ("Overlay Background Tint", Color) = (1,1,1,1)
        _OverlayMap ("Overlay Map", 2D) = "black" {}
        _MovementMap ("Movement Map", 2D) = "white" {}
        _Speed ("Speed", Float ) = 0.6
        _Frequency ("Frequency", Float ) = 1.5
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            float3 Function_node_170( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            }
            
            uniform sampler2D _OverlayMap; uniform float4 _OverlayMap_ST;
            uniform float4 _OverlayTint;
            uniform float4 _TintColor;
            uniform sampler2D _MovementMap; uniform float4 _MovementMap_ST;
            uniform float _Speed;
            uniform float _Frequency;
            uniform sampler2D _OverlayTexture; uniform float4 _OverlayTexture_ST;
            uniform sampler2D _OverlayBackground; uniform float4 _OverlayBackground_ST;
            uniform float4 _OverlayBackgroundTint;
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
                float4 _OverlayMap_var = tex2D(_OverlayMap,TRANSFORM_TEX(i.uv0, _OverlayMap));
                float node_9724_if_leA = step(_OverlayMap_var.a,0.5);
                float node_9724_if_leB = step(0.5,_OverlayMap_var.a);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 node_8135 = (saturate(((_LightColor0.rgb*attenuation)+Function_node_170( float3(0,1,0) )))*(_Texture_var.rgb*_TintColor.rgb));
                float4 _OverlayBackground_var = tex2D(_OverlayBackground,TRANSFORM_TEX(i.uv0, _OverlayBackground));
                float4 _OverlayTexture_var = tex2D(_OverlayTexture,TRANSFORM_TEX(i.uv0, _OverlayTexture));
                float4 node_9567 = _Time;
                float4 _MovementMap_var = tex2D(_MovementMap,TRANSFORM_TEX(i.uv0, _MovementMap));
                float3 node_6776 = ((_OverlayTint.rgb*_OverlayTexture_var.rgb)*(1.0 - fmod(((node_9567.g*_Speed)+_MovementMap_var.r),_Frequency)));
                float3 finalColor = lerp((node_9724_if_leA*node_8135)+(node_9724_if_leB*(float4((_OverlayBackground_var.rgb*_OverlayBackgroundTint.rgb),_OverlayBackground_var.a)+float4(node_6776,dot(node_6776,float3(0.3,0.59,0.11))))),node_8135,node_9724_if_leA*node_9724_if_leB).rgb;
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            float3 Function_node_170( float3 normal ){
            return ShadeSH9(half4(normal, 1.0));
            }
            
            uniform sampler2D _OverlayMap; uniform float4 _OverlayMap_ST;
            uniform float4 _OverlayTint;
            uniform float4 _TintColor;
            uniform sampler2D _MovementMap; uniform float4 _MovementMap_ST;
            uniform float _Speed;
            uniform float _Frequency;
            uniform sampler2D _OverlayTexture; uniform float4 _OverlayTexture_ST;
            uniform sampler2D _OverlayBackground; uniform float4 _OverlayBackground_ST;
            uniform float4 _OverlayBackgroundTint;
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
                float4 _OverlayMap_var = tex2D(_OverlayMap,TRANSFORM_TEX(i.uv0, _OverlayMap));
                float node_9724_if_leA = step(_OverlayMap_var.a,0.5);
                float node_9724_if_leB = step(0.5,_OverlayMap_var.a);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 node_8135 = (saturate(((_LightColor0.rgb*attenuation)+Function_node_170( float3(0,1,0) )))*(_Texture_var.rgb*_TintColor.rgb));
                float4 _OverlayBackground_var = tex2D(_OverlayBackground,TRANSFORM_TEX(i.uv0, _OverlayBackground));
                float4 _OverlayTexture_var = tex2D(_OverlayTexture,TRANSFORM_TEX(i.uv0, _OverlayTexture));
                float4 node_9567 = _Time;
                float4 _MovementMap_var = tex2D(_MovementMap,TRANSFORM_TEX(i.uv0, _MovementMap));
                float3 node_6776 = ((_OverlayTint.rgb*_OverlayTexture_var.rgb)*(1.0 - fmod(((node_9567.g*_Speed)+_MovementMap_var.r),_Frequency)));
                float3 finalColor = lerp((node_9724_if_leA*node_8135)+(node_9724_if_leB*(float4((_OverlayBackground_var.rgb*_OverlayBackgroundTint.rgb),_OverlayBackground_var.a)+float4(node_6776,dot(node_6776,float3(0.3,0.59,0.11))))),node_8135,node_9724_if_leA*node_9724_if_leB).rgb;
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
