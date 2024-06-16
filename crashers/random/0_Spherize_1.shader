// Spherize V2.0.0
// By Zer0#9757
Shader "Zer0/0 Spherize"
{
	Properties
	{
		_GradientTexture("GradientTexture", 2D) = "white" {}
		[Toggle]_EnableSinusScroll("Enable Sinus Scroll", Float) = 0
		_Speed("Speed", Range( -20 , 20)) = 0
		[Toggle]_EnableRandomPattern("Enable Random Pattern", Float) = 0
		_RandomPatternWidth("Random Pattern Width", Range( 0.0001 , 0.01)) = 0.0001
		[Toggle]_EnableDistortion("Enable Distortion", Float) = 1
		_DistortTexture("Distort Texture", 2D) = "white" {}
		_DistortStrength("Distort Strength", Range( 0 , 2)) = 0
		_DistortSpeedY("Distort Speed Y", Range( -20 , 20)) = 0
		_DistortSppedX("Distort Spped X", Range( -20 , 20)) = 0
		_TakeGradiantRow("Take Gradiant Row", Range( 0 , 1)) = 0
		_Offset("Offset", Range( 0 , 1)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Off
		CGINCLUDE
		#include "UnityShaderVariables.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.6
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float3 viewDir;
			INTERNAL_DATA
			float2 uv_texcoord;
		};

		uniform sampler2D _GradientTexture;
		uniform float _Offset;
		uniform float _EnableSinusScroll;
		uniform float _Speed;
		uniform float _EnableRandomPattern;
		uniform float _RandomPatternWidth;
		uniform float _EnableDistortion;
		uniform sampler2D _DistortTexture;
		uniform float _DistortSppedX;
		uniform float _DistortSpeedY;
		uniform float4 _DistortTexture_ST;
		uniform float _DistortStrength;
		uniform float _TakeGradiantRow;


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
			o.Normal = float3(0,0,1);
			float mulTime38 = _Time.y * 0.1;
			float4 appendResult106 = (float4(0.0 , _Speed , 0.0 , 0.0));
			float dotResult4 = dot( float4(0,0,1,0) , float4( i.viewDir , 0.0 ) );
			float temp_output_7_0 = ( 1.0 - saturate( dotResult4 ) );
			float4 appendResult51 = (float4(temp_output_7_0 , temp_output_7_0 , 0.0 , 0.0));
			float2 panner40 = ( lerp(mulTime38,sin( mulTime38 ),_EnableSinusScroll) * appendResult106.xy + appendResult51.xy);
			float mulTime100 = _Time.y * _RandomPatternWidth;
			float simplePerlin2D81 = snoise( ( cos( panner40 ) * sin( panner40 ) * tan( panner40 ) * mulTime100 ) );
			float mulTime76 = _Time.y * 0.1;
			float4 appendResult78 = (float4(_DistortSppedX , _DistortSpeedY , 0.0 , 0.0));
			float2 uv_DistortTexture = i.uv_texcoord * _DistortTexture_ST.xy + _DistortTexture_ST.zw;
			float2 panner73 = ( mulTime76 * appendResult78.xy + uv_DistortTexture);
			float grayscale97 = Luminance(tex2D( _DistortTexture, panner73 ).rgb);
			float4 appendResult44 = (float4(( _Offset + panner40.y + lerp(0.0,simplePerlin2D81,_EnableRandomPattern) + lerp(0.0,( grayscale97 * _DistortStrength ),_EnableDistortion) ) , ( 0.0 + lerp(0.0,( grayscale97 * _DistortStrength ),_EnableDistortion) + _TakeGradiantRow + 0.0001 ) , 0.0 , 0.0));
			o.Emission = tex2D( _GradientTexture, appendResult44.xy ).rgb;
			o.Alpha = 1;
		}
		ENDCG
		CGPROGRAM
		#pragma surface surf Unlit keepalpha fullforwardshadows 
		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 4.6
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.viewDir = IN.tSpace0.xyz * worldViewDir.x + IN.tSpace1.xyz * worldViewDir.y + IN.tSpace2.xyz * worldViewDir.z;
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutput o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutput, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}