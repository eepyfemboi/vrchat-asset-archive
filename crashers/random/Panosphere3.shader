// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9918864,fgcg:0.9632353,fgcb:1,fgca:1,fgde:0.002,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33296,y:32216,varname:node_3138,prsc:2|emission-857-RGB;n:type:ShaderForge.SFN_ViewVector,id:9763,x:30999,y:32362,varname:node_9763,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6020,x:31199,y:32383,varname:node_6020,prsc:2|A-9763-OUT,B-9888-OUT;n:type:ShaderForge.SFN_Vector1,id:9888,x:30999,y:32508,varname:node_9888,prsc:2,v1:-1;n:type:ShaderForge.SFN_Tex2d,id:857,x:33018,y:32384,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2928-OUT;n:type:ShaderForge.SFN_Code,id:778,x:31388,y:32408,varname:node_778,prsc:2,code:ZgBsAG8AYQB0ADMAIABuAG8AcgBtAGEAbABpAHoAZQBkAEMAbwBvAHIAZABzACAAPQAgAG4AbwByAG0AYQBsAGkAegBlACgAYwBvAG8AcgBkAHMAKQA7AA0ACgBmAGwAbwBhAHQAIABsAGEAdABpAHQAdQBkAGUAIAA9ACAAYQBjAG8AcwAoAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB5ACkAOwANAAoAZgBsAG8AYQB0ACAAbABvAG4AZwBpAHQAdQBkAGUAIAA9ACAAYQB0AGEAbgAyACgAbgBvAHIAbQBhAGwAaQB6AGUAZABDAG8AbwByAGQAcwAuAHoALAAgAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB4ACkAOwANAAoAZgBsAG8AYQB0ADIAIABzAHAAaABlAHIAZQBDAG8AbwByAGQAcwAgAD0AIABmAGwAbwBhAHQAMgAoAGwAbwBuAGcAaQB0AHUAZABlACwAIABsAGEAdABpAHQAdQBkAGUAKQAgACoAIABmAGwAbwBhAHQAMgAoADAALgA1AC8AVQBOAEkAVABZAF8AUABJACwAIAAxAC4AMAAvAFUATgBJAFQAWQBfAFAASQApADsADQAKAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzACAAPQAgAGYAbABvAGEAdAAyACgAMAAuADUALAAxAC4AMAApACAALQAgAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzADsACgByAGUAdAB1AHIAbgAgACgAcwBwAGgAZQByAGUAQwBvAG8AcgBkAHMAIAArACAAZgBsAG8AYQB0ADQAKAAwACwAIAAxAC0AdQBuAGkAdAB5AF8AUwB0AGUAcgBlAG8ARQB5AGUASQBuAGQAZQB4ACwAMQAsADAALgA1ACkALgB4AHkAKQAgACoAIABmAGwAbwBhAHQANAAoADAALAAgADEALQB1AG4AaQB0AHkAXwBTAHQAZQByAGUAbwBFAHkAZQBJAG4AZABlAHgALAAxACwAMAAuADUAKQAuAHoAdwA7AA==,output:1,fname:StereoPanoProjection,width:891,height:132,input:2,input_1_label:coords|A-6020-OUT;n:type:ShaderForge.SFN_Code,id:7754,x:31387,y:32209,varname:node_7754,prsc:2,code:ZgBsAG8AYQB0ADMAIABuAG8AcgBtAGEAbABpAHoAZQBkAEMAbwBvAHIAZABzACAAPQAgAG4AbwByAG0AYQBsAGkAegBlACgAYwBvAG8AcgBkAHMAKQA7AA0ACgBmAGwAbwBhAHQAIABsAGEAdABpAHQAdQBkAGUAIAA9ACAAYQBjAG8AcwAoAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB5ACkAOwANAAoAZgBsAG8AYQB0ACAAbABvAG4AZwBpAHQAdQBkAGUAIAA9ACAAYQB0AGEAbgAyACgAbgBvAHIAbQBhAGwAaQB6AGUAZABDAG8AbwByAGQAcwAuAHoALAAgAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB4ACkAOwANAAoAZgBsAG8AYQB0ADIAIABzAHAAaABlAHIAZQBDAG8AbwByAGQAcwAgAD0AIABmAGwAbwBhAHQAMgAoAGwAbwBuAGcAaQB0AHUAZABlACwAIABsAGEAdABpAHQAdQBkAGUAKQAgACoAIABmAGwAbwBhAHQAMgAoADEALgAwAC8AVQBOAEkAVABZAF8AUABJACwAIAAxAC4AMAAvAFUATgBJAFQAWQBfAFAASQApADsADQAKAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzACAAPQAgAGYAbABvAGEAdAAyACgAMQAuADAALAAxAC4AMAApACAALQAgAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzADsACgByAGUAdAB1AHIAbgAgACgAcwBwAGgAZQByAGUAQwBvAG8AcgBkAHMAIAArACAAZgBsAG8AYQB0ADQAKAAwACwAIAAxAC0AdQBuAGkAdAB5AF8AUwB0AGUAcgBlAG8ARQB5AGUASQBuAGQAZQB4ACwAMQAsADEALgAwACkALgB4AHkAKQAgACoAIABmAGwAbwBhAHQANAAoADAALAAgADEALQB1AG4AaQB0AHkAXwBTAHQAZQByAGUAbwBFAHkAZQBJAG4AZABlAHgALAAxACwAMQAuADAAKQAuAHoAdwA7AA==,output:1,fname:MonoPanoProjection,width:892,height:132,input:2,input_1_label:coords|A-6020-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:803,x:32418,y:32281,ptovrint:False,ptlb:Stereo Enabled,ptin:_StereoEnabled,varname:_StereoEnabled,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7754-OUT,B-778-OUT;n:type:ShaderForge.SFN_Time,id:8547,x:31951,y:32837,varname:node_8547,prsc:2;n:type:ShaderForge.SFN_Panner,id:1907,x:32639,y:32836,varname:node_1907,prsc:2,spu:1,spv:0|UVIN-3881-OUT,DIST-9267-OUT;n:type:ShaderForge.SFN_Panner,id:4133,x:32639,y:32995,varname:node_4133,prsc:2,spu:0,spv:1|UVIN-3881-OUT,DIST-7944-OUT;n:type:ShaderForge.SFN_Multiply,id:7944,x:32315,y:32929,varname:node_7944,prsc:2|A-8547-T,B-4410-OUT;n:type:ShaderForge.SFN_Multiply,id:9267,x:32315,y:32756,varname:node_9267,prsc:2|A-8547-T,B-9635-OUT;n:type:ShaderForge.SFN_Relay,id:3881,x:32627,y:32564,varname:node_3881,prsc:2|IN-803-OUT;n:type:ShaderForge.SFN_Slider,id:9635,x:31849,y:32687,ptovrint:False,ptlb:LEFT_AND_RIGHT_SPEED,ptin:_LEFT_AND_RIGHT_SPEED,varname:_LEFT_AND_RIGHT_SPEED,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4410,x:31833,y:33093,ptovrint:False,ptlb:UP_AND_DOWN_SPEED,ptin:_UP_AND_DOWN_SPEED,varname:_UP_AND_DOWN_SPEED,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_ComponentMask,id:6409,x:32831,y:32836,varname:node_6409,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1907-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:8985,x:32831,y:32995,varname:node_8985,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4133-UVOUT;n:type:ShaderForge.SFN_Append,id:2928,x:33035,y:32931,varname:node_2928,prsc:2|A-6409-OUT,B-8985-OUT;proporder:857-803-4410-9635;pass:END;sub:END;*/

Shader "VRChat/Panosphere3" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        [MaterialToggle] _StereoEnabled ("Stereo Enabled", Float ) = 0
        _UP_AND_DOWN_SPEED ("UP_AND_DOWN_SPEED", Range(-1, 1)) = 0
        _LEFT_AND_RIGHT_SPEED ("LEFT_AND_RIGHT_SPEED", Range(-1, 1)) = 0
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            float2 StereoPanoProjection( float3 coords ){
            float3 normalizedCoords = normalize(coords);
            float latitude = acos(normalizedCoords.y);
            float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
            float2 sphereCoords = float2(longitude, latitude) * float2(0.5/UNITY_PI, 1.0/UNITY_PI);
            sphereCoords = float2(0.5,1.0) - sphereCoords;
            return (sphereCoords + float4(0, 1-unity_StereoEyeIndex,1,0.5).xy) * float4(0, 1-unity_StereoEyeIndex,1,0.5).zw;
            }
            
            float2 MonoPanoProjection( float3 coords ){
            float3 normalizedCoords = normalize(coords);
            float latitude = acos(normalizedCoords.y);
            float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
            float2 sphereCoords = float2(longitude, latitude) * float2(1.0/UNITY_PI, 1.0/UNITY_PI);
            sphereCoords = float2(1.0,1.0) - sphereCoords;
            return (sphereCoords + float4(0, 1-unity_StereoEyeIndex,1,1.0).xy) * float4(0, 1-unity_StereoEyeIndex,1,1.0).zw;
            }
            
            uniform fixed _StereoEnabled;
            uniform float _LEFT_AND_RIGHT_SPEED;
            uniform float _UP_AND_DOWN_SPEED;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
////// Lighting:
////// Emissive:
                float4 node_8547 = _Time;
                float3 node_6020 = (viewDirection*(-1.0));
                float2 node_3881 = lerp( MonoPanoProjection( node_6020 ), StereoPanoProjection( node_6020 ), _StereoEnabled );
                float2 node_2928 = float2((node_3881+(node_8547.g*_LEFT_AND_RIGHT_SPEED)*float2(1,0)).r,(node_3881+(node_8547.g*_UP_AND_DOWN_SPEED)*float2(0,1)).g);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_2928, _MainTex));
                float3 emissive = _MainTex_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
