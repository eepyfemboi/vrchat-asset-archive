// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:0,trmd:0,grmd:1,uamb:False,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:7,stfa:7,stfz:7,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8016,x:33391,y:32555,varname:node_8016,prsc:2|emission-8720-OUT,clip-3691-OUT,olwid-2708-OUT,olcol-2319-OUT;n:type:ShaderForge.SFN_Tex2d,id:1347,x:32407,y:32089,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_1347,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4929-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6197,x:32017,y:32089,varname:node_6197,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:9736,x:31835,y:32089,varname:node_9736,prsc:2;n:type:ShaderForge.SFN_Panner,id:4929,x:32231,y:32089,varname:node_4929,prsc:2,spu:1,spv:1|UVIN-6197-UVOUT,DIST-5311-OUT;n:type:ShaderForge.SFN_Slider,id:1730,x:31678,y:32279,ptovrint:False,ptlb:Texture Scroll Speed,ptin:_TextureScrollSpeed,varname:node_1730,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:0,max:100;n:type:ShaderForge.SFN_Color,id:9966,x:32861,y:33674,ptovrint:False,ptlb:Outline Color,ptin:_OutlineColor,varname:node_9966,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:2708,x:32664,y:33242,ptovrint:False,ptlb:Outline Wdith,ptin:_OutlineWdith,varname:node_2708,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:0,max:100;n:type:ShaderForge.SFN_Multiply,id:5311,x:32017,y:32249,varname:node_5311,prsc:2|A-9736-TSL,B-1730-OUT;n:type:ShaderForge.SFN_Time,id:9419,x:31845,y:32586,varname:node_9419,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9314,x:32034,y:32742,varname:node_9314,prsc:2|A-9419-TSL,B-6407-OUT;n:type:ShaderForge.SFN_Panner,id:3887,x:32236,y:32586,varname:node_3887,prsc:2,spu:1,spv:1|UVIN-5442-UVOUT,DIST-9314-OUT;n:type:ShaderForge.SFN_TexCoord,id:5442,x:32034,y:32586,varname:node_5442,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:7972,x:32407,y:32586,ptovrint:False,ptlb:Overlay Texture,ptin:_OverlayTexture,varname:_ScrollTexture_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3887-UVOUT;n:type:ShaderForge.SFN_Slider,id:6407,x:31688,y:32760,ptovrint:False,ptlb:Overlay Scroll Speed,ptin:_OverlayScrollSpeed,varname:_ScrollSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:0,max:100;n:type:ShaderForge.SFN_Slider,id:8920,x:32250,y:32956,ptovrint:False,ptlb:Overlay Strength,ptin:_OverlayStrength,varname:node_8920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:1,max:100;n:type:ShaderForge.SFN_Multiply,id:3406,x:32654,y:32670,varname:node_3406,prsc:2|A-7972-RGB,B-6551-RGB,C-8920-OUT;n:type:ShaderForge.SFN_Color,id:6551,x:32407,y:32787,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:node_6551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3444,x:32861,y:33481,ptovrint:False,ptlb:Outline Texture,ptin:_OutlineTexture,varname:node_3444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3946-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2319,x:33031,y:33481,varname:node_2319,prsc:2|A-3444-RGB,B-9966-RGB;n:type:ShaderForge.SFN_Multiply,id:1147,x:32501,y:33636,varname:node_1147,prsc:2|A-4039-OUT,B-3962-TSL;n:type:ShaderForge.SFN_Panner,id:3946,x:32690,y:33481,varname:node_3946,prsc:2,spu:1,spv:1|UVIN-1664-UVOUT,DIST-1147-OUT;n:type:ShaderForge.SFN_TexCoord,id:1664,x:32501,y:33481,varname:node_1664,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:3962,x:32325,y:33636,varname:node_3962,prsc:2;n:type:ShaderForge.SFN_Slider,id:4039,x:32168,y:33505,ptovrint:False,ptlb:Outline Scroll Speed,ptin:_OutlineScrollSpeed,varname:_EmissionScrollSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:0,max:100;n:type:ShaderForge.SFN_Color,id:2889,x:32407,y:32277,ptovrint:False,ptlb:Texture Color,ptin:_TextureColor,varname:node_2889,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3969,x:32636,y:32089,varname:node_3969,prsc:2|A-1347-RGB,B-2889-RGB,C-7579-OUT;n:type:ShaderForge.SFN_Slider,id:7579,x:32250,y:32463,ptovrint:False,ptlb:Texture Strength,ptin:_TextureStrength,varname:node_7579,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:1,max:100;n:type:ShaderForge.SFN_Slider,id:2287,x:32630,y:33090,ptovrint:False,ptlb:Cutoff Amount,ptin:_CutoffAmount,varname:node_8444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:3691,x:33135,y:32906,varname:node_3691,prsc:2|A-1027-OUT,B-2287-OUT;n:type:ShaderForge.SFN_Tex2d,id:5224,x:32787,y:32906,ptovrint:False,ptlb:Cutoff Texture,ptin:_CutoffTexture,varname:node_5224,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:8720,x:33233,y:32654,varname:node_8720,prsc:2|A-3969-OUT,B-3406-OUT,T-4364-OUT;n:type:ShaderForge.SFN_Slider,id:4364,x:32902,y:32756,ptovrint:False,ptlb:Blend,ptin:_Blend,varname:node_4364,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Add,id:1027,x:32961,y:32906,varname:node_1027,prsc:2|A-5224-RGB,B-2287-OUT;proporder:1347-1730-7579-2889-7972-6407-8920-6551-3444-4039-2708-9966-5224-2287-4364;pass:END;sub:END;*/

Shader "Zer0/0 Customs (big models)" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TextureScrollSpeed ("Texture Scroll Speed", Range(-100, 100)) = 0
        _TextureStrength ("Texture Strength", Range(-100, 100)) = 1
        _TextureColor ("Texture Color", Color) = (1,1,1,1)
        _OverlayTexture ("Overlay Texture", 2D) = "white" {}
        _OverlayScrollSpeed ("Overlay Scroll Speed", Range(-100, 100)) = 0
        _OverlayStrength ("Overlay Strength", Range(-100, 100)) = 1
        _OverlayColor ("Overlay Color", Color) = (0,0,0,1)
        _OutlineTexture ("Outline Texture", 2D) = "white" {}
        _OutlineScrollSpeed ("Outline Scroll Speed", Range(-100, 100)) = 0
        _OutlineWdith ("Outline Wdith", Range(-100, 100)) = 0
        _OutlineColor ("Outline Color", Color) = (1,1,1,1)
        _CutoffTexture ("Cutoff Texture", 2D) = "white" {}
        _CutoffAmount ("Cutoff Amount", Range(0, 1)) = 1
        _Blend ("Blend", Range(0, 1)) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform float4 _OutlineColor;
            uniform float _OutlineWdith;
            uniform sampler2D _OutlineTexture; uniform float4 _OutlineTexture_ST;
            uniform float _OutlineScrollSpeed;
            uniform float _CutoffAmount;
            uniform sampler2D _CutoffTexture; uniform float4 _CutoffTexture_ST;
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
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutlineWdith,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _CutoffTexture_var = tex2D(_CutoffTexture,TRANSFORM_TEX(i.uv0, _CutoffTexture));
                clip(((_CutoffTexture_var.rgb+_CutoffAmount)*_CutoffAmount) - 0.5);
                float4 node_3962 = _Time;
                float2 node_3946 = (i.uv0+(_OutlineScrollSpeed*node_3962.r)*float2(1,1));
                float4 _OutlineTexture_var = tex2D(_OutlineTexture,TRANSFORM_TEX(node_3946, _OutlineTexture));
                return fixed4((_OutlineTexture_var.rgb*_OutlineColor.rgb),0);
            }
            ENDCG
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _TextureScrollSpeed;
            uniform sampler2D _OverlayTexture; uniform float4 _OverlayTexture_ST;
            uniform float _OverlayScrollSpeed;
            uniform float _OverlayStrength;
            uniform float4 _OverlayColor;
            uniform float4 _TextureColor;
            uniform float _TextureStrength;
            uniform float _CutoffAmount;
            uniform sampler2D _CutoffTexture; uniform float4 _CutoffTexture_ST;
            uniform float _Blend;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _CutoffTexture_var = tex2D(_CutoffTexture,TRANSFORM_TEX(i.uv0, _CutoffTexture));
                clip(((_CutoffTexture_var.rgb+_CutoffAmount)*_CutoffAmount) - 0.5);
////// Lighting:
////// Emissive:
                float4 node_9736 = _Time;
                float2 node_4929 = (i.uv0+(node_9736.r*_TextureScrollSpeed)*float2(1,1));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4929, _MainTex));
                float4 node_9419 = _Time;
                float2 node_3887 = (i.uv0+(node_9419.r*_OverlayScrollSpeed)*float2(1,1));
                float4 _OverlayTexture_var = tex2D(_OverlayTexture,TRANSFORM_TEX(node_3887, _OverlayTexture));
                float3 emissive = lerp((_MainTex_var.rgb*_TextureColor.rgb*_TextureStrength),(_OverlayTexture_var.rgb*_OverlayColor.rgb*_OverlayStrength),_Blend);
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
            Cull Back
            
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
            uniform float _CutoffAmount;
            uniform sampler2D _CutoffTexture; uniform float4 _CutoffTexture_ST;
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
            float4 frag(VertexOutput i) : COLOR {
                float4 _CutoffTexture_var = tex2D(_CutoffTexture,TRANSFORM_TEX(i.uv0, _CutoffTexture));
                clip(((_CutoffTexture_var.rgb+_CutoffAmount)*_CutoffAmount) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Standard"
    CustomEditor "ShaderForgeMaterialInspector"
}
