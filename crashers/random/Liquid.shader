Shader "Moons/Liquid/Liquid"
{
	Properties
	{
		[Header(Main colour)]
		[NoScaleOffset]_MainTex("Main texture", 2D) = "white" {}
		_Color("Main colour", Color) = (1,1,1,1)
		[NoScaleOffset]_Emissiontexture("Emission texture", 2D) = "white" {}
		_Emissioncolour("Emission colour", Color) = (1,1,1,1)
		[Toggle]_Rainbowemission("Rainbow emission", Float) = 0
		_Rainbowspeed("Rainbow speed", Float) = 0.5
		_Emission("Emission", Float) = 0
		_Texturesaturation("Texture saturation", Range( 0 , 1)) = 1
		_Screenspacetextures("Screen space textures", Range( 0 , 1)) = 0
		[Header(Distortion)]
		[NoScaleOffset]_Distortiontexture("Distortion texture", 2D) = "white" {}
		_DistortiontilingX("Distortion tiling (X)", Float) = 1
		_DistortiontilingY("Distortion tiling (Y)", Float) = 1
		_DistortionspeedX("Distortion speed (X)", Range( 0 , 1)) = 0
		_DistortionspeedY("Distortion speed (Y)", Range( 0 , 1)) = 0
		_Distortionstrength("Distortion strength", Range( 0 , 1)) = 0
		[Header(Rim light)]
		[Toggle]_Rimlight("Rim light", Float) = 1
		_Rimcolour("Rim colour", Color) = (1,1,1,1)
		_Rimbrightness("Rim brightness", Float) = 1
		_Rimpower("Rim power", Float) = 1
		_Centreglow("Centre glow", Float) = 0
		[Header(Vertex offset)]
		_VertexoffsetX("Vertex offset (X)", Float) = 0
		_VertexoffsetY("Vertex offset (Y)", Float) = 0
		_VertexoffsetZ("Vertex offset (Z)", Float) = 0
		_Vertexoffsetspeed("Vertex offset speed", Float) = 0
		_Vertexnoisescale("Vertex noise scale", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		LOD 300
		Cull Back
		Blend SrcAlpha OneMinusSrcAlpha , SrcAlpha OneMinusSrcAlpha
		CGINCLUDE
		#include "UnityShaderVariables.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 4.6
		struct Input
		{
			float3 worldPos;
			float3 worldNormal;
			float2 uv_texcoord;
			float4 screenPos;
		};

		uniform float _Vertexnoisescale;
		uniform float _Vertexoffsetspeed;
		uniform float _VertexoffsetX;
		uniform float _VertexoffsetY;
		uniform float _VertexoffsetZ;
		uniform float _Centreglow;
		uniform float _Emission;
		uniform float _Rainbowemission;
		uniform float4 _Emissioncolour;
		uniform float _Rainbowspeed;
		uniform sampler2D _Emissiontexture;
		uniform float _Screenspacetextures;
		uniform sampler2D _Distortiontexture;
		uniform float _DistortionspeedX;
		uniform float _DistortionspeedY;
		uniform float _DistortiontilingX;
		uniform float _DistortiontilingY;
		uniform float _Distortionstrength;
		uniform sampler2D _MainTex;
		uniform float4 _Color;
		uniform float _Texturesaturation;
		uniform float _Rimlight;
		uniform float _Rimpower;
		uniform float4 _Rimcolour;
		uniform float _Rimbrightness;


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


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float4 appendResult265 = (float4(_Vertexnoisescale , _Vertexnoisescale , 0.0 , 0.0));
			float2 uv_TexCoord223 = v.texcoord.xy * appendResult265.xy;
			float cos224 = cos( 1.0 * _Time.y );
			float sin224 = sin( 1.0 * _Time.y );
			float2 rotator224 = mul( uv_TexCoord223 - float2( 0,0 ) , float2x2( cos224 , -sin224 , sin224 , cos224 )) + float2( 0,0 );
			float simplePerlin2D222 = snoise( rotator224 );
			float noise226 = simplePerlin2D222;
			float mulTime193 = _Time.y * _Vertexoffsetspeed;
			float vertex_offset_speed225 = (0.0 + (sin( mulTime193 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0));
			float temp_output_229_0 = ( noise226 * vertex_offset_speed225 );
			float4 appendResult239 = (float4((0.0 + (temp_output_229_0 - 0.0) * (_VertexoffsetX - 0.0) / (1.0 - 0.0)) , (0.0 + (temp_output_229_0 - 0.0) * (_VertexoffsetY - 0.0) / (1.0 - 0.0)) , (0.0 + (temp_output_229_0 - 0.0) * (_VertexoffsetZ - 0.0) / (1.0 - 0.0)) , 0.0));
			float4 vertex_offset240 = appendResult239;
			v.vertex.xyz += vertex_offset240.xyz;
		}

		inline half4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return half4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 ase_worldNormal = i.worldNormal;
			float fresnelNdotV256 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode256 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV256, -_Centreglow ) );
			float mulTime297 = _Time.y * _Rainbowspeed;
			float3 hsvTorgb296 = HSVToRGB( float3((0.0 + (sin( mulTime297 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)),1.0,1.0) );
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float4 lerpResult308 = lerp( float4( i.uv_texcoord, 0.0 , 0.0 ) , ase_screenPosNorm , _Screenspacetextures);
			float4 appendResult12 = (float4((_DistortionspeedX * _DistortiontilingX), (_DistortionspeedY * _DistortiontilingY) , 0.0 , 0.0));
			float4 appendResult66 = (float4(_DistortiontilingX , _DistortiontilingY , 0.0 , 0.0));
			float2 uv_TexCoord8 = i.uv_texcoord * appendResult66.xy;
			float2 panner9 = ( 1.0 * _Time.y * appendResult12.xy + uv_TexCoord8);
			float4 temp_cast_4 = (tex2D( _Distortiontexture, panner9 ).r).xxxx;
			float4 lerpResult4 = lerp( lerpResult308 , temp_cast_4 , _Distortionstrength);
			float4 distortion51 = lerpResult4;
			float4 tex2DNode2 = tex2D( _MainTex, distortion51.xy );
			float4 temp_output_33_0 = ( ( ( _Emission * lerp(_Emissioncolour,float4( hsvTorgb296 , 0.0 ),_Rainbowemission) ) * tex2D( _Emissiontexture, distortion51.xy ) ) + ( tex2DNode2 * _Color ) );
			float3 desaturateInitialColor177 = ( fresnelNode256 * temp_output_33_0 ).rgb;
			float desaturateDot177 = dot( desaturateInitialColor177, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar177 = lerp( desaturateInitialColor177, desaturateDot177.xxx, ( 1.0 - _Texturesaturation ) );
			float3 final_texture53 = desaturateVar177;
			float4 temp_cast_9 = (0.0).xxxx;
			float fresnelNdotV20 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode20 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV20, _Rimpower ) );
			float4 rimlight54 = lerp(temp_cast_9,( fresnelNode20 * ( _Rimcolour * _Rimbrightness ) ),_Rimlight);
			o.Emission = max( ( float4( final_texture53 , 0.0 ) + rimlight54 ) , float4( 0,0,0,0 ) ).rgb;
			float opacity52 = tex2DNode2.a;
			o.Alpha = opacity52;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf Unlit keepalpha fullforwardshadows exclude_path:deferred vertex:vertexDataFunc 

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
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float3 worldPos : TEXCOORD2;
				float4 screenPos : TEXCOORD3;
				float3 worldNormal : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v, customInputData );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				o.worldNormal = worldNormal;
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				o.worldPos = worldPos;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				o.screenPos = ComputeScreenPos( o.pos );
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
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = IN.worldNormal;
				surfIN.screenPos = IN.screenPos;
				SurfaceOutput o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutput, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				half alphaRef = tex3D( _DitherMaskLOD, float3( vpos.xy * 0.25, o.Alpha * 0.9375 ) ).a;
				clip( alphaRef - 0.01 );
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
}