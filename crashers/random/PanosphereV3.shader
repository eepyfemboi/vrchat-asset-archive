// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:4,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9918864,fgcg:0.9632353,fgcb:1,fgca:1,fgde:0.002,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33202,y:32176,varname:node_3138,prsc:2|emission-857-RGB;n:type:ShaderForge.SFN_ViewVector,id:9763,x:30779,y:32311,varname:node_9763,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6020,x:31031,y:32392,varname:node_6020,prsc:2|A-9763-OUT,B-9593-OUT;n:type:ShaderForge.SFN_Tex2d,id:857,x:32997,y:32341,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4457-OUT;n:type:ShaderForge.SFN_Code,id:778,x:31204,y:32423,varname:node_778,prsc:2,code:ZgBsAG8AYQB0ADMAIABuAG8AcgBtAGEAbABpAHoAZQBkAEMAbwBvAHIAZABzACAAPQAgAG4AbwByAG0AYQBsAGkAegBlACgAYwBvAG8AcgBkAHMAKQA7AA0ACgBmAGwAbwBhAHQAIABsAGEAdABpAHQAdQBkAGUAIAA9ACAAYQBjAG8AcwAoAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB5ACkAOwANAAoAZgBsAG8AYQB0ACAAbABvAG4AZwBpAHQAdQBkAGUAIAA9ACAAYQB0AGEAbgAyACgAbgBvAHIAbQBhAGwAaQB6AGUAZABDAG8AbwByAGQAcwAuAHoALAAgAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB4ACkAOwANAAoAZgBsAG8AYQB0ADIAIABzAHAAaABlAHIAZQBDAG8AbwByAGQAcwAgAD0AIABmAGwAbwBhAHQAMgAoAGwAbwBuAGcAaQB0AHUAZABlACwAIABsAGEAdABpAHQAdQBkAGUAKQAgACoAIABmAGwAbwBhAHQAMgAoADAALgA1AC8AVQBOAEkAVABZAF8AUABJACwAIAAxAC4AMAAvAFUATgBJAFQAWQBfAFAASQApADsADQAKAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzACAAPQAgAGYAbABvAGEAdAAyACgAMAAuADUALAAxAC4AMAApACAALQAgAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzADsACgByAGUAdAB1AHIAbgAgACgAcwBwAGgAZQByAGUAQwBvAG8AcgBkAHMAIAArACAAZgBsAG8AYQB0ADQAKAAwACwAIAAxAC0AdQBuAGkAdAB5AF8AUwB0AGUAcgBlAG8ARQB5AGUASQBuAGQAZQB4ACwAMQAsADAALgA1ACkALgB4AHkAKQAgACoAIABmAGwAbwBhAHQANAAoADAALAAgADEALQB1AG4AaQB0AHkAXwBTAHQAZQByAGUAbwBFAHkAZQBJAG4AZABlAHgALAAxACwAMAAuADUAKQAuAHoAdwA7AA==,output:1,fname:StereoPanoProjection,width:891,height:132,input:2,input_1_label:coords|A-6020-OUT;n:type:ShaderForge.SFN_Code,id:7754,x:31238,y:32230,varname:node_7754,prsc:2,code:ZgBsAG8AYQB0ADMAIABuAG8AcgBtAGEAbABpAHoAZQBkAEMAbwBvAHIAZABzACAAPQAgAG4AbwByAG0AYQBsAGkAegBlACgAYwBvAG8AcgBkAHMAKQA7AA0ACgBmAGwAbwBhAHQAIABsAGEAdABpAHQAdQBkAGUAIAA9ACAAYQBjAG8AcwAoAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB5ACkAOwANAAoAZgBsAG8AYQB0ACAAbABvAG4AZwBpAHQAdQBkAGUAIAA9ACAAYQB0AGEAbgAyACgAbgBvAHIAbQBhAGwAaQB6AGUAZABDAG8AbwByAGQAcwAuAHoALAAgAG4AbwByAG0AYQBsAGkAegBlAGQAQwBvAG8AcgBkAHMALgB4ACkAOwANAAoAZgBsAG8AYQB0ADIAIABzAHAAaABlAHIAZQBDAG8AbwByAGQAcwAgAD0AIABmAGwAbwBhAHQAMgAoAGwAbwBuAGcAaQB0AHUAZABlACwAIABsAGEAdABpAHQAdQBkAGUAKQAgACoAIABmAGwAbwBhAHQAMgAoADEALgAwAC8AVQBOAEkAVABZAF8AUABJACwAIAAxAC4AMAAvAFUATgBJAFQAWQBfAFAASQApADsADQAKAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzACAAPQAgAGYAbABvAGEAdAAyACgAMQAuADAALAAxAC4AMAApACAALQAgAHMAcABoAGUAcgBlAEMAbwBvAHIAZABzADsACgByAGUAdAB1AHIAbgAgACgAcwBwAGgAZQByAGUAQwBvAG8AcgBkAHMAIAArACAAZgBsAG8AYQB0ADQAKAAwACwAIAAxAC0AdQBuAGkAdAB5AF8AUwB0AGUAcgBlAG8ARQB5AGUASQBuAGQAZQB4ACwAMQAsADEALgAwACkALgB4AHkAKQAgACoAIABmAGwAbwBhAHQANAAoADAALAAgADEALQB1AG4AaQB0AHkAXwBTAHQAZQByAGUAbwBFAHkAZQBJAG4AZABlAHgALAAxACwAMQAuADAAKQAuAHoAdwA7AA==,output:1,fname:MonoPanoProjection,width:892,height:132,input:2,input_1_label:coords|A-6020-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:803,x:32208,y:32377,ptovrint:False,ptlb:Stereo Enabled,ptin:_StereoEnabled,varname:_StereoEnabled,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7754-OUT,B-778-OUT;n:type:ShaderForge.SFN_Panner,id:7237,x:32643,y:32249,varname:node_7237,prsc:2,spu:1,spv:0|UVIN-7318-OUT,DIST-8790-OUT;n:type:ShaderForge.SFN_Vector2,id:1262,x:33815,y:32772,varname:node_1262,prsc:2,v1:0.5,v2:0;n:type:ShaderForge.SFN_Slider,id:6092,x:31671,y:32613,ptovrint:False,ptlb:X_Axis,ptin:_X_Axis,varname:_X_Axis,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:8790,x:32105,y:32632,varname:node_8790,prsc:2|A-6092-OUT,B-213-T;n:type:ShaderForge.SFN_Time,id:213,x:32095,y:32830,varname:node_213,prsc:2;n:type:ShaderForge.SFN_Slider,id:4598,x:32291,y:32685,ptovrint:False,ptlb:Y_Axis,ptin:_Y_Axis,varname:_Y_Axis,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:4244,x:32716,y:32713,varname:node_4244,prsc:2|A-4598-OUT,B-213-T;n:type:ShaderForge.SFN_Panner,id:7538,x:32643,y:32419,varname:node_7538,prsc:2,spu:0,spv:1|UVIN-7318-OUT,DIST-4244-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7318,x:32363,y:32188,varname:node_7318,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-803-OUT;n:type:ShaderForge.SFN_Add,id:4457,x:32827,y:32341,varname:node_4457,prsc:2|A-7237-UVOUT,B-7538-UVOUT;n:type:ShaderForge.SFN_Slider,id:9593,x:30622,y:32521,ptovrint:False,ptlb:Direction 1 / -1 => BEWARE,ptin:_Direction11BEWARE,varname:_Direction11BEWARE,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-1,max:1;proporder:857-803-6092-4598-9593;pass:END;sub:END;*/

Shader "VRChat/PanosphereV2" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        [HideInInspector][MaterialToggle] _StereoEnabled ("Stereo Enabled", Float ) = 0
        _X_Axis ("X_Axis", Range(-1, 1)) = 1
        _Y_Axis ("Y_Axis", Range(-1, 1)) = 1
        _Direction11BEWARE ("Direction 1 / -1 => BEWARE", Range(-1, 1)) = -1
    }
    SubShader {
        Tags {
            "Queue"="Overlay"
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
            uniform float _X_Axis;
            uniform float _Y_Axis;
            uniform float _Direction11BEWARE;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
////// Lighting:
////// Emissive:
                float4 node_213 = _Time;
                float3 node_6020 = (viewDirection*_Direction11BEWARE);
                float2 node_7318 = lerp( MonoPanoProjection( node_6020 ), StereoPanoProjection( node_6020 ), _StereoEnabled ).rg;
                float2 node_4457 = ((node_7318+(_X_Axis*node_213.g)*float2(1,0))+(node_7318+(_Y_Axis*node_213.g)*float2(0,1)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4457, _MainTex));
                float3 emissive = _MainTex_var.rgb;
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
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
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
