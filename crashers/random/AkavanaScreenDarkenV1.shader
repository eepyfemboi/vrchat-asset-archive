// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Akavana/ScreenDarkenV1"
{
	Properties
	{
		_Min("Min", Range( 0 , 100)) = 0
		_Max("Max", Range( 0 , 100)) = 0
		_Color("Color", Color) = (0,0,0,0)
		_OffsetScale("Offset Scale", Range( 0 , 0.01)) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Overlay"  "Queue" = "Geometry+27000" "IsEmissive" = "true"  }
		Cull Front
		ZWrite Off
		ZTest Always
		Blend SrcAlpha OneMinusSrcAlpha
		GrabPass{ }
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Unlit keepalpha noshadow exclude_path:deferred 
		struct Input
		{
			float4 screenPos;
		};

		uniform sampler2D _GrabTexture;
		uniform float _OffsetScale;
		uniform float4 _Color;
		uniform float _Min;
		uniform float _Max;


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


		inline fixed4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return fixed4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( ase_screenPos );
			float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
			float4 screenColor2 = tex2D( _GrabTexture, ( ase_grabScreenPosNorm + ( sin( _Time.z ) * _OffsetScale ) ).xy );
			o.Emission = ( screenColor2 * _Color ).rgb;
			float4 transform47 = mul(unity_ObjectToWorld,float4( 0,0,0,1 ));
			float clampResult49 = clamp( distance( float4( _WorldSpaceCameraPos , 0.0 ) , (transform47).xyzw ) , _Min , _Max );
			o.Alpha = ( 1.0 - (0.0 + (clampResult49 - _Min) * (1.0 - 0.0) / (_Max - _Min)) );
		}

		ENDCG
	}
	CustomEditor "ASEMaterialInspector"
}