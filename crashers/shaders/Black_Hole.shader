// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:4,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32567,y:32392,varname:node_3138,prsc:2|emission-5511-OUT;n:type:ShaderForge.SFN_NormalVector,id:6243,x:31017,y:32157,prsc:2,pt:False;n:type:ShaderForge.SFN_Negate,id:4201,x:31195,y:32157,varname:node_4201,prsc:2|IN-6243-OUT;n:type:ShaderForge.SFN_Transform,id:393,x:31378,y:32157,varname:node_393,prsc:2,tffrom:1,tfto:3|IN-4201-OUT;n:type:ShaderForge.SFN_ComponentMask,id:120,x:31551,y:32164,varname:node_120,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-393-XYZ;n:type:ShaderForge.SFN_Add,id:9882,x:31747,y:32273,varname:node_9882,prsc:2|A-9852-OUT,B-9856-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:9856,x:31523,y:32362,varname:node_9856,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:7250,x:32216,y:32441,varname:node_7250,prsc:2|UVIN-9822-OUT;n:type:ShaderForge.SFN_Multiply,id:9852,x:31747,y:32127,varname:node_9852,prsc:2|A-120-OUT,B-4613-OUT;n:type:ShaderForge.SFN_Fresnel,id:9172,x:31263,y:32647,varname:node_9172,prsc:2|EXP-647-OUT;n:type:ShaderForge.SFN_Slider,id:647,x:30934,y:32674,ptovrint:False,ptlb:Black Hole Strength,ptin:_BlackHoleStrength,varname:node_647,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.046587,max:10;n:type:ShaderForge.SFN_OneMinus,id:4446,x:31459,y:32647,varname:node_4446,prsc:2|IN-9172-OUT;n:type:ShaderForge.SFN_Power,id:4613,x:31639,y:32634,varname:node_4613,prsc:2|VAL-4446-OUT,EXP-6959-OUT;n:type:ShaderForge.SFN_Slider,id:6959,x:30999,y:32394,ptovrint:False,ptlb:Edge Strength,ptin:_EdgeStrength,varname:node_6959,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:11,max:11;n:type:ShaderForge.SFN_Multiply,id:2571,x:31476,y:32790,varname:node_2571,prsc:2|A-9172-OUT,B-7661-OUT;n:type:ShaderForge.SFN_Slider,id:7661,x:31097,y:32867,ptovrint:False,ptlb:Hole Size,ptin:_HoleSize,varname:node_7661,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:5.738202,max:10;n:type:ShaderForge.SFN_Round,id:5697,x:31654,y:32803,varname:node_5697,prsc:2|IN-2571-OUT;n:type:ShaderForge.SFN_Clamp01,id:493,x:31827,y:32803,varname:node_493,prsc:2|IN-5697-OUT;n:type:ShaderForge.SFN_Rotator,id:293,x:31942,y:32289,varname:node_293,prsc:2|UVIN-9882-OUT,SPD-5912-OUT;n:type:ShaderForge.SFN_Slider,id:5912,x:31785,y:32483,ptovrint:False,ptlb:Black Hole Rotation Speed,ptin:_BlackHoleRotationSpeed,varname:node_5912,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.1880342,max:1;n:type:ShaderForge.SFN_OneMinus,id:3961,x:31962,y:32819,varname:node_3961,prsc:2|IN-493-OUT;n:type:ShaderForge.SFN_Multiply,id:5511,x:32382,y:32592,varname:node_5511,prsc:2|A-7250-RGB,B-493-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9822,x:32105,y:32144,ptovrint:False,ptlb:Collapse? (broken ATM),ptin:_CollapsebrokenATM,varname:node_9822,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-293-UVOUT,B-1041-OUT;n:type:ShaderForge.SFN_Subtract,id:5179,x:31484,y:31791,varname:node_5179,prsc:2|A-8432-UVOUT,B-2682-OUT;n:type:ShaderForge.SFN_Divide,id:1230,x:31667,y:31854,varname:node_1230,prsc:2|A-5179-OUT,B-2682-OUT;n:type:ShaderForge.SFN_Vector1,id:2682,x:31571,y:32012,varname:node_2682,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Rotator,id:8432,x:31387,y:31883,varname:node_8432,prsc:2|UVIN-6534-UVOUT,ANG-2928-OUT;n:type:ShaderForge.SFN_Slider,id:6245,x:31080,y:31590,ptovrint:False,ptlb:Collapse Hardness,ptin:_CollapseHardness,varname:node_6245,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.096963,max:2.5;n:type:ShaderForge.SFN_Divide,id:4579,x:31530,y:31471,varname:node_4579,prsc:2|A-3708-OUT,B-5722-OUT;n:type:ShaderForge.SFN_Subtract,id:9307,x:31013,y:31475,varname:node_9307,prsc:2|A-6534-UVOUT,B-6781-OUT;n:type:ShaderForge.SFN_Vector1,id:6781,x:31169,y:31382,varname:node_6781,prsc:2,v1:0.54;n:type:ShaderForge.SFN_Subtract,id:3708,x:31290,y:31482,varname:node_3708,prsc:2|A-9307-OUT,B-6781-OUT;n:type:ShaderForge.SFN_Vector1,id:5722,x:31395,y:31402,varname:node_5722,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Abs,id:2800,x:31652,y:31355,varname:node_2800,prsc:2|IN-4579-OUT;n:type:ShaderForge.SFN_Length,id:3080,x:31791,y:31523,varname:node_3080,prsc:2|IN-2800-OUT;n:type:ShaderForge.SFN_OneMinus,id:9038,x:31982,y:31498,varname:node_9038,prsc:2|IN-3080-OUT;n:type:ShaderForge.SFN_Clamp01,id:2100,x:32165,y:31521,varname:node_2100,prsc:2|IN-9038-OUT;n:type:ShaderForge.SFN_Multiply,id:8088,x:31395,y:31563,varname:node_8088,prsc:2|A-2100-OUT,B-6245-OUT;n:type:ShaderForge.SFN_Add,id:2928,x:32035,y:31709,varname:node_2928,prsc:2|A-8088-OUT,B-203-OUT;n:type:ShaderForge.SFN_Time,id:2875,x:31237,y:31650,varname:node_2875,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4944,x:31417,y:31682,varname:node_4944,prsc:2|A-2875-T,B-3300-OUT;n:type:ShaderForge.SFN_Slider,id:3300,x:31013,y:31706,ptovrint:False,ptlb:Spin Speed,ptin:_SpinSpeed,varname:node_3300,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-0.005422214,max:1;n:type:ShaderForge.SFN_Frac,id:4317,x:31619,y:31662,varname:node_4317,prsc:2|IN-4944-OUT;n:type:ShaderForge.SFN_Multiply,id:203,x:31837,y:31675,varname:node_203,prsc:2|A-4317-OUT,B-323-OUT;n:type:ShaderForge.SFN_Tau,id:323,x:31739,y:31739,varname:node_323,prsc:2;n:type:ShaderForge.SFN_Abs,id:3686,x:31880,y:31910,varname:node_3686,prsc:2|IN-1230-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9167,x:32213,y:31924,varname:node_9167,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9128-XYZ;n:type:ShaderForge.SFN_ArcTan2,id:6929,x:32411,y:31910,varname:node_6929,prsc:2,attp:0|A-9167-G,B-9167-R;n:type:ShaderForge.SFN_Multiply,id:3719,x:32609,y:31934,varname:node_3719,prsc:2|A-6929-OUT,B-4204-OUT;n:type:ShaderForge.SFN_Slider,id:4204,x:32421,y:32094,ptovrint:False,ptlb:Spoke amount x2,ptin:_Spokeamountx2,varname:node_4204,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.220156,max:4;n:type:ShaderForge.SFN_Frac,id:9495,x:32351,y:32226,varname:node_9495,prsc:2|IN-3719-OUT;n:type:ShaderForge.SFN_Clamp01,id:5230,x:32527,y:32226,varname:node_5230,prsc:2|IN-9495-OUT;n:type:ShaderForge.SFN_OneMinus,id:8697,x:32716,y:32226,varname:node_8697,prsc:2|IN-5230-OUT;n:type:ShaderForge.SFN_Multiply,id:5024,x:30784,y:31954,varname:node_5024,prsc:2|A-8697-OUT,B-2100-OUT;n:type:ShaderForge.SFN_Add,id:1755,x:30983,y:31975,varname:node_1755,prsc:2|A-8776-OUT,B-5024-OUT;n:type:ShaderForge.SFN_Power,id:8776,x:30784,y:31775,varname:node_8776,prsc:2|VAL-2100-OUT,EXP-747-OUT;n:type:ShaderForge.SFN_Slider,id:747,x:30435,y:31714,ptovrint:False,ptlb:Center Power,ptin:_CenterPower,varname:node_747,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1.65263,max:6;n:type:ShaderForge.SFN_Clamp01,id:1041,x:31288,y:31986,varname:node_1041,prsc:2|IN-1755-OUT;n:type:ShaderForge.SFN_Vector1,id:9390,x:32208,y:31193,varname:node_9390,prsc:2,v1:4;n:type:ShaderForge.SFN_TexCoord,id:6534,x:30548,y:31393,varname:node_6534,prsc:2,uv:0,uaff:True;n:type:ShaderForge.SFN_Transform,id:9128,x:32033,y:31961,varname:node_9128,prsc:2,tffrom:1,tfto:3|IN-6739-OUT;n:type:ShaderForge.SFN_Append,id:6739,x:31949,y:31833,varname:node_6739,prsc:2|A-3686-OUT,B-6534-Z;proporder:647-6959-7661-5912-9822-6245-3300-4204-747;pass:END;sub:END;*/

Shader "Custom/Misc/Black Hole (Advance)" {
    Properties {
        _BlackHoleStrength ("Black Hole Strength", Range(0, 10)) = 2.046587
        _EdgeStrength ("Edge Strength", Range(0, 11)) = 11
        _HoleSize ("Hole Size", Range(1, 10)) = 5.738202
        _BlackHoleRotationSpeed ("Black Hole Rotation Speed", Range(-1, 1)) = 0.1880342
        [MaterialToggle] _CollapsebrokenATM ("Collapse? (broken ATM)", Float ) = 0
        _CollapseHardness ("Collapse Hardness", Range(0, 2.5)) = 2.096963
        _SpinSpeed ("Spin Speed", Range(-1, 1)) = -0.005422214
        _Spokeamountx2 ("Spoke amount x2", Range(0, 4)) = 1.220156
        _CenterPower ("Center Power", Range(1, 6)) = 1.65263
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay"
            "RenderType"="Opaque"
        }
        GrabPass{ }
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
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _BlackHoleStrength;
            uniform float _EdgeStrength;
            uniform float _HoleSize;
            uniform float _BlackHoleRotationSpeed;
            uniform fixed _CollapsebrokenATM;
            uniform float _CollapseHardness;
            uniform float _SpinSpeed;
            uniform float _Spokeamountx2;
            uniform float _CenterPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float4 node_7963 = _Time;
                float node_293_ang = node_7963.g;
                float node_293_spd = _BlackHoleRotationSpeed;
                float node_293_cos = cos(node_293_spd*node_293_ang);
                float node_293_sin = sin(node_293_spd*node_293_ang);
                float2 node_293_piv = float2(0.5,0.5);
                float node_9172 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_BlackHoleStrength);
                float2 node_293 = (mul(((UnityObjectToViewPos( float4((-1*i.normalDir),0) ).xyz.rgb.rg*pow((1.0 - node_9172),_EdgeStrength))+sceneUVs.rg)-node_293_piv,float2x2( node_293_cos, -node_293_sin, node_293_sin, node_293_cos))+node_293_piv);
                float node_6781 = 0.54;
                float node_2100 = saturate((1.0 - length(abs((((i.uv0-node_6781)-node_6781)/0.75)))));
                float4 node_2875 = _Time;
                float node_8432_ang = ((node_2100*_CollapseHardness)+(frac((node_2875.g*_SpinSpeed))*6.28318530718));
                float node_8432_spd = 1.0;
                float node_8432_cos = cos(node_8432_spd*node_8432_ang);
                float node_8432_sin = sin(node_8432_spd*node_8432_ang);
                float2 node_8432_piv = float2(0.5,0.5);
                float2 node_8432 = (mul(i.uv0-node_8432_piv,float2x2( node_8432_cos, -node_8432_sin, node_8432_sin, node_8432_cos))+node_8432_piv);
                float node_2682 = 0.7;
                float2 node_9167 = UnityObjectToViewPos( float4(float3(abs(((node_8432-node_2682)/node_2682)),i.uv0.b),0) ).xyz.rgb.rg;
                float node_493 = saturate(round((node_9172*_HoleSize)));
                float3 emissive = (tex2D( _GrabTexture, lerp( node_293, saturate((pow(node_2100,_CenterPower)+((1.0 - saturate(frac((atan2(node_9167.g,node_9167.r)*_Spokeamountx2))))*node_2100))), _CollapsebrokenATM )).rgb*node_493);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
