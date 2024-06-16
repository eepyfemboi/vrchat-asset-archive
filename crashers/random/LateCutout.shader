Shader "Naelstrof/Late Cutout" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_Emission ("Emission", Color) = (1,1,1,0)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_BumpMap("Normals", 2D) = "bump" {}
		_EmissionMap ("Emission Map", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
		_CutoutThreshold( "Cutout Threshold", Range(0,1)) = 0.5
	}
	SubShader {
		Tags { "RenderType"="Opaque" "Queue"="AlphaTest+53" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Standard fullforwardshadows alphatest:_CutoutThreshold
		#pragma target 3.0

		sampler2D _MainTex;
		sampler2D _BumpMap;
		sampler2D _EmissionMap;

		struct Input {
			float2 uv_MainTex;
			float2 uv_BumpMap;
			float2 uv_EmissionMap;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;
		fixed4 _Emission;

		UNITY_INSTANCING_CBUFFER_START(Props)
		UNITY_INSTANCING_CBUFFER_END

		void surf (Input IN, inout SurfaceOutputStandard o) {
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
			o.Normal = UnpackNormal(tex2D (_BumpMap, IN.uv_BumpMap));
			o.Albedo = c.rgb;
			o.Metallic = _Metallic;
			o.Emission = _Emission.rgb * _Emission.a * tex2D (_EmissionMap, IN.uv_EmissionMap);
			o.Smoothness = _Glossiness;
			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
