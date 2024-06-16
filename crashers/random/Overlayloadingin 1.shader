Shader "Medical/Overlay"
{
	Properties
	{
		_Cutoff( "Mask Clip Value", Float ) = 0.5
		_Overlay("Overlay", 2D) = "white" {}
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

		Tags{ "RenderType" = "Overlay"  "Queue" = "Overlay+8001" "IsEmissive" = "true"  }
		Cull Back
		ZTest Always
		ColorMask RGB
		CGPROGRAM
		#include "UnityCG.cginc"
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Standard keepalpha noshadow exclude_path:deferred vertex:vertexDataFunc 
		struct Input
		{
			float3 worldPos;
		};

		uniform sampler2D _Overlay;
		uniform float _Cutoff = 0.5;

		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			//Calculate new billboard vertex position and normal;
			float3 upCamVec = normalize ( UNITY_MATRIX_V._m10_m11_m12 );
			float3 forwardCamVec = -normalize ( UNITY_MATRIX_V._m20_m21_m22 );
			float3 rightCamVec = normalize( UNITY_MATRIX_V._m00_m01_m02 );
			float4x4 rotationCamMatrix = float4x4( rightCamVec, 0, upCamVec, 0, forwardCamVec, 0, 0, 0, 0, 1 );
			v.normal = normalize( mul( v.normal, rotationCamMatrix ));
			v.vertex.x *= length( unity_ObjectToWorld._m00_m10_m20 );
			v.vertex.y *= length( unity_ObjectToWorld._m01_m11_m21 );
			v.vertex.z *= length( unity_ObjectToWorld._m02_m12_m22 );
			v.vertex = mul( v.vertex, rotationCamMatrix );
			v.vertex.xyz += unity_ObjectToWorld._m03_m13_m23;
			//Need to nullify rotation inserted by generated surface shader;
			v.vertex = mul( unity_WorldToObject, v.vertex );
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 unityObjectToClipPos2 = UnityObjectToClipPos( ase_vertex3Pos );
			float4 computeGrabScreenPos7 = ComputeGrabScreenPos( unityObjectToClipPos2 );
			float4 tex2DNode10 = tex2D( _Overlay, computeGrabScreenPos7.xy );
			o.Normal = tex2DNode10.rgb;
			o.Albedo = tex2DNode10.rgb;
			o.Emission = tex2DNode10.rgb;
			o.Alpha = 1;
			clip( tex2DNode10.a - _Cutoff );
		}

		ENDCG
	}
	CustomEditor "MedicalMess"
}