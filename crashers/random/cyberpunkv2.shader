// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33267,y:32658,varname:node_4013,prsc:2|custl-9724-OUT,clip-3486-A;n:type:ShaderForge.SFN_Tex2d,id:3486,x:31956,y:32600,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_3486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ab0d80d116b791f439da676e04b08905,ntxv:0,isnm:False;n:type:ShaderForge.SFN_LightColor,id:1580,x:31392,y:33350,varname:node_1580,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:3681,x:31392,y:33483,varname:node_3681,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:1156,x:31952,y:32413,ptovrint:False,ptlb:Overlay Map,ptin:_OverlayMap,varname:node_1156,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:63ece1ab5527a3d41b84e23bea78db9b,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4378,x:32320,y:32798,varname:node_4378,prsc:2|A-3486-RGB,B-8752-RGB;n:type:ShaderForge.SFN_Color,id:2361,x:31636,y:32234,ptovrint:False,ptlb:Overlay Tint,ptin:_OverlayTint,varname:node_2361,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2033953,c2:0.6194143,c3:0.7279412,c4:1;n:type:ShaderForge.SFN_Color,id:8752,x:31956,y:32786,ptovrint:False,ptlb:Tint Color,ptin:_TintColor,varname:node_8752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_If,id:9724,x:32904,y:32841,varname:node_9724,prsc:2|A-1156-A,B-9604-OUT,GT-4323-OUT,EQ-6486-OUT,LT-6486-OUT;n:type:ShaderForge.SFN_Vector1,id:9604,x:32719,y:32861,varname:node_9604,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Time,id:9567,x:31952,y:31861,varname:node_9567,prsc:2;n:type:ShaderForge.SFN_Add,id:9248,x:32171,y:32073,varname:node_9248,prsc:2|A-5879-OUT,B-3655-R;n:type:ShaderForge.SFN_Relay,id:4323,x:32778,y:32802,varname:node_4323,prsc:2|IN-629-OUT;n:type:ShaderForge.SFN_Multiply,id:6776,x:32171,y:32268,varname:node_6776,prsc:2|A-9811-OUT,B-4556-OUT;n:type:ShaderForge.SFN_Fmod,id:8076,x:32376,y:32073,varname:node_8076,prsc:2|A-9248-OUT,B-556-OUT;n:type:ShaderForge.SFN_OneMinus,id:4556,x:32625,y:32073,varname:node_4556,prsc:2|IN-8076-OUT;n:type:ShaderForge.SFN_Multiply,id:5879,x:32171,y:31917,varname:node_5879,prsc:2|A-9567-T,B-9763-OUT;n:type:ShaderForge.SFN_Tex2d,id:3655,x:31952,y:32073,ptovrint:False,ptlb:Movement Map,ptin:_MovementMap,varname:node_3655,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ae70c7162015bf349a969b21bf0c41dc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:9763,x:31952,y:31995,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_9763,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.6;n:type:ShaderForge.SFN_ValueProperty,id:556,x:32376,y:32241,ptovrint:False,ptlb:Frequency,ptin:_Frequency,varname:node_556,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.5;n:type:ShaderForge.SFN_Tex2d,id:7854,x:31636,y:32411,ptovrint:False,ptlb:Overlay Texture,ptin:_OverlayTexture,varname:node_7854,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9811,x:31865,y:32244,varname:node_9811,prsc:2|A-2361-RGB,B-7854-RGB;n:type:ShaderForge.SFN_Desaturate,id:9675,x:32171,y:32413,varname:node_9675,prsc:2|COL-6776-OUT;n:type:ShaderForge.SFN_Tex2d,id:6422,x:32390,y:32453,ptovrint:False,ptlb:Overlay Background,ptin:_OverlayBackground,varname:node_6422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:629,x:32832,y:32295,varname:node_629,prsc:2|A-7663-OUT,B-7046-OUT;n:type:ShaderForge.SFN_Append,id:7046,x:32530,y:32307,varname:node_7046,prsc:2|A-6776-OUT,B-9675-OUT;n:type:ShaderForge.SFN_Append,id:7663,x:32759,y:32455,varname:node_7663,prsc:2|A-8253-OUT,B-6422-A;n:type:ShaderForge.SFN_Color,id:5038,x:32390,y:32643,ptovrint:False,ptlb:Overlay Background Tint,ptin:_OverlayBackgroundTint,varname:node_5038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:8253,x:32588,y:32519,varname:node_8253,prsc:2|A-6422-RGB,B-5038-RGB;n:type:ShaderForge.SFN_Code,id:6486,x:31918,y:33307,varname:node_6486,prsc:2,code:ZgBsAG8AYQB0ADMAIABnAHIAYQB5AHMAYwBhAGwAZQBfAHYAZQBjAHQAbwByACAAPQAgAGYAbABvAGEAdAAzACgAMAAsACAAMAAuADMAOAAyADMANQAyADkALAAgADAALgAwADEAOAA0ADUAOAAzADYAKQA7AAoAZgBsAG8AYQB0ADMAIABsAGkAZwBoAHQARABpAHIAZQBjAHQAaQBvAG4AIAA9ACAAbgBvAHIAbQBhAGwAaQB6AGUAKABfAFcAbwByAGwAZABTAHAAYQBjAGUATABpAGcAaAB0AFAAbwBzADAALgB4AHkAegApADsACgAKAGYAbABvAGEAdAAgAGcAcgBhAHkAcwBjAGEAbABlAGwAaQBnAGgAdABjAG8AbABvAHIAIAA9ACAAZABvAHQAKABsAGkAZwBoAHQALAAgAGcAcgBhAHkAcwBjAGEAbABlAF8AdgBlAGMAdABvAHIAKQA7AA0ACgBmAGwAbwBhAHQAIABiAG8AdAB0AG8AbQBJAG4AZABpAHIAZQBjAHQATABpAGcAaAB0AGkAbgBnACAAPQAgAA0AZABvAHQAKABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKABmAGwAbwBhAHQAMwAoADAALgAwACwAIAAtADEALgAwACwAIAAwAC4AMAApACwAIAAxAC4AMAApACkALAAgAGcAcgBhAHkAcwBjAGEAbABlAF8AdgBlAGMAdABvAHIAKQA7AAoAZgBsAG8AYQB0ACAAdABvAHAASQBuAGQAaQByAGUAYwB0AEwAaQBnAGgAdABpAG4AZwAgAD0AIAANAGQAbwB0ACgAUwBoAGEAZABlAFMASAA5ACgAaABhAGwAZgA0ACgAZgBsAG8AYQB0ADMAKAAwAC4AMAAsACAAMQAuADAALAAgADAALgAwACkALAAgADEALgAwACkAKQAsACAAZwByAGEAeQBzAGMAYQBsAGUAXwB2AGUAYwB0AG8AcgApADsACgBmAGwAbwBhAHQAIABnAHIAYQB5AHMAYwBhAGwAZQBEAGkAcgBlAGMAdABMAGkAZwBoAHQAaQBuAGcAIAA9ACAAZABvAHQAKABsAGkAZwBoAHQARABpAHIAZQBjAHQAaQBvAG4ALAAgAG4AbwByAG0AYQBsAEQAaQByAGUAYwB0AGkAbwBuACkAKgBnAHIAYQB5AHMAYwBhAGwAZQBsAGkAZwBoAHQAYwBvAGwAbwByACoAYQB0AHQAZQBuAHUAYQB0AGkAbwBuACAAKwAgAGQAbwB0ACgAUwBoAGEAZABlAFMASAA5ACgAaABhAGwAZgA0ACgAbgBvAHIAbQBhAGwARABpAHIAZQBjAHQAaQBvAG4ALAAgADEALgAwACkAKQAsACAAZwByAGEAeQBzAGMAYQBsAGUAXwB2AGUAYwB0AG8AcgApADsACgANAAoAZgBsAG8AYQB0ACAAbABpAGcAaAB0AEQAaQBmAGYAZQByAGUAbgBjAGUAIAA9ACAAdABvAHAASQBuAGQAaQByAGUAYwB0AEwAaQBnAGgAdABpAG4AZwAgACsAIABnAHIAYQB5AHMAYwBhAGwAZQBsAGkAZwBoAHQAYwBvAGwAbwByACAALQAgAGIAbwB0AHQAbwBtAEkAbgBkAGkAcgBlAGMAdABMAGkAZwBoAHQAaQBuAGcAOwANAAoAZgBsAG8AYQB0ACAAcgBlAG0AYQBwAHAAZQBkAEwAaQBnAGgAdAAgAD0AIAAoAGcAcgBhAHkAcwBjAGEAbABlAEQAaQByAGUAYwB0AEwAaQBnAGgAdABpAG4AZwAgAC0AIABiAG8AdAB0AG8AbQBJAG4AZABpAHIAZQBjAHQATABpAGcAaAB0AGkAbgBnACkAIAAvACAAbABpAGcAaAB0AEQAaQBmAGYAZQByAGUAbgBjAGUAOwAKAAoAZgBsAG8AYQB0ADMAIAByAGUAZgBsAGUAYwB0AGkAbwBuAE0AYQBwACAAPQAgAEQAZQBjAG8AZABlAEgARABSACgAVQBOAEkAVABZAF8AUwBBAE0AUABMAEUAXwBUAEUAWABDAFUAQgBFAF8ATABPAEQAKAB1AG4AaQB0AHkAXwBTAHAAZQBjAEMAdQBiAGUAMAAsACAAdgBlAGMAdAAsACAANwApACwAIAB1AG4AaQB0AHkAXwBTAHAAZQBjAEMAdQBiAGUAMABfAEgARABSACkAKgAgADAALgAwADIAOwAKAAoAZgBsAG8AYQB0ADMAIABpAG4AZABpAHIAZQBjAHQATABpAGcAaAB0AGkAbgBnACAAPQAgAHMAYQB0AHUAcgBhAHQAZQAoACgAUwBoAGEAZABlAFMASAA5ACgAaABhAGwAZgA0ACgAMAAuADAALAAgAC0AMQAuADAALAAgADAALgAwACwAIAAxAC4AMAApACkAIAArACAAcgBlAGYAbABlAGMAdABpAG8AbgBNAGEAcAApACkAOwANAAoAZgBsAG8AYQB0ADMAIABkAGkAcgBlAGMAdABMAGkAZwBoAHQAaQBuAGcAIAA9ACAAcwBhAHQAdQByAGEAdABlACgAKABTAGgAYQBkAGUAUwBIADkAKABoAGEAbABmADQAKAAwAC4AMAAsACAAMQAuADAALAAgADAALgAwACwAIAAxAC4AMAApACkAIAArACAAcgBlAGYAbABlAGMAdABpAG8AbgBNAGEAcAAgACsAIABsAGkAZwBoAHQAKQApADsADQAKAGYAbABvAGEAdAAzACAAZABpAHIAZQBjAHQAQwBvAG4AdAByAGkAYgB1AHQAaQBvAG4AIAA9ACAAcwBhAHQAdQByAGEAdABlACgAKAAxAC4AMAAgAC0AIABzAGgAYQBkAG8AdwApACAAKwAgAGYAbABvAG8AcgAoAHMAYQB0AHUAcgBhAHQAZQAoAHIAZQBtAGEAcABwAGUAZABMAGkAZwBoAHQAKQAgACoAIAAyAC4AMAApACkAOwANAAoAZgBsAG8AYQB0ADMAIABmAGkAbgBhAGwAQwBvAGwAbwByACAAPQAgAGUAbQBpAHMAcwBpAHYAZQAgACsAIAAoAGIAYQBzAGUAQwBvAGwAbwByACAAKgAgAGwAZQByAHAAKABpAG4AZABpAHIAZQBjAHQATABpAGcAaAB0AGkAbgBnACwAIABkAGkAcgBlAGMAdABMAGkAZwBoAHQAaQBuAGcALAAgAGQAaQByAGUAYwB0AEMAbwBuAHQAcgBpAGIAdQB0AGkAbwBuACkAKQA7AA0ACgBmAGkAeABlAGQANAAgAGYAaQBuAGEAbABSAEcAQgBBACAAPQAgAGYAaQB4AGUAZAA0ACgAZgBpAG4AYQBsAEMAbwBsAG8AcgAsACAAMQApADsACgByAGUAdAB1AHIAbgAgAGYAaQBuAGEAbABSAEcAQgBBADsA,output:3,fname:Function_node_1112,width:1189,height:308,input:2,input:2,input:0,input:2,input:2,input:0,input:2,input_1_label:vect,input_2_label:light,input_3_label:shadow,input_4_label:emissive,input_5_label:baseColor,input_6_label:attenuation,input_7_label:normalDirection|A-4998-OUT,B-1580-RGB,C-824-OUT,D-4370-OUT,E-4378-OUT,F-3681-OUT,G-6943-OUT;n:type:ShaderForge.SFN_ViewPosition,id:2006,x:31148,y:33143,varname:node_2006,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:4498,x:31148,y:33284,varname:node_4498,prsc:2;n:type:ShaderForge.SFN_Subtract,id:9197,x:31366,y:33213,varname:node_9197,prsc:2|A-2006-XYZ,B-4498-XYZ;n:type:ShaderForge.SFN_Normalize,id:4998,x:31584,y:33213,varname:node_4998,prsc:2|IN-9197-OUT;n:type:ShaderForge.SFN_Vector3,id:4370,x:31612,y:33448,varname:node_4370,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_ValueProperty,id:824,x:31619,y:33386,ptovrint:False,ptlb:Shadow,ptin:_Shadow,varname:node_824,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.4;n:type:ShaderForge.SFN_NormalVector,id:6943,x:31646,y:33528,prsc:2,pt:True;proporder:3486-8752-7854-2361-6422-5038-1156-3655-9763-556-824;pass:END;sub:END;*/

Shader "Shader Forge/cyberpunkv2" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _TintColor ("Tint Color", Color) = (1,1,1,1)
        _OverlayTexture ("Overlay Texture", 2D) = "white" {}
        _OverlayTint ("Overlay Tint", Color) = (0.2033953,0.6194143,0.7279412,1)
        _OverlayBackground ("Overlay Background", 2D) = "white" {}
        _OverlayBackgroundTint ("Overlay Background Tint", Color) = (0,0,0,1)
        _OverlayMap ("Overlay Map", 2D) = "black" {}
        _MovementMap ("Movement Map", 2D) = "white" {}
        _Speed ("Speed", Float ) = 0.6
        _Frequency ("Frequency", Float ) = 1.5
        _Shadow ("Shadow", Float ) = 0.4
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform sampler2D _OverlayMap; uniform float4 _OverlayMap_ST;
            uniform float4 _OverlayTint;
            uniform float4 _TintColor;
            uniform sampler2D _MovementMap; uniform float4 _MovementMap_ST;
            uniform float _Speed;
            uniform float _Frequency;
            uniform sampler2D _OverlayTexture; uniform float4 _OverlayTexture_ST;
            uniform sampler2D _OverlayBackground; uniform float4 _OverlayBackground_ST;
            uniform float4 _OverlayBackgroundTint;
            float4 Function_node_1112( float3 vect , float3 light , float shadow , float3 emissive , float3 baseColor , float attenuation , float3 normalDirection ){
            float3 grayscale_vector = float3(0, 0.3823529, 0.01845836);
            float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
            
            float grayscalelightcolor = dot(light, grayscale_vector);
            float bottomIndirectLighting = dot(ShadeSH9(half4(float3(0.0, -1.0, 0.0), 1.0)), grayscale_vector);
            float topIndirectLighting = dot(ShadeSH9(half4(float3(0.0, 1.0, 0.0), 1.0)), grayscale_vector);
            float grayscaleDirectLighting = dot(lightDirection, normalDirection)*grayscalelightcolor*attenuation + dot(ShadeSH9(half4(normalDirection, 1.0)), grayscale_vector);
            
            float lightDifference = topIndirectLighting + grayscalelightcolor - bottomIndirectLighting;
            float remappedLight = (grayscaleDirectLighting - bottomIndirectLighting) / lightDifference;
            
            float3 reflectionMap = DecodeHDR(UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, vect, 7), unity_SpecCube0_HDR)* 0.02;
            
            float3 indirectLighting = saturate((ShadeSH9(half4(0.0, -1.0, 0.0, 1.0)) + reflectionMap));
            float3 directLighting = saturate((ShadeSH9(half4(0.0, 1.0, 0.0, 1.0)) + reflectionMap + light));
            float3 directContribution = saturate((1.0 - shadow) + floor(saturate(remappedLight) * 2.0));
            float3 finalColor = emissive + (baseColor * lerp(indirectLighting, directLighting, directContribution));
            fixed4 finalRGBA = fixed4(finalColor, 1);
            return finalRGBA;
            }
            
            uniform float _Shadow;
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
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                clip(_Texture_var.a - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _OverlayMap_var = tex2D(_OverlayMap,TRANSFORM_TEX(i.uv0, _OverlayMap));
                float node_9724_if_leA = step(_OverlayMap_var.a,0.5);
                float node_9724_if_leB = step(0.5,_OverlayMap_var.a);
                float4 node_6486 = Function_node_1112( normalize((_WorldSpaceCameraPos-objPos.rgb)) , _LightColor0.rgb , _Shadow , float3(0,0,0) , (_Texture_var.rgb*_TintColor.rgb) , attenuation , normalDirection );
                float4 _OverlayBackground_var = tex2D(_OverlayBackground,TRANSFORM_TEX(i.uv0, _OverlayBackground));
                float4 _OverlayTexture_var = tex2D(_OverlayTexture,TRANSFORM_TEX(i.uv0, _OverlayTexture));
                float4 node_9567 = _Time + _TimeEditor;
                float4 _MovementMap_var = tex2D(_MovementMap,TRANSFORM_TEX(i.uv0, _MovementMap));
                float3 node_6776 = ((_OverlayTint.rgb*_OverlayTexture_var.rgb)*(1.0 - fmod(((node_9567.g*_Speed)+_MovementMap_var.r),_Frequency)));
                float3 finalColor = lerp((node_9724_if_leA*node_6486)+(node_9724_if_leB*(float4((_OverlayBackground_var.rgb*_OverlayBackgroundTint.rgb),_OverlayBackground_var.a)+float4(node_6776,dot(node_6776,float3(0.3,0.59,0.11))))),node_6486,node_9724_if_leA*node_9724_if_leB).rgb;
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
            uniform sampler2D _OverlayMap; uniform float4 _OverlayMap_ST;
            uniform float4 _OverlayTint;
            uniform float4 _TintColor;
            uniform sampler2D _MovementMap; uniform float4 _MovementMap_ST;
            uniform float _Speed;
            uniform float _Frequency;
            uniform sampler2D _OverlayTexture; uniform float4 _OverlayTexture_ST;
            uniform sampler2D _OverlayBackground; uniform float4 _OverlayBackground_ST;
            uniform float4 _OverlayBackgroundTint;
            float4 Function_node_1112( float3 vect , float3 light , float shadow , float3 emissive , float3 baseColor , float attenuation , float3 normalDirection ){
            float3 grayscale_vector = float3(0, 0.3823529, 0.01845836);
            float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
            
            float grayscalelightcolor = dot(light, grayscale_vector);
            float bottomIndirectLighting = dot(ShadeSH9(half4(float3(0.0, -1.0, 0.0), 1.0)), grayscale_vector);
            float topIndirectLighting = dot(ShadeSH9(half4(float3(0.0, 1.0, 0.0), 1.0)), grayscale_vector);
            float grayscaleDirectLighting = dot(lightDirection, normalDirection)*grayscalelightcolor*attenuation + dot(ShadeSH9(half4(normalDirection, 1.0)), grayscale_vector);
            
            float lightDifference = topIndirectLighting + grayscalelightcolor - bottomIndirectLighting;
            float remappedLight = (grayscaleDirectLighting - bottomIndirectLighting) / lightDifference;
            
            float3 reflectionMap = DecodeHDR(UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, vect, 7), unity_SpecCube0_HDR)* 0.02;
            
            float3 indirectLighting = saturate((ShadeSH9(half4(0.0, -1.0, 0.0, 1.0)) + reflectionMap));
            float3 directLighting = saturate((ShadeSH9(half4(0.0, 1.0, 0.0, 1.0)) + reflectionMap + light));
            float3 directContribution = saturate((1.0 - shadow) + floor(saturate(remappedLight) * 2.0));
            float3 finalColor = emissive + (baseColor * lerp(indirectLighting, directLighting, directContribution));
            fixed4 finalRGBA = fixed4(finalColor, 1);
            return finalRGBA;
            }
            
            uniform float _Shadow;
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
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                clip(_Texture_var.a - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _OverlayMap_var = tex2D(_OverlayMap,TRANSFORM_TEX(i.uv0, _OverlayMap));
                float node_9724_if_leA = step(_OverlayMap_var.a,0.5);
                float node_9724_if_leB = step(0.5,_OverlayMap_var.a);
                float4 node_6486 = Function_node_1112( normalize((_WorldSpaceCameraPos-objPos.rgb)) , _LightColor0.rgb , _Shadow , float3(0,0,0) , (_Texture_var.rgb*_TintColor.rgb) , attenuation , normalDirection );
                float4 _OverlayBackground_var = tex2D(_OverlayBackground,TRANSFORM_TEX(i.uv0, _OverlayBackground));
                float4 _OverlayTexture_var = tex2D(_OverlayTexture,TRANSFORM_TEX(i.uv0, _OverlayTexture));
                float4 node_9567 = _Time + _TimeEditor;
                float4 _MovementMap_var = tex2D(_MovementMap,TRANSFORM_TEX(i.uv0, _MovementMap));
                float3 node_6776 = ((_OverlayTint.rgb*_OverlayTexture_var.rgb)*(1.0 - fmod(((node_9567.g*_Speed)+_MovementMap_var.r),_Frequency)));
                float3 finalColor = lerp((node_9724_if_leA*node_6486)+(node_9724_if_leB*(float4((_OverlayBackground_var.rgb*_OverlayBackgroundTint.rgb),_OverlayBackground_var.a)+float4(node_6776,dot(node_6776,float3(0.3,0.59,0.11))))),node_6486,node_9724_if_leA*node_9724_if_leB).rgb;
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                clip(_Texture_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
