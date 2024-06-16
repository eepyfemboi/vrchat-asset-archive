Shader "Zer0/0 Shake for Wiks"
{
	Properties
	{ 
		[Header(Zer0s Shake for Wiks)]
		[Header(Properties)]
		_Strength("Strength", Range( 0 , 200)) = 0
		_Speed("Speed", Range( 0 , 1000)) = 1
		[Header(Shake Types)]
		[Toggle]_StillShake("Still Shake", Float) = 0
		[Toggle]_UpDownShake("Up Down Shake", Float) = 1
		[Toggle]_UpDownDouble("Up Down Double", Float) = 1
		[Toggle]_LeftRightDouble("Left Right Double", Float) = 1
		[Toggle]_LeftRightShake("Left Right Shake", Float) = 1
		[Toggle]_ZoomShake("Zoom Shake", Float) = 1
		[Toggle]_ZoomShakeDouble("Zoom Shake Double", Float) = 1
		
		[Header(Divide Shakes Add 1 for each checkbox you checked above)]
		_Divide("Divide", Float) = 0
		[Header(Randomize all shakes)]
		[Toggle]_Randomize("Randomize", Float) = 1 
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

		Tags{ "RenderType" = "Overlay"  "Queue" = "Overlay+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Front
		ZWrite Off
		ZTest Always
		Blend SrcAlpha OneMinusSrcAlpha , SrcAlpha OneMinusSrcAlpha
		GrabPass{ "_CustomNameGrab" }
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

		uniform float _StillShake;
		uniform sampler2D _CustomNameGrab;
		uniform float _LeftRightShake;
		uniform float _Strength;
		uniform float _Speed;
		uniform float _Randomize;
		uniform float _LeftRightDouble;
		uniform float _UpDownShake;
		uniform float _UpDownDouble;
		uniform float _ZoomShake;
		uniform float _ZoomShakeDouble;
		uniform float _Divide;


		float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

		float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

		float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }

		float snoise( float2 v )
		{
			const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
			float2 i = floor( v + dot( v, C.yy ) );
			float2 x0 = v - i + dot( i, C.xx );
			float2 i1;
			i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
			float4 x12 = x0.xyxy + C.xxzz;
			x12.xy -= i1;
			i = mod2D289( i );
			float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
			float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
			m = m * m;
			m = m * m;
			float3 x = 2.0 * frac( p * C.www ) - 1.0;
			float3 h = abs( x ) - 0.5;
			float3 ox = floor( x + 0.5 );
			float3 a0 = x - ox;
			m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
			float3 g;
			g.x = a0.x * x0.x + h.x * x0.y;
			g.yz = a0.yz * x12.xz + h.yz * x12.yw;
			return 130.0 * dot( m, g );
		}


		inline half4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return half4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 unityObjectToClipPos43 = UnityObjectToClipPos( ase_vertex3Pos );
			float4 computeScreenPos56 = ComputeScreenPos( unityObjectToClipPos43 );
			float4 screenColor1 = tex2Dproj( _CustomNameGrab, UNITY_PROJ_COORD( computeScreenPos56 ) );
			float mulTime48 = _Time.y * _Speed;
			float temp_output_47_0 = ( i.vertexColor.a * _Strength * sin( mulTime48 ) );
			float mulTime164 = _Time.y * _Speed;
			float2 temp_cast_0 = (( mulTime164 * sin( mulTime164 ) )).xx;
			float simplePerlin2D148 = snoise( temp_cast_0 );
			float2 temp_cast_1 = (( mulTime164 * cos( mulTime164 ) )).xx;
			float simplePerlin2D167 = snoise( temp_cast_1 );
			float2 temp_cast_2 = (( mulTime164 * tan( mulTime164 ) )).xx;
			float simplePerlin2D168 = snoise( temp_cast_2 );
			float4 appendResult150 = (float4(simplePerlin2D148 , simplePerlin2D167 , simplePerlin2D168 , simplePerlin2D168));
			float4 break161 = lerp(float4(1,1,1,1),appendResult150,_Randomize);
			float4 appendResult79 = (float4(( temp_output_47_0 * break161.x ) , 0.0 , 0.0 , 0.0));
			float4 computeScreenPos41 = ComputeScreenPos( ( unityObjectToClipPos43 + appendResult79 ) );
			float4 screenColor53 = tex2Dproj( _CustomNameGrab, UNITY_PROJ_COORD( computeScreenPos41 ) );
			float4 appendResult176 = (float4(( temp_output_47_0 * break161.y ) , 0.0 , 0.0 , 0.0));
			float4 computeScreenPos119 = ComputeScreenPos( ( unityObjectToClipPos43 + -appendResult176 ) );
			float4 screenColor122 = tex2Dproj( _CustomNameGrab, UNITY_PROJ_COORD( computeScreenPos119 ) );
			float4 appendResult106 = (float4(0.0 , ( temp_output_47_0 * break161.y ) , 0.0 , 0.0));
			float4 computeScreenPos104 = ComputeScreenPos( ( unityObjectToClipPos43 + appendResult106 ) );
			float4 screenColor123 = tex2Dproj( _CustomNameGrab, UNITY_PROJ_COORD( computeScreenPos104 ) );
			float4 appendResult174 = (float4(0.0 , ( temp_output_47_0 * break161.x ) , 0.0 , 0.0));
			float4 computeScreenPos127 = ComputeScreenPos( ( unityObjectToClipPos43 + -appendResult174 ) );
			float4 screenColor128 = tex2Dproj( _CustomNameGrab, UNITY_PROJ_COORD( computeScreenPos127 ) );
			float4 appendResult111 = (float4(0.0 , 0.0 , ( temp_output_47_0 * break161.z ) , ( temp_output_47_0 * break161.w )));
			float4 computeScreenPos108 = ComputeScreenPos( ( unityObjectToClipPos43 + appendResult111 ) );
			float4 screenColor124 = tex2Dproj( _CustomNameGrab, UNITY_PROJ_COORD( computeScreenPos108 ) );
			float4 appendResult178 = (float4(0.0 , 0.0 , ( temp_output_47_0 * break161.x ) , ( temp_output_47_0 * break161.y )));
			float4 computeScreenPos132 = ComputeScreenPos( ( unityObjectToClipPos43 + -appendResult178 ) );
			float4 screenColor133 = tex2Dproj( _CustomNameGrab, UNITY_PROJ_COORD( computeScreenPos132 ) );
			o.Emission = ( ( lerp(float4( 0,0,0,0 ),screenColor1,_StillShake) + lerp(float4( 0,0,0,0 ),screenColor53,_LeftRightShake) + lerp(float4( 0,0,0,0 ),screenColor122,_LeftRightDouble) + lerp(float4( 0,0,0,0 ),screenColor123,_UpDownShake) + lerp(float4( 0,0,0,0 ),screenColor128,_UpDownDouble) + lerp(float4( 0,0,0,0 ),screenColor124,_ZoomShake) + lerp(float4( 0,0,0,0 ),screenColor133,_ZoomShakeDouble) ) / _Divide ).rgb;
			o.Alpha = 1;
		}
		// ENDCG10
		ENDCG
	}
	CustomEditor "ASEMaterialInspector"
}
