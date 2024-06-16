// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|custl-7182-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9091,x:32043,y:32778,varname:node_9091,prsc:2,sctp:2;n:type:ShaderForge.SFN_Slider,id:2994,x:31435,y:32846,ptovrint:False,ptlb:Copy Strength,ptin:_CopyStrength,varname:node_2994,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Set,id:749,x:32489,y:32914,varname:Screenpos,prsc:2|IN-9091-UVOUT;n:type:ShaderForge.SFN_Set,id:7458,x:31917,y:32867,varname:Copy,prsc:2|IN-6911-OUT;n:type:ShaderForge.SFN_Set,id:5008,x:32507,y:32969,varname:Screenu,prsc:2|IN-9091-U;n:type:ShaderForge.SFN_Set,id:9210,x:32489,y:33028,varname:Screenv,prsc:2|IN-9091-V;n:type:ShaderForge.SFN_Get,id:8133,x:31743,y:33451,varname:node_8133,prsc:2|IN-9210-OUT;n:type:ShaderForge.SFN_Get,id:2875,x:31600,y:33503,varname:node_2875,prsc:2|IN-5008-OUT;n:type:ShaderForge.SFN_Get,id:6822,x:31600,y:33566,varname:node_6822,prsc:2|IN-7458-OUT;n:type:ShaderForge.SFN_Add,id:5441,x:31764,y:33530,varname:node_5441,prsc:2|A-2875-OUT,B-6822-OUT;n:type:ShaderForge.SFN_Append,id:8057,x:31935,y:33498,varname:node_8057,prsc:2|A-5441-OUT,B-8133-OUT;n:type:ShaderForge.SFN_SceneColor,id:3135,x:32107,y:33498,varname:node_3135,prsc:2|UVIN-8057-OUT;n:type:ShaderForge.SFN_SceneColor,id:3623,x:31730,y:33065,varname:node_3623,prsc:2|UVIN-2177-OUT;n:type:ShaderForge.SFN_Add,id:4096,x:32281,y:33414,varname:node_4096,prsc:2|A-4761-OUT,B-3135-RGB,C-8459-RGB,D-466-RGB;n:type:ShaderForge.SFN_Divide,id:7182,x:32453,y:33430,varname:node_7182,prsc:2|A-4096-OUT,B-3810-OUT;n:type:ShaderForge.SFN_Vector1,id:3810,x:32380,y:33591,varname:node_3810,prsc:2,v1:6;n:type:ShaderForge.SFN_Get,id:2177,x:31471,y:33192,varname:node_2177,prsc:2|IN-749-OUT;n:type:ShaderForge.SFN_Get,id:3380,x:31743,y:33654,varname:node_3380,prsc:2|IN-9210-OUT;n:type:ShaderForge.SFN_Get,id:6996,x:31583,y:33693,varname:node_6996,prsc:2|IN-5008-OUT;n:type:ShaderForge.SFN_Get,id:4183,x:31483,y:33754,varname:node_4183,prsc:2|IN-7458-OUT;n:type:ShaderForge.SFN_SceneColor,id:8459,x:32107,y:33694,varname:node_8459,prsc:2|UVIN-2467-OUT;n:type:ShaderForge.SFN_Append,id:2467,x:31935,y:33694,varname:node_2467,prsc:2|A-4018-OUT,B-3380-OUT;n:type:ShaderForge.SFN_Get,id:4338,x:31476,y:33266,varname:node_4338,prsc:2|IN-749-OUT;n:type:ShaderForge.SFN_Get,id:4071,x:31470,y:33325,varname:node_4071,prsc:2|IN-749-OUT;n:type:ShaderForge.SFN_SceneColor,id:6896,x:31743,y:33181,varname:node_6896,prsc:2|UVIN-4338-OUT;n:type:ShaderForge.SFN_SceneColor,id:3627,x:31743,y:33294,varname:node_3627,prsc:2|UVIN-4071-OUT;n:type:ShaderForge.SFN_Add,id:4761,x:31921,y:33156,varname:node_4761,prsc:2|A-3623-RGB,B-6896-RGB,C-3627-RGB;n:type:ShaderForge.SFN_FragmentPosition,id:6244,x:31362,y:32902,varname:node_6244,prsc:2;n:type:ShaderForge.SFN_Distance,id:6854,x:31552,y:32921,varname:node_6854,prsc:2|A-6244-XYZ,B-4595-XYZ;n:type:ShaderForge.SFN_ViewPosition,id:4595,x:31351,y:33024,varname:node_4595,prsc:2;n:type:ShaderForge.SFN_Divide,id:6911,x:31758,y:32896,varname:node_6911,prsc:2|A-2994-OUT,B-6854-OUT;n:type:ShaderForge.SFN_Add,id:4018,x:31761,y:33702,varname:node_4018,prsc:2|A-6996-OUT,B-7396-OUT;n:type:ShaderForge.SFN_Divide,id:7396,x:31583,y:33818,varname:node_7396,prsc:2|A-4183-OUT,B-348-OUT;n:type:ShaderForge.SFN_Vector1,id:348,x:31402,y:33852,varname:node_348,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Get,id:3700,x:31760,y:33921,varname:node_3700,prsc:2|IN-9210-OUT;n:type:ShaderForge.SFN_Get,id:607,x:31562,y:34002,varname:node_607,prsc:2|IN-5008-OUT;n:type:ShaderForge.SFN_Get,id:1167,x:31429,y:34144,varname:node_1167,prsc:2|IN-7458-OUT;n:type:ShaderForge.SFN_Vector1,id:336,x:31414,y:34222,varname:node_336,prsc:2,v1:3;n:type:ShaderForge.SFN_Add,id:4549,x:31764,y:34002,varname:node_4549,prsc:2|A-607-OUT,B-266-OUT;n:type:ShaderForge.SFN_Append,id:2480,x:31925,y:34022,varname:node_2480,prsc:2|A-4549-OUT,B-3700-OUT;n:type:ShaderForge.SFN_SceneColor,id:466,x:32082,y:34022,varname:node_466,prsc:2|UVIN-2480-OUT;n:type:ShaderForge.SFN_Divide,id:266,x:31610,y:34165,varname:node_266,prsc:2|A-1167-OUT,B-336-OUT;proporder:2994;pass:END;sub:END;*/

Shader "Bender's Shaders/Screen FX/Afterimage" {
    Properties {
        _CopyStrength ("Copy Strength", Range(0, 10)) = 0
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
            uniform float _CopyStrength;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
                float2 Screenpos = sceneUVs.rg;
                float Screenu = sceneUVs.r;
                float Copy = (_CopyStrength/distance(i.posWorld.rgb,_WorldSpaceCameraPos));
                float Screenv = sceneUVs.g;
                float3 finalColor = (((tex2D( _GrabTexture, Screenpos).rgb+tex2D( _GrabTexture, Screenpos).rgb+tex2D( _GrabTexture, Screenpos).rgb)+tex2D( _GrabTexture, float2((Screenu+Copy),Screenv)).rgb+tex2D( _GrabTexture, float2((Screenu+(Copy/1.5)),Screenv)).rgb+tex2D( _GrabTexture, float2((Screenu+(Copy/3.0)),Screenv)).rgb)/6.0);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
