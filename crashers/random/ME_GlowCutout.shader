// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "KriptoFX/ME/GlowCutout" {
	Properties{
	[HDR]_TintColor("Tint Color", Color) = (0.5,0.5,0.5,1)
	_TimeScale("Time Scale", Vector) = (1,1,1,1)
	_MainTex("Noise Texture", 2D) = "white" {}
	_BorderScale("Border Scale (XY) Offset (Z)", Vector) = (0.5,0.05,1,0)
	}

		Category{
			Tags { "Queue" = "Transparent" "IgnoreProjector" = "True" "RenderType" = "Transparent" }
						Blend SrcAlpha OneMinusSrcAlpha
						Cull Off
						Lighting Off
						ZWrite Off
						Offset -1, -1

			SubShader {
				Pass {
				
					CGPROGRAM
					#pragma vertex vert
					#pragma fragment frag

					#include "UnityCG.cginc"

					sampler2D _MainTex;
					float4 _TintColor;
					float4 _TimeScale;
					float4 _BorderScale;

					struct appdata_t {
						float4 vertex : POSITION;
						fixed4 color : COLOR;
						float2 texcoord : TEXCOORD0;
						float3 normal : NORMAL;
					};

					struct v2f {
						float4 vertex : POSITION;
						fixed4 color : COLOR;
						float2 texcoord : TEXCOORD0;
						float3 normal : NORMAL;
						float3 worldPosScaled : TEXCOORD1;
					};

					float4 _MainTex_ST;

					v2f vert(appdata_t v)
					{
						v2f o;
						v.vertex.xyz += v.normal / 100 * _BorderScale.z;
						o.vertex = UnityObjectToClipPos(v.vertex);
						o.color = v.color;
						o.texcoord = TRANSFORM_TEX(v.texcoord,_MainTex);
						float3 worldPos = v.vertex * float3(length(unity_ObjectToWorld[0].xyz), length(unity_ObjectToWorld[1].xyz), length(unity_ObjectToWorld[2].xyz));
						o.worldPosScaled = worldPos.xyz *  _MainTex_ST.x;
						o.normal = abs(v.normal);
						return o;
					}

					half2 tex2DTriplanar(sampler2D tex, float2 offset, float3 worldPos, float3 normal)
					{
						half2 yDiff = tex2D(tex, worldPos.xz + offset);
						half2 xDiff = tex2D(tex, worldPos.zy + offset);
						half2 zDiff = tex2D(tex, worldPos.xy + offset);
						normal = normal / (normal.x + normal.y + normal.z);
						return xDiff * normal.x + yDiff * normal.y + zDiff * normal.z;
					}

					half4 frag(v2f i) : COLOR
					{
						half2 mask = tex2DTriplanar(_MainTex, _Time.xx * _TimeScale.xy, i.worldPosScaled, i.normal);
						half2 tex = tex2DTriplanar(_MainTex, mask + _Time.xx * _TimeScale.zw, i.worldPosScaled, i.normal);
						float4 res = 0;
						res.r = step(tex.r, _BorderScale.x);
						res.r -= step(tex.r, _BorderScale.x - _BorderScale.y);
						res.r *= tex.g;
						res = i.color * res.r * _TintColor;
						res.a = saturate(res.a);
						return  res;
					}
					ENDCG
				}
			}
	}

}