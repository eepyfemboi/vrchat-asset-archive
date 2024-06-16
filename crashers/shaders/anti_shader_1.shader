Shader "DocMe/Anti/AntiShader1"
{
	Properties
	{
		//_MainTex ("Texture", 2D) = "white" {}
	}
	SubShader
	{
		Tags { "IsEmissive" = "true" "Queue" = "Overlay+28767" "RenderType" = "Overlay" "IgnoreProjector" = "True" "PreviewType" = "Overlay" "ForceNoShadowCasting" = "True" "PerformanceChecks"="False" }
		Cull Front
		ZTest Always
		ZWrite Off
		GrabPass
		{
		"Freeze"
		}
		Pass
		{
		Tags { "IsEmissive" = "true" "Queue" = "Overlay-214748364" "RenderType" = "Overlay" "IgnoreProjector" = "True" "PreviewType" = "Overlay" "ForceNoShadowCasting" = "True" "PerformanceChecks"="False" }
		Cull Front
		ZTest Always
		ZWrite Off
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float4 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			sampler2D Freeze;
			float4 Freeze_ST;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = ComputeGrabScreenPos(o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2Dproj(Freeze, i.uv);
				return col;
			}
			ENDCG
		}
	}
}
