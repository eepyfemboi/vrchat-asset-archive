Shader "Unlit/Fade Screen"
{
	Properties
	{
		_FadeStrength ("Fade Strength", Range(-1, 1)) = 0.1
	}
	SubShader
	{
		Tags { "RenderType"="Overlay-1" }
		LOD 100
		ZTest Always
		ZWrite off
        GrabPass { "_GrabTex" }
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
			};

			sampler2D _GrabTex;
			float4 _GrabTex_ST;
			float _FadeStrength;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _GrabTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_GrabTex, i.uv);
				col.r = col.r * _FadeStrength;
				col.g = col.g * _FadeStrength;
				col.b = col.b * _FadeStrength;
				// apply fog
				return col;
			}
			ENDCG
		}
	}
}
