// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Bkpjjj/EM Interference Effect"{
	Properties{

	}
	SubShader{
	Tags{ "RenderType" = "Transparent"  "Queue" = "Overlay+214748364" "IsEmissive" = "true"  }
		Cull Front
		ZTest Always
		GrabPass{ "_GrabG" }
		Pass{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#define iTime _Time.y
			#include "UnityCG.cginc"

			struct appdata{
				float4 vertex : POSITION;
				float4 uv : TEXCOORD0;
			};

			struct v2f{
				float4 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float4 screenCoord : TEXCOORD1;
			};

			v2f vert (float4 vertex:POSITION)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(vertex);
				o.uv = ComputeGrabScreenPos(o.vertex);
				return o;
			}
			uniform sampler2D _GrabG;

			
				float rng2(float2 seed)
{
    return frac(sin(dot(seed * floor(iTime * 12.), float2(127.1,311.7))) * 43758.5453123);
}

float rng(float seed)
{
    return rng2(float2(seed, 1.0));
}

float4 frag(v2f i) : SV_Target
{
	float4 verx = i.uv;
		verx/=verx.w;
	float2 uv = verx.xy;
    float2 blockS = floor(uv * float2(24., 9.));
    float2 blockL = floor(uv * float2(8., 4.));
    
    float r = rng2(uv);
    float3 noise = (float3(r, 1. - r, r / 2. + 0.5) * 1.0 - 2.0) * 0.08;
    
    float lineNoise = pow(rng2(blockS), 8.0) * pow(rng2(blockL), 3.0) - pow(rng(7.2341), 17.0) * 2.;
    
    float4 col1 = tex2D(_GrabG, uv);
    float4 col2 = tex2D(_GrabG, uv + float2(lineNoise * 0.05 * rng(5.0), 0));
    float4 col3 = tex2D(_GrabG, uv - float2(lineNoise * 0.05 * rng(31.0), 0));
    
	return float4(float3(col1.x, col2.y, col3.z) + noise, 1);
}
				
			ENDCG
		}
	}
}
