// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
// Created in Amplify by Magic3000. Thanks for help Doppelganger and Leviant.
Shader "Magic3000/ScreenSpacePub"
{
	Properties
	{
		[Normal]_DistortionNormalMap("Distortion Normal Map", 2D) = "bump" {}
		[Normal]_ShakeNormalMap("Shake Normal Map", 2D) = "bump" {}
		_DistortionSpeed("Distortion Speed", Range( 0 , 10)) = 0
		_DistortionOffset("Distortion Offset", Range( 0 , 1)) = 0
		[Toggle]_StableDistortionOffset("Stable Distortion Offset", Float) = 1
		_ShakeSpeed("Shake Speed", Range( 0 , 10)) = 0
		_ShakeOffset("Shake Offset", Range( 0 , 1)) = 0
		[Toggle]_StableShakeOffset("Stable Shake Offset", Float) = 1
		_Skake3018SpeedX("Skake 3018 Speed X", Range( 0 , 100)) = 0
		_Skake3018OffsetX("Skake 3018 Offset X", Range( -100 , 100)) = 0
		_Skake3018SpeedY("Skake 3018 Speed Y", Range( 0 , 100)) = 0
		_Skake3018OffsetY("Skake 3018 Offset Y", Range( -100 , 100)) = 0
		_Float0("Girlscam Speed", Float) = 1
		_GirlscamOffset("Girlscam Offset", Range( 0 , 1)) = 0
		[Toggle]_StableGirlscamOffset("Stable Girlscam Offset", Float) = 1
		_DesaturateOffset("Desaturate Offset", Range( -10 , 10)) = 0
		_GrayscaleOffset("Grayscale Offset", Range( -10 , 10)) = 0
		[HDR]_GrayscaleLerp("Grayscale Lerp", Color) = (1,1,1,1)
		[Toggle]_RGB("RGB", Float) = 0
		_RedXOffset("Red X Offset", Range( -0.1 , 0.1)) = 0
		_RedYOffset("Red Y Offset", Range( -0.1 , 0.1)) = 0
		[Toggle]_StableRGBRedOffset("Stable RGB Red Offset", Float) = 1
		_GreenXOffset("Green X Offset", Range( -0.1 , 0.1)) = 0
		_GreenYOffset("Green Y Offset", Range( -0.1 , 0.1)) = 0
		[Toggle]_StableRGBGreenOffset("Stable RGB Green Offset", Float) = 1
		_BlueXOffset("Blue X Offset", Range( -0.1 , 0.1)) = 0
		_BlueYOffset("Blue Y Offset", Range( -0.1 , 0.1)) = 0
		[Toggle]_StableRGBBlueOffset("Stable RGB Blue Offset", Float) = 1
		[Toggle]_ChromaticAberration("Chromatic Aberration", Float) = 0
		_CASpeed("CA Speed", Range( 0 , 100)) = 15
		_CAOffset("CA Offset", Range( -0.01 , 0.01)) = 0.0015
		[Toggle]_Blur("Blur", Float) = 0
		_BlurLerp("Blur Lerp", Range( 0 , 1)) = 1
		[Toggle]_BlurAuto("Blur Auto", Float) = 0
		_BlurSpeed("Blur Speed", Range( 0 , 100)) = 5
		_BlurOffset("Blur Offset", Range( 0 , 1)) = 0
		[Toggle]_StableBlurOffset("Stable Blur Offset", Float) = 1
		[Toggle]_RGBBlur("RGB Blur", Float) = 0
		_RGBBlurLerp("RGB Blur Lerp", Range( 0 , 1)) = 1
		[Toggle]_RGBBlurAuto("RGB Blur Auto", Float) = 0
		_RGBBlurSpeed("RGB Blur Speed", Range( 0 , 100)) = 5
		_RGBBlurOffset("RGB Blur Offset", Range( 0 , 1)) = 0.1
		_RGBBlurOffset2("RGB Blur Offset 2", Range( 0 , 2)) = 2
		[Toggle]_StableRGBBlurOffset("Stable RGB Blur Offset", Float) = 1
		_Neon("Neon", Range( 0 , 1)) = 0
		_NeonOffset("Neon Offset", Range( 0 , 0.01)) = 0.001
		[Toggle]_StableNeonOffset("Stable Neon Offset", Float) = 1
		_NeonNormalize("Neon Normalize", Range( 0 , 1)) = 0
		[HDR]_NormalizeColor("Normalize Color", Color) = (0,0,0,1)
		[HDR]_NeonColor("Neon Color", Color) = (0,0,0,1)
		[HDR]_Color("Color", Color) = (1,1,1,1)
		_ZoomOffset("Zoom Offset", Range( -1 , 1)) = 0
		_ZoomDegree("Zoom Degree", Range( 0 , 1)) = 0.75
		_ZoomDirection("Zoom Direction", Range( 0 , 1)) = 1
		_Brightness("Brightness", Range( 0 , 1)) = 1
		_Pixelate("Pixelate", Range( 0.0001 , 100)) = 0.0001
		_GammaCorrection("Gamma Correction", Range( 0 , 2)) = 0
		[Toggle]_8bittextureemulating("8-bit texture emulating", Float) = 0
		_8bitOffset("8-bit Offset", Range( 1 , 256)) = 1
		_Negative("Negative", Range( 0 , 1)) = 0
		_NegativeOffset("Negative Offset", Range( 0 , 1)) = 1
		_HUE("HUE", Range( 0 , 1)) = 0
		_HUEOffset("HUE Offset", Range( 0 , 1)) = 0
		[Toggle]_AutoHUE("Auto HUE", Float) = 0
		_HUESpeed("HUE Speed", Float) = 0.1
		_Xflipscreen("X flip-screen", Range( 0 , 1)) = 0
		_Yflipscreen("Y flip-screen", Range( 0 , 1)) = 0
		_Screenrotate("Screen rotate", Range( 0 , 1)) = 0
		_Xrotatescreen("X rotate-screen", Range( 0 , 1)) = 0
		_Yrotatescreen("Y rotate-screen", Range( 0 , 1)) = 0
		_MinDistance("Min Distance", Float) = 4
		_MaxDistance("Max Distance", Float) = 5
		_VREffectsMultiply("VR Effects Multiply", Float) = 0.5
		_DesktopEffectsMultiply("Desktop Effects Multiply", Float) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Overlay"  "Queue" = "Overlay+0" "IgnoreProjector" = "True" "ForceNoShadowCasting" = "True" "IsEmissive" = "true"  }
		Cull Front
		ZWrite Off
		ZTest Always
		GrabPass{ "_GrabbbbbSXomaINF" }
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#include "UnityCG.cginc"
		#include "UnityStandardUtils.cginc"
		#pragma target 3.0
		#pragma surface surf Unlit keepalpha noshadow noambient novertexlights nolightmap  nodynlightmap nodirlightmap nofog nometa noforwardadd 
		struct Input
		{
			float3 worldPos;
			float4 screenPos;
			float2 uv_texcoord;
		};

		uniform float _8bittextureemulating;
		uniform float _RGBBlur;
		uniform float _Blur;
		uniform float _RGB;
		uniform sampler2D _GrabbbbbSXomaINF;
		uniform float _Skake3018SpeedX;
		uniform float _Skake3018OffsetX;
		uniform float _VREffectsMultiply;
		uniform float _DesktopEffectsMultiply;
		uniform float _MaxDistance;
		uniform float _MinDistance;
		uniform float _ZoomOffset;
		uniform float _ZoomDegree;
		uniform float _Skake3018SpeedY;
		uniform float _Skake3018OffsetY;
		uniform float _Xflipscreen;
		uniform float _Yflipscreen;
		uniform float _Xrotatescreen;
		uniform float _Yrotatescreen;
		uniform float _Screenrotate;
		uniform float _Float0;
		uniform float _StableGirlscamOffset;
		uniform float _GirlscamOffset;
		uniform float _Pixelate;
		uniform float _StableDistortionOffset;
		uniform float _DistortionOffset;
		uniform sampler2D _DistortionNormalMap;
		uniform float _DistortionSpeed;
		uniform float _StableShakeOffset;
		uniform float _ShakeOffset;
		uniform sampler2D _ShakeNormalMap;
		uniform float _ShakeSpeed;
		uniform float _ZoomDirection;
		uniform float _ChromaticAberration;
		uniform float _StableRGBRedOffset;
		uniform float _RedXOffset;
		uniform float _RedYOffset;
		uniform float _StableRGBGreenOffset;
		uniform float _GreenXOffset;
		uniform float _GreenYOffset;
		uniform float _StableRGBBlueOffset;
		uniform float _BlueXOffset;
		uniform float _BlueYOffset;
		uniform float _CAOffset;
		uniform float _CASpeed;
		uniform float _StableBlurOffset;
		uniform float _BlurAuto;
		uniform float _BlurSpeed;
		uniform float _BlurOffset;
		uniform float _BlurLerp;
		uniform float _StableRGBBlurOffset;
		uniform float _RGBBlurAuto;
		uniform float _RGBBlurSpeed;
		uniform float _RGBBlurOffset;
		uniform float _RGBBlurOffset2;
		uniform float _RGBBlurLerp;
		uniform float4 _NeonColor;
		uniform float _StableNeonOffset;
		uniform float _NeonOffset;
		uniform float4 _NormalizeColor;
		uniform float _NeonNormalize;
		uniform float _Neon;
		uniform float4 _GrayscaleLerp;
		uniform float _GrayscaleOffset;
		uniform float _DesaturateOffset;
		uniform float4 _Color;
		uniform float _Brightness;
		uniform float _GammaCorrection;
		uniform float _8bitOffset;
		uniform float _NegativeOffset;
		uniform float _Negative;
		uniform float _AutoHUE;
		uniform float _HUEOffset;
		uniform float _HUESpeed;
		uniform float _HUE;


		float vrcheck1063( float _vr , float _desktop )
		{
			#if UNITY_SINGLE_PASS_STEREO
			float vrcheck = _vr;
			#else
			float vrcheck = _desktop;
			#endif
			return vrcheck;
		}


		float3 WorldSpaceCameraPos596(  )
		{
			#if UNITY_SINGLE_PASS_STEREO
			float3 cPos = (unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1])/2;
			#else
			float3 cPos = _WorldSpaceCameraPos;
			#endif
			return cPos;
		}


		float CustomCamera961(  )
		{
			#if UNITY_SINGLE_PASS_STEREO
			float3 wnorm = normalize(unity_StereoWorldSpaceCameraPos[1] - unity_StereoWorldSpaceCameraPos[0]);
			float3 vdir = mul(unity_CameraToWorld, float4(0,0,1,1)).xyz-_WorldSpaceCameraPos;
			vdir = vdir-dot(wnorm,vdir)*wnorm;
			float3 cPos = (unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1])/2;
			float3 odir = mul(unity_ObjectToWorld, float4(0,0,0,1)).xyz-cPos;
			#else
			float3 vdir = mul(unity_CameraToWorld, float4(0,0,1,1)).xyz-_WorldSpaceCameraPos;
			float3 odir = mul(unity_ObjectToWorld, float4(0,0,0,1)).xyz-_WorldSpaceCameraPos;
			#endif
			float dotresult = dot(normalize(vdir), normalize(odir));
			return dotresult;
		}


		float4 DistortionSS1004( float4 screenPos )
		{
			float4 vrScreenPos = float4(screenPos.xyz , screenPos.w + 0.00000000001);
			float4 vrScreenPosNorm = vrScreenPos / vrScreenPos.w;
			vrScreenPosNorm.z = (UNITY_NEAR_CLIP_VALUE >= 0) ? vrScreenPosNorm.z : vrScreenPosNorm.z * 0.5 + 0.5;
			return vrScreenPos;
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		float3 RGBToHSV(float3 c)
		{
			float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
			float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
			float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
			float d = q.x - min( q.w, q.y );
			float e = 1.0e-10;
			return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
		}

		inline fixed4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return fixed4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float mulTime1570 = _Time.y * _Skake3018SpeedX;
			float _vr1063 = _VREffectsMultiply;
			float _desktop1063 = _DesktopEffectsMultiply;
			float localvrcheck1063 = vrcheck1063( _vr1063 , _desktop1063 );
			float vr_check1066 = localvrcheck1063;
			float3 localWorldSpaceCameraPos596 = WorldSpaceCameraPos596();
			float3 break597 = localWorldSpaceCameraPos596;
			float4 transform598 = mul(unity_ObjectToWorld,float4( 0,0,0,1 ));
			float3 appendResult616 = (float3(abs( ( break597.x - transform598.x ) ) , abs( ( break597.y - transform598.y ) ) , abs( ( break597.z - transform598.z ) )));
			float ObjCamDist669 = length( appendResult616 );
			float MinDistance1030 = _MinDistance;
			float DistanceFade666 = saturate( ( ( ObjCamDist669 - _MaxDistance ) / ( MinDistance1030 - _MaxDistance ) ) );
			float lerpResult1580 = lerp( 0.0 , ( sin( mulTime1570 ) * ( ( _Skake3018OffsetX * vr_check1066 ) * 0.02 ) ) , DistanceFade666);
			float4 ase_vertex4Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float4 unityObjectToClipPos942 = UnityObjectToClipPos( ase_vertex4Pos.xyz );
			float4 computeGrabScreenPos945 = ComputeGrabScreenPos( unityObjectToClipPos942 );
			float4 unityObjectToClipPos944 = UnityObjectToClipPos( float4(0,0,0,1).xyz );
			float4 computeGrabScreenPos946 = ComputeGrabScreenPos( unityObjectToClipPos944 );
			float localCustomCamera961 = CustomCamera961();
			float lerpResult949 = lerp( 0.0 , ( _ZoomOffset * (( localCustomCamera961 > _ZoomDegree ) ? ( ( localCustomCamera961 - _ZoomDegree ) / ( 1.0 - _ZoomDegree ) ) :  0.0 ) ) , DistanceFade666);
			float2 lerpResult952 = lerp( ( (computeGrabScreenPos945).xy / (computeGrabScreenPos945).w ) , ( (computeGrabScreenPos946).xy / (computeGrabScreenPos946).w ) , lerpResult949);
			float mulTime1569 = _Time.y * _Skake3018SpeedY;
			float lerpResult1582 = lerp( 0.0 , ( sin( mulTime1569 ) * ( ( _Skake3018OffsetY * vr_check1066 ) * 0.02 ) ) , DistanceFade666);
			float2 appendResult1586 = (float2(( lerpResult1580 + (lerpResult952).x ) , ( lerpResult1582 + (lerpResult952).y )));
			float2 Shake3018Out1598 = appendResult1586;
			float2 break1001 = Shake3018Out1598;
			float lerpResult1019 = lerp( break1001.x , ( 1.0 - break1001.x ) , _Xflipscreen);
			float lerpResult1016 = lerp( break1001.y , ( 1.0 - break1001.y ) , _Yflipscreen);
			float2 appendResult1005 = (float2(lerpResult1019 , lerpResult1016));
			float lerpResult1023 = lerp( break1001.y , ( 1.0 - break1001.y ) , _Xrotatescreen);
			float lerpResult1024 = lerp( break1001.x , ( 1.0 - break1001.x ) , _Yrotatescreen);
			float2 appendResult1025 = (float2(lerpResult1023 , lerpResult1024));
			float2 lerpResult1021 = lerp( appendResult1005 , appendResult1025 , _Screenrotate);
			float2 lerpResult1033 = lerp( Shake3018Out1598 , lerpResult1021 , DistanceFade666);
			float2 toGirlscreencam1610 = lerpResult1033;
			float2 break1625 = toGirlscreencam1610;
			float mulTime1615 = _Time.y * _Float0;
			float temp_output_1644_0 = ( vr_check1066 * _GirlscamOffset );
			float lerpResult1643 = lerp( 0.0 , lerp(( temp_output_1644_0 / ObjCamDist669 ),temp_output_1644_0,_StableGirlscamOffset) , DistanceFade666);
			float temp_output_1616_0 = ( 1.0 - lerpResult1643 );
			float temp_output_1622_0 = (( temp_output_1616_0 + -1E-06 ) + (sin( mulTime1615 ) - -1.0) * (temp_output_1616_0 - ( temp_output_1616_0 + -1E-06 )) / (1.0 - -1.0));
			float2 appendResult3_g9 = (float2(break1625.y , temp_output_1622_0));
			float dotResult2_g9 = dot( appendResult3_g9 , float2( 12.9898,78.233 ) );
			float temp_output_1_0_g10 = ( sin( dotResult2_g9 ) * 43758.55 );
			float temp_output_1632_0 = ( ( ( temp_output_1_0_g10 - floor( temp_output_1_0_g10 ) ) * 2.0 ) - 1.0 );
			float temp_output_1627_0 = saturate( ( 1.2 * ( 1.0 - temp_output_1622_0 ) ) );
			float temp_output_1_0_g11 = ( break1625.x + ( temp_output_1632_0 * ( temp_output_1627_0 * step( ( ( pow( temp_output_1627_0 , 3.0 ) * 0.05 ) + 0.002 ) , abs( temp_output_1632_0 ) ) ) ) );
			float2 appendResult1640 = (float2(( temp_output_1_0_g11 - floor( temp_output_1_0_g11 ) ) , break1625.y));
			float2 toGrabScreenPosition1008 = appendResult1640;
			float2 temp_output_880_0 = ( (_ScreenParams).xy / _Pixelate );
			float temp_output_1081_0 = ( _DistortionOffset * vr_check1066 );
			float lerpResult1091 = lerp( 0.0 , lerp(( temp_output_1081_0 / ObjCamDist669 ),temp_output_1081_0,_StableDistortionOffset) , DistanceFade666);
			float mulTime1095 = _Time.y * _DistortionSpeed;
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float4 screenPos1004 = ase_screenPosNorm;
			float4 localDistortionSS1004 = DistortionSS1004( screenPos1004 );
			float2 panner111 = ( mulTime1095 * float2( 0,0 ) + localDistortionSS1004.xy);
			float cos1089 = cos( mulTime1095 );
			float sin1089 = sin( mulTime1095 );
			float2 rotator1089 = mul( panner111 - float2( 0,0 ) , float2x2( cos1089 , -sin1089 , sin1089 , cos1089 )) + float2( 0,0 );
			float temp_output_1080_0 = ( _ShakeOffset * vr_check1066 );
			float lerpResult1104 = lerp( 0.0 , lerp(( temp_output_1080_0 / ObjCamDist669 ),temp_output_1080_0,_StableShakeOffset) , 0.0);
			float2 uv_TexCoord171 = i.uv_texcoord * float2( 0,0 );
			float mulTime1105 = _Time.y * _ShakeSpeed;
			float cos174 = cos( mulTime1105 );
			float sin174 = sin( mulTime1105 );
			float2 rotator174 = mul( uv_TexCoord171 - float2( 0.5,0.5 ) , float2x2( cos174 , -sin174 , sin174 , cos174 )) + float2( 0.5,0.5 );
			float3 temp_output_179_0 = ( float3( ( round( ( toGrabScreenPosition1008 * temp_output_880_0 ) ) / temp_output_880_0 ) ,  0.0 ) + ( UnpackScaleNormal( tex2D( _DistortionNormalMap, rotator1089 ) ,lerpResult1091 ) + UnpackScaleNormal( tex2D( _ShakeNormalMap, rotator174 ) ,lerpResult1104 ) ) );
			float lerpResult777 = lerp( 1.0 , _ZoomDirection , DistanceFade666);
			float3 lerpResult489 = lerp( ( 1.0 - temp_output_179_0 ) , temp_output_179_0 , lerpResult777);
			float3 toGrabScreenColor838 = lerpResult489;
			float4 screenColor936 = tex2D( _GrabbbbbSXomaINF, toGrabScreenColor838.xy );
			float2 appendResult729 = (float2(_RedXOffset , _RedYOffset));
			float2 temp_output_1082_0 = ( appendResult729 * vr_check1066 );
			float2 lerpResult727 = lerp( float2( 0,0 ) , lerp(( temp_output_1082_0 / ObjCamDist669 ),temp_output_1082_0,_StableRGBRedOffset) , DistanceFade666);
			float4 screenColor414 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( lerpResult727 ,  0.0 ) ).xy );
			float2 appendResult401 = (float2(_GreenXOffset , _GreenYOffset));
			float2 temp_output_1083_0 = ( appendResult401 * vr_check1066 );
			float2 lerpResult682 = lerp( float2( 0,0 ) , lerp(( temp_output_1083_0 / ObjCamDist669 ),temp_output_1083_0,_StableRGBGreenOffset) , DistanceFade666);
			float4 screenColor412 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( lerpResult682 ,  0.0 ) ).xy );
			float2 appendResult737 = (float2(_BlueXOffset , _BlueYOffset));
			float2 temp_output_1084_0 = ( appendResult737 * vr_check1066 );
			float2 lerpResult735 = lerp( float2( 0,0 ) , lerp(( temp_output_1084_0 / ObjCamDist669 ),temp_output_1084_0,_StableRGBBlueOffset) , DistanceFade666);
			float4 screenColor411 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( lerpResult735 ,  0.0 ) ).xy );
			float3 appendResult423 = (float3(screenColor414.r , screenColor412.g , screenColor411.b));
			float2 uv_TexCoord462 = i.uv_texcoord * float2( 0,0 );
			float2 temp_cast_12 = (( _CAOffset * vr_check1066 )).xx;
			float cos463 = cos( ( _Time.y * _CASpeed ) );
			float sin463 = sin( ( _Time.y * _CASpeed ) );
			float2 rotator463 = mul( uv_TexCoord462 - temp_cast_12 , float2x2( cos463 , -sin463 , sin463 , cos463 )) + temp_cast_12;
			float2 appendResult475 = (float2(rotator463.x , 0.0));
			float2 lerpResult769 = lerp( float2( 0,0 ) , ( appendResult475 / ObjCamDist669 ) , DistanceFade666);
			float4 screenColor482 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( lerpResult769 ,  0.0 ) ).xy );
			float4 screenColor480 = tex2D( _GrabbbbbSXomaINF, toGrabScreenColor838.xy );
			float2 appendResult474 = (float2(-rotator463.x , 0.0));
			float2 lerpResult767 = lerp( float2( 0,0 ) , ( appendResult474 / ObjCamDist669 ) , DistanceFade666);
			float4 screenColor481 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( lerpResult767 ,  0.0 ) ).xy );
			float3 appendResult483 = (float3(screenColor482.r , screenColor480.g , screenColor481.b));
			float3 RGBColor863 = lerp(appendResult423,appendResult483,_ChromaticAberration);
			float4 screenColor830 = tex2D( _GrabbbbbSXomaINF, toGrabScreenColor838.xy );
			float mulTime1566 = _Time.y * _BlurSpeed;
			float temp_output_800_0 = ( (0.05 + (sin( lerp(_BlurSpeed,mulTime1566,_BlurAuto) ) - -1.0) * (1.0 - 0.05) / (1.0 - -1.0)) * ( _BlurOffset * vr_check1066 ) );
			float lerpResult804 = lerp( 0.0 , lerp(( temp_output_800_0 / ObjCamDist669 ),temp_output_800_0,_StableBlurOffset) , DistanceFade666);
			float2 appendResult810 = (float2(lerpResult804 , 0.0));
			float4 screenColor831 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult810 ,  0.0 ) ).xy );
			float2 appendResult807 = (float2(-lerpResult804 , 0.0));
			float4 screenColor827 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult807 ,  0.0 ) ).xy );
			float2 appendResult811 = (float2(0.0 , lerpResult804));
			float4 screenColor825 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult811 ,  0.0 ) ).xy );
			float2 appendResult808 = (float2(0.0 , -lerpResult804));
			float4 screenColor829 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult808 ,  0.0 ) ).xy );
			float2 appendResult809 = (float2(-lerpResult804 , -lerpResult804));
			float4 screenColor823 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult809 ,  0.0 ) ).xy );
			float2 appendResult813 = (float2(lerpResult804 , lerpResult804));
			float4 screenColor828 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult813 ,  0.0 ) ).xy );
			float2 appendResult812 = (float2(-lerpResult804 , lerpResult804));
			float4 screenColor824 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult812 ,  0.0 ) ).xy );
			float2 appendResult806 = (float2(lerpResult804 , -lerpResult804));
			float4 screenColor826 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult806 ,  0.0 ) ).xy );
			float4 BlurColor841 = ( ( screenColor830 + screenColor831 + screenColor827 + screenColor825 + screenColor829 + screenColor823 + screenColor828 + screenColor824 + screenColor826 ) / 9.0 );
			float4 lerpResult1563 = lerp( lerp(screenColor936,float4( RGBColor863 , 0.0 ),_RGB) , BlurColor841 , _BlurLerp);
			float mulTime1454 = _Time.y * _RGBBlurSpeed;
			float temp_output_1544_0 = ( (0.05 + (sin( lerp(_RGBBlurSpeed,mulTime1454,_RGBBlurAuto) ) - -1.0) * (1.0 - 0.05) / (1.0 - -1.0)) * ( _RGBBlurOffset * vr_check1066 ) );
			float lerpResult1542 = lerp( 0.0 , lerp(( temp_output_1544_0 / ObjCamDist669 ),temp_output_1544_0,_StableRGBBlurOffset) , DistanceFade666);
			float2 appendResult1498 = (float2(lerpResult1542 , 0.0));
			float4 screenColor1524 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1498 ,  0.0 ) ).xy );
			float2 appendResult1467 = (float2(0.0 , lerpResult1542));
			float4 screenColor1506 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1467 ,  0.0 ) ).xy );
			float2 appendResult1473 = (float2(0.0 , -lerpResult1542));
			float4 screenColor1507 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1473 ,  0.0 ) ).xy );
			float2 appendResult1497 = (float2(-lerpResult1542 , 0.0));
			float4 screenColor1529 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1497 ,  0.0 ) ).xy );
			float3 appendResult1531 = (float3(screenColor1524.r , ( ( screenColor1506.g + screenColor1507.g ) / 2.0 ) , screenColor1529.b));
			float2 appendResult1471 = (float2(lerpResult1542 , -lerpResult1542));
			float4 screenColor1492 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1471 ,  0.0 ) ).xy );
			float2 appendResult1468 = (float2(lerpResult1542 , lerpResult1542));
			float4 screenColor1493 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1468 ,  0.0 ) ).xy );
			float4 screenColor1523 = tex2D( _GrabbbbbSXomaINF, toGrabScreenColor838.xy );
			float2 appendResult1469 = (float2(-lerpResult1542 , -lerpResult1542));
			float4 screenColor1494 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1469 ,  0.0 ) ).xy );
			float2 appendResult1470 = (float2(-lerpResult1542 , lerpResult1542));
			float4 screenColor1495 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1470 ,  0.0 ) ).xy );
			float3 appendResult1537 = (float3(( ( screenColor1492.r + screenColor1493.r ) / 2.0 ) , screenColor1523.g , ( ( screenColor1494.b + screenColor1495.b ) / 2.0 )));
			float temp_output_1461_0 = ( lerpResult1542 * _RGBBlurOffset2 );
			float2 appendResult1500 = (float2(temp_output_1461_0 , 0.0));
			float4 screenColor1518 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1500 ,  0.0 ) ).xy );
			float2 appendResult1474 = (float2(0.0 , temp_output_1461_0));
			float4 screenColor1505 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1474 ,  0.0 ) ).xy );
			float2 appendResult1476 = (float2(0.0 , -temp_output_1461_0));
			float4 screenColor1501 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1476 ,  0.0 ) ).xy );
			float2 appendResult1496 = (float2(-temp_output_1461_0 , 0.0));
			float4 screenColor1527 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1496 ,  0.0 ) ).xy );
			float3 appendResult1530 = (float3(screenColor1518.r , ( ( screenColor1505.g + screenColor1501.g ) / 2.0 ) , screenColor1527.b));
			float2 appendResult1479 = (float2(temp_output_1461_0 , -temp_output_1461_0));
			float4 screenColor1502 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1479 ,  0.0 ) ).xy );
			float2 appendResult1477 = (float2(temp_output_1461_0 , temp_output_1461_0));
			float4 screenColor1503 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1477 ,  0.0 ) ).xy );
			float4 screenColor1519 = tex2D( _GrabbbbbSXomaINF, toGrabScreenColor838.xy );
			float2 appendResult1472 = (float2(-temp_output_1461_0 , -temp_output_1461_0));
			float4 screenColor1499 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1472 ,  0.0 ) ).xy );
			float2 appendResult1466 = (float2(-temp_output_1461_0 , temp_output_1461_0));
			float4 screenColor1504 = tex2D( _GrabbbbbSXomaINF, ( toGrabScreenColor838 + float3( appendResult1466 ,  0.0 ) ).xy );
			float3 appendResult1538 = (float3(( ( screenColor1502.r + screenColor1503.r ) / 2.0 ) , screenColor1519.g , ( ( screenColor1499.b + screenColor1504.b ) / 2.0 )));
			float3 RGBBlur1539 = ( ( ( appendResult1531 + appendResult1537 ) + ( appendResult1530 + appendResult1538 ) ) / 4.0 );
			float4 lerpResult1129 = lerp( lerp(lerp(screenColor936,float4( RGBColor863 , 0.0 ),_RGB),lerpResult1563,_Blur) , float4( RGBBlur1539 , 0.0 ) , _RGBBlurLerp);
			float4 lerpResult1061 = lerp( float4( 1,1,1,1 ) , _NeonColor , DistanceFade666);
			float4 screenColor894 = tex2D( _GrabbbbbSXomaINF, toGrabScreenColor838.xy );
			float3 break890 = toGrabScreenColor838;
			float temp_output_1086_0 = ( _NeonOffset * vr_check1066 );
			float lerpResult991 = lerp( 0.0 , lerp(( temp_output_1086_0 / ObjCamDist669 ),temp_output_1086_0,_StableNeonOffset) , DistanceFade666);
			float2 appendResult896 = (float2(( break890.x + lerpResult991 ) , break890.y));
			float4 screenColor897 = tex2D( _GrabbbbbSXomaINF, appendResult896 );
			float2 appendResult898 = (float2(break890.x , ( break890.y + lerpResult991 )));
			float4 screenColor904 = tex2D( _GrabbbbbSXomaINF, appendResult898 );
			float2 appendResult902 = (float2(( break890.x - lerpResult991 ) , break890.y));
			float4 screenColor906 = tex2D( _GrabbbbbSXomaINF, appendResult902 );
			float2 appendResult905 = (float2(break890.x , ( break890.y - lerpResult991 )));
			float4 screenColor909 = tex2D( _GrabbbbbSXomaINF, appendResult905 );
			float4 temp_output_910_0 = ( ( ( ( ( 4.0 * screenColor894 ) - screenColor897 ) - screenColor904 ) - screenColor906 ) - screenColor909 );
			float4 normalizeResult912 = normalize( temp_output_910_0 );
			float4 lerpResult1055 = lerp( float4( 0,0,0,0 ) , _NormalizeColor , DistanceFade666);
			float4 ifLocalVar914 = 0;
			if( length( temp_output_910_0 ) > 0.01 )
				ifLocalVar914 = normalizeResult912;
			else if( length( temp_output_910_0 ) < 0.01 )
				ifLocalVar914 = lerpResult1055;
			float4 lerpResult1555 = lerp( temp_output_910_0 , ifLocalVar914 , _NeonNormalize);
			float4 NeonColor918 = lerpResult1555;
			float4 lerpResult1557 = lerp( lerp(lerp(lerp(screenColor936,float4( RGBColor863 , 0.0 ),_RGB),lerpResult1563,_Blur),lerpResult1129,_RGBBlur) , ( ( lerp(lerp(lerp(screenColor936,float4( RGBColor863 , 0.0 ),_RGB),lerpResult1563,_Blur),lerpResult1129,_RGBBlur) * lerpResult1061 ) + NeonColor918 ) , _Neon);
			float grayscale108 = Luminance(lerpResult1557.rgb);
			float4 temp_cast_78 = (grayscale108).xxxx;
			float4 lerpResult748 = lerp( float4( 0,0,0,0 ) , ( _GrayscaleLerp * _GrayscaleOffset ) , DistanceFade666);
			float4 lerpResult147 = lerp( lerpResult1557 , temp_cast_78 , lerpResult748.r);
			float lerpResult754 = lerp( 0.0 , _DesaturateOffset , DistanceFade666);
			float3 desaturateInitialColor133 = lerpResult147.rgb;
			float desaturateDot133 = dot( desaturateInitialColor133, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar133 = lerp( desaturateInitialColor133, desaturateDot133.xxx, lerpResult754 );
			float4 lerpResult763 = lerp( float4( 1,1,1,1 ) , _Color , DistanceFade666);
			float lerpResult756 = lerp( 1.0 , _Brightness , DistanceFade666);
			float4 temp_output_131_0 = ( ( float4( desaturateVar133 , 0.0 ) * lerpResult763 ) / lerpResult756 );
			float3 gammaToLinear670 = GammaToLinearSpace( temp_output_131_0.rgb );
			float4 lerpResult856 = lerp( temp_output_131_0 , float4( gammaToLinear670 , 0.0 ) , DistanceFade666);
			float4 lerpResult1111 = lerp( temp_output_131_0 , lerpResult856 , _GammaCorrection);
			float lerpResult990 = lerp( 1.0 , _8bitOffset , DistanceFade666);
			float div886=256.0/float((int)lerpResult990);
			float4 posterize886 = ( floor( lerpResult1111 * div886 ) / div886 );
			float4 temp_cast_89 = (_NegativeOffset).xxxx;
			float4 lerpResult1608 = lerp( lerp(lerpResult1111,posterize886,_8bittextureemulating) , ( temp_cast_89 - lerp(lerpResult1111,posterize886,_8bittextureemulating) ) , _Negative);
			float3 hsvTorgb1120 = RGBToHSV( lerpResult1608.rgb );
			float3 hsvTorgb1122 = HSVToRGB( float3(lerp(_HUEOffset,( _HUESpeed * _Time.y ),_AutoHUE),hsvTorgb1120.y,hsvTorgb1120.z) );
			float lerpResult1125 = lerp( 0.0 , _HUE , DistanceFade666);
			float4 lerpResult1124 = lerp( lerpResult1608 , float4( hsvTorgb1122 , 0.0 ) , lerpResult1125);
			o.Emission = lerpResult1124.rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	CustomEditor "ASEMaterialInspector"
}