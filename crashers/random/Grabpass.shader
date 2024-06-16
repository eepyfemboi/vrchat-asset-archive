// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|emission-3555-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31745,y:33390,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:65ac841379e6a4240ad3f98993226411,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32011,y:33360,varname:node_1672,prsc:2,tex:65ac841379e6a4240ad3f98993226411,ntxv:0,isnm:False|UVIN-9319-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_ScreenPos,id:6084,x:31320,y:32963,varname:node_6084,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:7037,x:31801,y:33015,varname:node_7037,prsc:2|UVIN-6084-UVOUT;n:type:ShaderForge.SFN_Color,id:1905,x:32092,y:32446,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:3323,x:32194,y:33059,varname:node_3323,prsc:2|A-7037-RGB,B-3039-OUT;n:type:ShaderForge.SFN_Slider,id:8998,x:31795,y:32419,ptovrint:False,ptlb:Desaturate strenght,ptin:_Desaturatestrenght,varname:node_8998,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Desaturate,id:3039,x:32236,y:32712,varname:node_3039,prsc:2|COL-1905-RGB,DES-8998-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3555,x:32772,y:33015,ptovrint:False,ptlb:overlay?,ptin:_overlay,varname:node_3555,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5073-OUT,B-9977-OUT;n:type:ShaderForge.SFN_Add,id:9977,x:32503,y:33277,varname:node_9977,prsc:2|A-258-OUT,B-5073-OUT;n:type:ShaderForge.SFN_Multiply,id:7260,x:32295,y:33483,varname:node_7260,prsc:2|A-7542-RGB,B-4684-OUT;n:type:ShaderForge.SFN_Slider,id:4684,x:31969,y:33608,ptovrint:False,ptlb:Overlay strength,ptin:_Overlaystrength,varname:node_4684,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:4988,x:31242,y:33224,ptovrint:False,ptlb:U overlay speed,ptin:_Uoverlayspeed,varname:node_4988,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:9106,x:31244,y:33306,ptovrint:False,ptlb:V overlay speed,ptin:_Voverlayspeed,varname:node_9106,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Append,id:7244,x:31550,y:33280,varname:node_7244,prsc:2|A-4988-OUT,B-9106-OUT;n:type:ShaderForge.SFN_Multiply,id:5069,x:31685,y:33182,varname:node_5069,prsc:2|A-1694-T,B-7244-OUT;n:type:ShaderForge.SFN_Time,id:1694,x:31517,y:33115,varname:node_1694,prsc:2;n:type:ShaderForge.SFN_Add,id:818,x:31662,y:32910,varname:node_818,prsc:2|A-6084-UVOUT,B-5069-OUT;n:type:ShaderForge.SFN_Color,id:5032,x:32109,y:33717,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:node_5032,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:283,x:32297,y:33798,ptovrint:False,ptlb:Color Strength,ptin:_ColorStrength,varname:node_283,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Multiply,id:1677,x:32628,y:33706,varname:node_1677,prsc:2|A-5032-RGB,B-283-OUT;n:type:ShaderForge.SFN_Multiply,id:258,x:32514,y:33406,varname:node_258,prsc:2|A-7260-OUT,B-1677-OUT;n:type:ShaderForge.SFN_Tex2d,id:6019,x:31619,y:32499,ptovrint:False,ptlb:UV noise,ptin:_UVnoise,varname:node_6019,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-954-OUT;n:type:ShaderForge.SFN_Slider,id:4249,x:30952,y:32655,ptovrint:False,ptlb:U noise speed,ptin:_Unoisespeed,varname:_Uoverlayspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:5194,x:30954,y:32737,ptovrint:False,ptlb:V noise speed,ptin:_Vnoisespeed,varname:_Voverlayspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Append,id:7984,x:31260,y:32711,varname:node_7984,prsc:2|A-4249-OUT,B-5194-OUT;n:type:ShaderForge.SFN_Multiply,id:3507,x:31395,y:32613,varname:node_3507,prsc:2|A-8404-T,B-7984-OUT;n:type:ShaderForge.SFN_Time,id:8404,x:31227,y:32546,varname:node_8404,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:2651,x:31134,y:32405,varname:node_2651,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:954,x:31395,y:32432,varname:node_954,prsc:2|A-2651-UVOUT,B-3507-OUT;n:type:ShaderForge.SFN_Lerp,id:9319,x:31870,y:32778,varname:node_9319,prsc:2|A-818-OUT,B-6019-R,T-941-OUT;n:type:ShaderForge.SFN_Slider,id:941,x:31448,y:32781,ptovrint:False,ptlb:noise distort strength,ptin:_noisedistortstrength,varname:node_941,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_SwitchProperty,id:5073,x:32373,y:33021,ptovrint:False,ptlb:Desaturate?,ptin:_Desaturate,varname:node_5073,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6948-OUT,B-3323-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6948,x:32380,y:32520,ptovrint:False,ptlb:Greyscale,ptin:_Greyscale,varname:node_6948,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-376-OUT,B-4447-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9383,x:31633,y:32345,varname:node_9383,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:3594,x:31831,y:32531,varname:node_3594,prsc:2|UVIN-9383-UVOUT;n:type:ShaderForge.SFN_Desaturate,id:4447,x:32063,y:32636,varname:node_4447,prsc:2|COL-3594-RGB,DES-8129-OUT;n:type:ShaderForge.SFN_Vector1,id:376,x:32238,y:32418,varname:node_376,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:8129,x:31741,y:32693,ptovrint:False,ptlb:Greyscale Strength,ptin:_GreyscaleStrength,varname:node_8129,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:2;proporder:4430-1905-8998-3555-4684-4988-9106-5032-283-6019-4249-5194-941-5073-6948-8129;pass:END;sub:END;*/

Shader "Bender's Shaders/Screen FX/Grabpass" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Desaturatestrenght ("Desaturate strenght", Range(-3, 3)) = 0
        [MaterialToggle] _overlay ("overlay?", Float ) = 0
        _Overlaystrength ("Overlay strength", Range(-3, 3)) = 0
        _Uoverlayspeed ("U overlay speed", Range(-3, 3)) = 0
        _Voverlayspeed ("V overlay speed", Range(-3, 3)) = 0
        _OverlayColor ("Overlay Color", Color) = (0.5,0.5,0.5,1)
        _ColorStrength ("Color Strength", Range(-3, 3)) = 0
        _UVnoise ("UV noise", 2D) = "white" {}
        _Unoisespeed ("U noise speed", Range(-3, 3)) = 0
        _Vnoisespeed ("V noise speed", Range(-3, 3)) = 0
        _noisedistortstrength ("noise distort strength", Range(-3, 3)) = 0
        [MaterialToggle] _Desaturate ("Desaturate?", Float ) = 0
        [MaterialToggle] _Greyscale ("Greyscale", Float ) = 0
        _GreyscaleStrength ("Greyscale Strength", Range(-5, 2)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+1"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform float _Desaturatestrenght;
            uniform fixed _overlay;
            uniform float _Overlaystrength;
            uniform float _Uoverlayspeed;
            uniform float _Voverlayspeed;
            uniform float4 _OverlayColor;
            uniform float _ColorStrength;
            uniform sampler2D _UVnoise; uniform float4 _UVnoise_ST;
            uniform float _Unoisespeed;
            uniform float _Vnoisespeed;
            uniform float _noisedistortstrength;
            uniform fixed _Desaturate;
            uniform fixed _Greyscale;
            uniform float _GreyscaleStrength;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float3 _Desaturate_var = lerp( lerp( 0.0, lerp(tex2D( _GrabTexture, sceneUVs.rg).rgb,dot(tex2D( _GrabTexture, sceneUVs.rg).rgb,float3(0.3,0.59,0.11)),_GreyscaleStrength), _Greyscale ), (tex2D( _GrabTexture, sceneUVs.rg).rgb*lerp(_Color.rgb,dot(_Color.rgb,float3(0.3,0.59,0.11)),_Desaturatestrenght)), _Desaturate );
                float4 node_1694 = _Time;
                float4 node_8404 = _Time;
                float2 node_954 = (sceneUVs.rg+(node_8404.g*float2(_Unoisespeed,_Vnoisespeed)));
                float4 _UVnoise_var = tex2D(_UVnoise,TRANSFORM_TEX(node_954, _UVnoise));
                float2 node_9319 = lerp((sceneUVs.rg+(node_1694.g*float2(_Uoverlayspeed,_Voverlayspeed))),float2(_UVnoise_var.r,_UVnoise_var.r),_noisedistortstrength);
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_9319, _MainTex));
                float3 emissive = lerp( _Desaturate_var, (((node_1672.rgb*_Overlaystrength)*(_OverlayColor.rgb*_ColorStrength))+_Desaturate_var), _overlay );
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
