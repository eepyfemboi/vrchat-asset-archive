Shader "Medical/Distortion/ColorShake"
{
	Properties
	{
		_Color("Color", Color) = (0,0,0,0)
		_Speed("Speed", Range( 0 , 100)) = 0
		_Alpha("Alpha", Range( 0 , 1)) = 0
		_Power("Power", Range( 1 , 100)) = 1
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Pass
		{
			ColorMask 0
			ZTest Always
			ZWrite On
		}

		Tags{ "RenderType" = "Opaque"  "Queue" = "Overlay+100000" "IsEmissive" = "true"  }
		Cull Off
		ZTest Always
		GrabPass{ }
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Unlit keepalpha noshadow 
		struct Input
		{
			float4 screenPos;
		};

		uniform sampler2D _GrabTexture;
		uniform float _Speed;
		uniform float _Power;
		uniform float4 _Color;
		uniform float _Alpha;


		inline float4 ASE_ComputeGrabScreenPos( float4 pos )
		{
			#if UNITY_UV_STARTS_AT_TOP
			float scale = -1.0;
			#else
			float scale = 1.0;
			#endif
			float4 o = pos;
			o.y = pos.w * 0.5f;
			o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
			return o;
		}


		inline half4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return half4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( ase_screenPos );
			float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
			float mulTime21_g2 = _Time.y * _Speed;
			float4 temp_output_26_0_g2 = ( ase_grabScreenPosNorm + ( sin( mulTime21_g2 ) / abs( ( _Power - 99.0 ) ) ) );
			float4 screenColor27_g2 = tex2D( _GrabTexture, temp_output_26_0_g2.xy );
			float grayscale29_g2 = Luminance(screenColor27_g2.rgb);
			float4 screenColor30_g2 = tex2D( _GrabTexture, temp_output_26_0_g2.xy );
			float4 lerpResult32_g2 = lerp( ( grayscale29_g2 * _Color ) , screenColor30_g2 , _Alpha);
			o.Emission = lerpResult32_g2.rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	CustomEditor "MedicalMess"
}