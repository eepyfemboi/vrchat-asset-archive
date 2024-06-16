// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|emission-2698-OUT,alpha-9284-OUT,clip-162-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7866,x:31310,y:33056,varname:node_7866,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:7642,x:31496,y:33036,varname:node_7642,prsc:2|UVIN-7866-UVOUT;n:type:ShaderForge.SFN_ViewPosition,id:328,x:32183,y:33422,varname:node_328,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:5289,x:32183,y:33543,varname:node_5289,prsc:2;n:type:ShaderForge.SFN_Distance,id:9462,x:32348,y:33491,varname:node_9462,prsc:2|A-328-XYZ,B-5289-XYZ;n:type:ShaderForge.SFN_Multiply,id:712,x:32322,y:33329,varname:node_712,prsc:2|A-9462-OUT,B-3120-OUT;n:type:ShaderForge.SFN_Slider,id:3120,x:32346,y:33647,ptovrint:False,ptlb:Range,ptin:_Range,varname:node_3120,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.1,cur:0,max:0.1;n:type:ShaderForge.SFN_OneMinus,id:162,x:32529,y:33363,varname:node_162,prsc:2|IN-712-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2698,x:31997,y:32977,ptovrint:False,ptlb:Inverted,ptin:_Inverted,varname:node_2698,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7657-OUT,B-2487-OUT;n:type:ShaderForge.SFN_SceneColor,id:20,x:31056,y:33007,varname:node_20,prsc:2|UVIN-7866-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:6520,x:31592,y:32842,varname:node_6520,prsc:2|IN-8685-OUT;n:type:ShaderForge.SFN_Color,id:4559,x:31098,y:32715,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:7657,x:31799,y:32816,ptovrint:False,ptlb:Color overlay,ptin:_Coloroverlay,varname:node_7657,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2652-OUT,B-9623-OUT;n:type:ShaderForge.SFN_Multiply,id:9623,x:31410,y:32719,varname:node_9623,prsc:2|A-4559-RGB,B-2216-OUT;n:type:ShaderForge.SFN_Slider,id:2216,x:31043,y:32588,ptovrint:False,ptlb:Color Strength,ptin:_ColorStrength,varname:node_2216,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9284,x:30884,y:32931,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_9284,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7113,x:31208,y:32817,varname:node_7113,prsc:2|A-4559-A,B-9284-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2652,x:31656,y:32496,ptovrint:False,ptlb:Desaturate,ptin:_Desaturate,varname:node_2652,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6327-OUT,B-2504-OUT;n:type:ShaderForge.SFN_Vector1,id:6327,x:31452,y:32352,varname:node_6327,prsc:2,v1:0;n:type:ShaderForge.SFN_ScreenPos,id:6864,x:31021,y:32361,varname:node_6864,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:5718,x:31266,y:32318,varname:node_5718,prsc:2|UVIN-6864-UVOUT;n:type:ShaderForge.SFN_Desaturate,id:2504,x:31473,y:32476,varname:node_2504,prsc:2|COL-5718-RGB,DES-1825-OUT;n:type:ShaderForge.SFN_Slider,id:1825,x:31172,y:32519,ptovrint:False,ptlb:Desaturation,ptin:_Desaturation,varname:node_1825,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Multiply,id:8685,x:31428,y:32867,varname:node_8685,prsc:2|A-20-RGB,B-5936-OUT;n:type:ShaderForge.SFN_Slider,id:5936,x:31288,y:33145,ptovrint:False,ptlb:Inversion Strength,ptin:_InversionStrength,varname:node_5936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:2487,x:31816,y:33019,varname:node_2487,prsc:2|A-6520-OUT,B-4266-OUT;n:type:ShaderForge.SFN_Slider,id:4266,x:31597,y:33150,ptovrint:False,ptlb:Inversion Fade,ptin:_InversionFade,varname:node_4266,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;proporder:3120-2698-4559-7657-2216-9284-2652-1825-5936-4266;pass:END;sub:END;*/

Shader "Bender's Shaders/Screen FX/Blackandwhite+inversion" {
    Properties {
        _Range ("Range", Range(-0.1, 0.1)) = 0
        [MaterialToggle] _Inverted ("Inverted", Float ) = 0
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        [MaterialToggle] _Coloroverlay ("Color overlay", Float ) = 0
        _ColorStrength ("Color Strength", Range(0, 1)) = 0
        _Opacity ("Opacity", Range(0, 1)) = 0
        [MaterialToggle] _Desaturate ("Desaturate", Float ) = 0
        _Desaturation ("Desaturation", Range(0, 2)) = 0
        _InversionStrength ("Inversion Strength", Range(-1, 10)) = 0
        _InversionFade ("Inversion Fade", Range(0, 10)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
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
            uniform float _Range;
            uniform fixed _Inverted;
            uniform float4 _Color;
            uniform fixed _Coloroverlay;
            uniform float _ColorStrength;
            uniform float _Opacity;
            uniform fixed _Desaturate;
            uniform float _Desaturation;
            uniform float _InversionStrength;
            uniform float _InversionFade;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                clip((1.0 - (distance(_WorldSpaceCameraPos,objPos.rgb)*_Range)) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = lerp( lerp( lerp( 0.0, lerp(tex2D( _GrabTexture, sceneUVs.rg).rgb,dot(tex2D( _GrabTexture, sceneUVs.rg).rgb,float3(0.3,0.59,0.11)),_Desaturation), _Desaturate ), (_Color.rgb*_ColorStrength), _Coloroverlay ), ((1.0 - (tex2D( _GrabTexture, sceneUVs.rg).rgb*_InversionStrength))*_InversionFade), _Inverted );
                float3 finalColor = emissive;
                return fixed4(finalColor,_Opacity);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
