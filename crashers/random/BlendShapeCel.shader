Shader "Naelstrof/BlendShape Cel"
{
	Properties
	{
		_Color("Color", Color) = (1, 1, 1, 1)
		_MainTex("Albedo (RGB)", 2D) = "white" {}
		_SmoothStep("Smooth Step", Range(0, 1)) = 0.025
		_BlendShapeBackActivationDistance("Blend Shape Back Activation Distance", Range(0, 10)) = 1
        _BlendShapeBackDistanceMultiplier("Blend Shape Back Distance Multiplier", Range(0, 10)) = 1
        _BlendShapeForwardActivationDistance("Blend Shape Forward Activation Distance", Range(0, 10)) = 1
        _BlendShapeForwardDistanceMultiplier("Blend Shape Forward Distance Multiplier", Range(0, 10)) = 1
        _BlendShapeCameraActivationDistance("Blend Shape Camera Activation Distance", Range(0, 10)) = 1
        _BlendShapeCameraDistanceMultiplier("Blend Shape Camera Distance Multiplier", Range(0,10)) = 6
        _BlendShapeMultiplier("Blend Shape Multiplier", Range(0,100)) = 10
	}
	SubShader {
		Tags {
			"RenderType" = "Opaque" "Queue"="AlphaTest+51"
		}
		LOD 200
		Pass {
			Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }

			CGPROGRAM

			#pragma fragment frag
			#pragma vertex vert
			#pragma geometry geo
			#pragma target 4.0

			#include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"

			uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
			uniform float4 _Color;
			uniform float _BlendShapeMultiplier;
			uniform float _SmoothStep;
			#include "VertexIntersection.cginc"
			struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
                float3 texcoord2 : TEXCOORD2;
                float3 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float3 uv2 : TEXCOORD2;
                float3 uv3 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
                float3 normalDir : TEXCOORD5;
                float3 tangentDir : TEXCOORD6;
                float3 bitangentDir : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
                float3 normalDirCalc : TEXCOORD11;
            };
            float3 constructNormal(float3 v1, float3 v2, float3 v3) {
			    return normalize(cross(v2 - v1, v3 - v1));
			}
            [maxvertexcount(3)]
	        void geo( triangle VertexOutput input[3], uint pid : SV_PrimitiveID, inout TriangleStream<VertexOutput> outStream ) {
				VertexOutput t0 = input[0];
				VertexOutput t1 = input[1];
				VertexOutput t2 = input[2];

				t0.normalDirCalc = constructNormal(t0.posWorld, t1.posWorld, t2.posWorld);
				t1.normalDirCalc = t0.normalDirCalc;
				t2.normalDirCalc = t0.normalDirCalc;

				outStream.Append(t0);
			    outStream.Append(t1);
			    outStream.Append(t2);
			    outStream.RestartStrip();
			}
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float cameraIntersection;
                v.texcoord1.w = GetVertexIntersection(v.vertex, cameraIntersection);
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float3 deltaPosition = (v.texcoord1.x * normalize(v.normal)) + (v.texcoord1.y * normalize(v.tangent.xyz)) + (v.texcoord1.z * normalize(cross(v.normal,v.tangent.xyz)));
                if ( length(deltaPosition) == 0 ) {
                	o.uv1.w = 0;
                }
	            v.vertex.xyz += deltaPosition * (v.texcoord1.w+cameraIntersection) * _BlendShapeMultiplier;
                o.normalDir = UnityObjectToWorldNormal(normalize(v.normal + (float3)v.texcoord2 * (v.texcoord1.w)));
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( normalize(v.tangent.xyz + (float3)v.texcoord3 * (v.texcoord1.w)), 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
            	i.normalDir = normalize(i.normalDir);
                float intersect = i.uv1.w;
            	float remap = 1-abs(intersect * 2 - 1);
                i.normalDir = normalize(lerp(i.normalDir,i.normalDirCalc,remap));

            	float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                if( isnan(lightDirection.x) || isinf(lightDirection.x) || length(lightDirection) == 0 ) {
                    lightDirection = normalize(float3(1,1,1));
                }
                float attenuation = LIGHT_ATTENUATION(i);
            	half NdotL = dot(i.normalDir, lightDirection);
				NdotL = smoothstep(0, _SmoothStep, NdotL);
				float4 c;
				c = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex)) * _Color;
				c.rgb *= _LightColor0.rgb * (NdotL * attenuation * 2);
				return c;
            }
			ENDCG
		}

		Pass {
			Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One

			CGPROGRAM

			#pragma fragment frag
			#pragma vertex vert
			#pragma geometry geo
			#pragma multi_compile_fwdadd_fullshadows
			#pragma target 4.0

			#include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"

			uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
			uniform float4 _Color;
			uniform float _BlendShapeMultiplier;
			uniform float _SmoothStep;
			#include "VertexIntersection.cginc"
			struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 texcoord1 : TEXCOORD1;
                float3 texcoord2 : TEXCOORD2;
                float3 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
                float3 uv2 : TEXCOORD2;
                float3 uv3 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
                float3 normalDir : TEXCOORD5;
                float3 tangentDir : TEXCOORD6;
                float3 bitangentDir : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
                float3 normalDirCalc : TEXCOORD11;
            };
            float3 constructNormal(float3 v1, float3 v2, float3 v3) {
			    return normalize(cross(v2 - v1, v3 - v1));
			}
            [maxvertexcount(3)]
	        void geo( triangle VertexOutput input[3], uint pid : SV_PrimitiveID, inout TriangleStream<VertexOutput> outStream ) {
				VertexOutput t0 = input[0];
				VertexOutput t1 = input[1];
				VertexOutput t2 = input[2];

				t0.normalDirCalc = constructNormal(t0.posWorld, t1.posWorld, t2.posWorld);
				t1.normalDirCalc = t0.normalDirCalc;
				t2.normalDirCalc = t0.normalDirCalc;

				outStream.Append(t0);
			    outStream.Append(t1);
			    outStream.Append(t2);
			    outStream.RestartStrip();
			}
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float cameraIntersection;
                v.texcoord1.w = GetVertexIntersection(v.vertex, cameraIntersection);
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                float3 deltaPosition = (v.texcoord1.x * normalize(v.normal)) + (v.texcoord1.y * normalize(v.tangent.xyz)) + (v.texcoord1.z * normalize(cross(v.normal,v.tangent.xyz)));
                if ( length(deltaPosition) == 0 ) {
                	o.uv1.w = 0;
                }
	            v.vertex.xyz += deltaPosition * (v.texcoord1.w+cameraIntersection) * _BlendShapeMultiplier;
                o.normalDir = UnityObjectToWorldNormal(normalize(v.normal + (float3)v.texcoord2 * (v.texcoord1.w)));
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( normalize(v.tangent.xyz + (float3)v.texcoord3 * (v.texcoord1.w)), 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
            	i.normalDir = normalize(i.normalDir);
                float intersect = i.uv1.w;
            	float remap = 1-abs(intersect * 2 - 1);
                i.normalDir = normalize(lerp(i.normalDir,i.normalDirCalc,remap));

            	float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float attenuation = LIGHT_ATTENUATION(i);
            	half NdotL = dot(i.normalDir, lightDirection);
				NdotL = smoothstep(0, _SmoothStep, NdotL);
				float4 c;
				c = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex))  * _Color;
				c.rgb *= _LightColor0.rgb * (NdotL * attenuation * 2);
				return c;
            }
			ENDCG
		}
	}
	FallBack "Diffuse"
}