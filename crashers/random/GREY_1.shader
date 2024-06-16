// Unity screen grayscale grabpass overlay shader for Unity's default quad mesh that can be put onto objects.
// Due to frustum culling it is only visible if the quad is in camera's view.
// If you want it to be visible more you can scale the the quad transform up to make the bounding box/sphere bigger.
// If you need this grayscale effect all the time, it would make more sense to instead use post processing shader/stack.
// license: Unlicense

Shader "Custom/GREY"
{
	Properties
	{	
	}
	SubShader
	{
		Tags {
			"Queue"="Overlay+9000"
			"RenderType"="Overlay" 
			"ForceNoShadowCasting"="True"
			"IgnoreProjector"="True"
			"DisableBatching" = "True"
		}
		LOD 300
		GrabPass{ "_BackgroundTexture" }
		ZWrite Off
		ZTest Always
		Cull Off
		Blend One Zero

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			sampler2D _BackgroundTexture;

			struct appdata
			{
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float3 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};


			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = float4(v.uv * 2 - 1, 0, 1);
				#ifdef UNITY_UV_STARTS_AT_TOP
					v.uv.y = 1-v.uv.y;
				#endif
				o.uv.xy = UnityStereoTransformScreenSpaceTex(v.uv);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 col = tex2D(_BackgroundTexture, i.uv.xy);
				fixed grey = dot(col.rgb, float3(0.3, 0.59, 0.11));
				return grey;
			}
			ENDCG
		}
	}
}