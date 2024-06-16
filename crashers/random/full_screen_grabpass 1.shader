//
// 1. Add a Quad in Unity
// 2. Parent the quad under camera, to prevent frustum culling.
// 3. Attach this shader.
//
Shader "Quad/Fullscreen_GrabPass"
{
	Properties
	{
		//_MainTex ("Texture Image", 2D) = "white" {}
		_EyePos ("Position in front of eyes (larger = further)", Float) = 1.0
	}

	SubShader
	{		
		Cull Off
		// Draw ourselves after all opaque geometry
		Tags { "Queue" = "Transparent" }

		// Grab the screen behind the object into _BackgroundTexture
		GrabPass
		{
			"_MainTex"
		}

	
		Tags {"Queue"="Transparent+1500"} 
		Cull Off //ZWrite Off
		ZWrite On
		//ColorMask 

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			uniform sampler2D _MainTex;  
			uniform float _EyePos;

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv     : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = v.vertex;
				o.vertex.xy *= -_EyePos;
				o.vertex.z = 1;
				o.uv = v.uv;
				return o;
			}
			
			fixed4 frag(v2f i) : SV_Target
			{
				return tex2D(_MainTex, float2(i.uv.xy));
			}
			ENDCG
		}
	}
}