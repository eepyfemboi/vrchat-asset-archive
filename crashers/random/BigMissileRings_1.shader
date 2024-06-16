// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-2393-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6608-RGB,B-797-RGB,C-2134-OUT,D-6890-OUT,E-5564-OUT;n:type:ShaderForge.SFN_Color,id:797,x:32235,y:32811,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:306,x:30325,y:32448,varname:node_306,prsc:2,spu:0,spv:-0.5|UVIN-7307-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7307,x:30152,y:32448,varname:node_7307,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:6608,x:32235,y:32610,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_6608,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8227-OUT;n:type:ShaderForge.SFN_Append,id:8227,x:32064,y:32610,varname:node_8227,prsc:2|A-8984-OUT,B-6985-OUT;n:type:ShaderForge.SFN_Vector1,id:6985,x:31868,y:32745,varname:node_6985,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:2134,x:32078,y:32980,ptovrint:False,ptlb:Final Power,ptin:_FinalPower,varname:node_2134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6,max:10;n:type:ShaderForge.SFN_Tex2d,id:4101,x:31241,y:32340,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_4101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6573-OUT;n:type:ShaderForge.SFN_Multiply,id:569,x:31502,y:32325,varname:node_569,prsc:2|A-4101-R,B-6860-R,C-6967-OUT;n:type:ShaderForge.SFN_Add,id:3076,x:31684,y:32467,varname:node_3076,prsc:2|A-569-OUT,B-6860-R;n:type:ShaderForge.SFN_Clamp01,id:8984,x:31900,y:32562,varname:node_8984,prsc:2|IN-3076-OUT;n:type:ShaderForge.SFN_Add,id:8399,x:30777,y:32669,varname:node_8399,prsc:2|A-8814-G,B-7574-OUT;n:type:ShaderForge.SFN_Tex2d,id:3633,x:30335,y:32766,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_3633,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7574,x:30567,y:32823,varname:node_7574,prsc:2|A-3633-R,B-386-OUT;n:type:ShaderForge.SFN_Slider,id:386,x:30192,y:32936,ptovrint:False,ptlb:Distortion Amount,ptin:_DistortionAmount,varname:node_386,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Append,id:7301,x:30958,y:32584,varname:node_7301,prsc:2|A-8814-R,B-8399-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8814,x:30495,y:32448,varname:node_8814,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-306-UVOUT;n:type:ShaderForge.SFN_Fresnel,id:8812,x:32061,y:33210,varname:node_8812,prsc:2|EXP-3502-OUT;n:type:ShaderForge.SFN_OneMinus,id:5564,x:32226,y:33210,varname:node_5564,prsc:2|IN-8812-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3502,x:31861,y:33232,ptovrint:False,ptlb:Fresnel Exp,ptin:_FresnelExp,varname:node_3502,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.25;n:type:ShaderForge.SFN_Tex2dAsset,id:372,x:30958,y:32744,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_372,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6860,x:31241,y:32514,varname:node_6860,prsc:2,ntxv:0,isnm:False|UVIN-7301-OUT,TEX-372-TEX;n:type:ShaderForge.SFN_TexCoord,id:5861,x:32046,y:33053,varname:node_5861,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_OneMinus,id:6890,x:32226,y:33063,varname:node_6890,prsc:2|IN-5861-V;n:type:ShaderForge.SFN_Vector1,id:6967,x:31241,y:32228,varname:node_6967,prsc:2,v1:2;n:type:ShaderForge.SFN_Append,id:6573,x:30958,y:32352,varname:node_6573,prsc:2|A-743-R,B-1144-OUT;n:type:ShaderForge.SFN_ComponentMask,id:743,x:30495,y:32296,varname:node_743,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-483-UVOUT;n:type:ShaderForge.SFN_Panner,id:483,x:30325,y:32296,varname:node_483,prsc:2,spu:0,spv:-0.75|UVIN-7307-UVOUT;n:type:ShaderForge.SFN_Add,id:1144,x:30735,y:32385,varname:node_1144,prsc:2|A-743-G,B-7574-OUT;proporder:797-6608-2134-4101-3633-386-3502-372;pass:END;sub:END;*/

Shader "Sine VFX/BigMissileRings" {
    Properties {
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _Ramp ("Ramp", 2D) = "white" {}
        _FinalPower ("Final Power", Range(0, 10)) = 6
        _Noise ("Noise", 2D) = "white" {}
        _Distortion ("Distortion", 2D) = "white" {}
        _DistortionAmount ("Distortion Amount", Range(0, 1)) = 0.1
        _FresnelExp ("Fresnel Exp", Float ) = 0.25
        _Mask ("Mask", 2D) = "white" {}
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
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TintColor;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform float _FinalPower;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _Distortion; uniform float4 _Distortion_ST;
            uniform float _DistortionAmount;
            uniform float _FresnelExp;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_3441 = _Time;
                float2 node_743 = (i.uv0+node_3441.g*float2(0,-0.75)).rg;
                float4 _Distortion_var = tex2D(_Distortion,TRANSFORM_TEX(i.uv0, _Distortion));
                float node_7574 = (_Distortion_var.r*_DistortionAmount);
                float2 node_6573 = float2(node_743.r,(node_743.g+node_7574));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_6573, _Noise));
                float2 node_8814 = (i.uv0+node_3441.g*float2(0,-0.5)).rg;
                float2 node_7301 = float2(node_8814.r,(node_8814.g+node_7574));
                float4 node_6860 = tex2D(_Mask,TRANSFORM_TEX(node_7301, _Mask));
                float2 node_8227 = float2(saturate(((_Noise_var.r*node_6860.r*2.0)+node_6860.r)),0.0);
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_8227, _Ramp));
                float3 emissive = (_Ramp_var.rgb*_TintColor.rgb*_FinalPower*(1.0 - i.uv0.g)*(1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExp)));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
