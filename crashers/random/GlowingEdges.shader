Shader "Psychloor/GlowingEdges"
{
	Properties
	{
		_Color("Color", Color) = (0.2403222,0.5894644,0.9338235,1)
		[Toggle]_Invert("Invert", Float) = 0
		_Bias("Bias", Range( 0 , 1)) = 0
		_Scale("Scale", Float) = 1
		_Power("Power", Float) = 5
		_LowestAlpha("Lowest Alpha", Range( 0 , 0.5)) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Unlit alpha:fade keepalpha noshadow 
		struct Input
		{
			float3 worldPos;
			float3 worldNormal;
		};

		uniform float4 _Color;
		uniform float _Invert;
		uniform float _Bias;
		uniform float _Scale;
		uniform float _Power;
		uniform float _LowestAlpha;

		inline fixed4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return fixed4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			o.Emission = _Color.rgb;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = i.worldNormal;
			float fresnelNDotV1 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode1 = ( _Bias + _Scale * pow( 1.0 - fresnelNDotV1, _Power ) );
			float temp_output_8_0 = saturate( ( fresnelNode1 + _LowestAlpha ) );
			o.Alpha = ( _Color.a * lerp(temp_output_8_0,( 1.0 - temp_output_8_0 ),_Invert) );
		}

		ENDCG
	}
}