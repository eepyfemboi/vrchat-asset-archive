Shader "SirGastalot'sShader/ImageFlip"
{
	Properties
	{
		_X("X", Range( -1 , 1)) = 0
		_Y("Y", Range( -1 , 1)) = 0
		_Z("Z", Range( -5 , 20)) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Pass
		{
			ColorMask 0
			ZTest GEqual
			ZWrite On
		}

		Tags{ "RenderType" = "Overlay"  "Queue" = "Overlay+8500" "IgnoreProjector" = "True" "DisableBatching" = "True" "IsEmissive" = "true"  }

		Cull Front
		ZWrite Off
		ZTest Always
		Blend SrcAlpha OneMinusSrcAlpha , SrcAlpha OneMinusSrcAlpha

		GrabPass{ "_MovementGrab" }

		CGPROGRAM

		#include "UnityCG.cginc"
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Unlit keepalpha noshadow 

		struct Input
		{
			float3 worldPos;
			float4 vertexColor : COLOR;
		};

		uniform sampler2D _MovementGrab;
		uniform float _X;
		uniform float _Y;
		uniform float _Z;

		inline fixed4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return fixed4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 unityObjectToClipPos2_g1 = UnityObjectToClipPos( ase_vertex3Pos );
			float3 appendResult4 = (float3(_X , _Y , _Z));
			float3 break13_g1 = ( appendResult4 * 0.4 * i.vertexColor.a );
			float4 appendResult14_g1 = (float4(break13_g1.x , break13_g1.y , 0 , break13_g1.z));
			float4 appendResult12_g1 = (float4(0 , 0 , 0 , 0));
			float4 computeGrabScreenPos6_g1 = ComputeGrabScreenPos( ( ( ( unityObjectToClipPos2_g1 / unityObjectToClipPos2_g1.w ) + ( appendResult14_g1 + appendResult12_g1 ) ) / unityObjectToClipPos2_g1.w ) );
			float4 screenColor6 = tex2Dproj( _MovementGrab, UNITY_PROJ_COORD( computeGrabScreenPos6_g1 ) );
			o.Emission = screenColor6.rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
}