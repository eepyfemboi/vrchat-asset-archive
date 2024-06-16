
// Copyright © 2019 Leviant
// Email: leviant@yandex.ru  
// Discord: Leviant#8796
// License: http://opensource.org/licenses/MIT
// Version: 4.20 alpha (10.01.2019)

Shader "DocMe/Beautiful_V4.20.shader" 
{
	Properties 
	{
		[Space(10)]
		[Header(Shader range)]
		_MinRange ("Start fading", Float) = 2.0
		_MaxRange ("End distance", Float) = 10.0

		[Space(10)]
		[Header(Screen Shake)]
		[Toggle]Shake("Screen Shake Toggle", Int) = 0
		[Normal]_ShakeTex("Shake normalmap", 2D) = "bump" {}
		[PowerSlider(2.0)]_SIntensity_X ("Shake Intensity X", Range(0, 1)) = 0.01
		[PowerSlider(2.0)]_SIntensity_Y ("Shake Intensity Y", Range(0, 1)) = 0.01
		_ShakeScroll("Shake Scroll", Vector) = (2, 0.02, 0, 0)
		_ShakeWave("Wave amplitude(XY)/Freq(ZW)", Vector) = (0.01, 0.01, 20, 19)

		[Space(10)]
		[Header(Screen Distorsion)]
		[Toggle]Distorsion("Screen Distorsion Toggle", Int) = 0
		[Toggle]Wave_Distorsion("Wave Toggle", Int) = 1
		[Toggle]Texture_Distorsion("Texture Toggle", Int) = 0
		[Normal]_DistorsionTex("Distorsion normalmap", 2D) = "bump" {}
		[PowerSlider(2.0)]_DIntensity_X ("Horizontal Distorsion", Range(0, 10)) = 0.01
		[PowerSlider(2.0)]_DIntensity_Y ("Vertical Distorsion", Range(0, 10)) = 0.01
		_DistorsionScroll("Texture(XY)/Wave(ZW) Scroll", Vector) = (0, 0, 2.6, -3.1)
		_DistorsionWave("Wave amplitude(XY)/Freq(ZW)", Vector) = (1.0, 1.0, 8.4, 3)

		[Space(10)]
		[Header(Pixelization)]
		[Toggle]Pixelization("Pixelization Toggle", Int) = 0
		[PowerSlider(2.0)]_PSize_X ("Pixel Width", Range(1.0, 128.0)) = 4.0
		[PowerSlider(2.0)]_PSize_Y ("Pixel Height", Range(1.0, 128.0)) = 4.0
		[Header(Posterization)]
		[Toggle]Posterization("Posterization Toggle", Int) = 0
		[PowerSlider(2.0)]_PosterizationSteps("Gradient steps", Range(1.0, 256.0)) = 16.0

		[Space(10)]
		[Header(Screen Transform)]
		_ScreenHorizontalFlip("Horizontal Flip", Range(0.0, 1.0)) = 0
		_ScreenVerticalFlip("Vertical Flip", Range(0.0, 1.0)) = 0

		[Space(10)]
		[Toggle]ScreenRotation("Screen Rotation Toggle", Int) = 0
		_ScreenRotation("Rotation angle", Float) = 0.1
		_ScreenRotationSpeed("Rotation speed shake", Float) = 2.0

		[Space(10)]
		[Header(Zoom and Magnification)]
		[KeywordEnum(OFF, Simple scale, Zoom, Zoom falloff, Centering, Gravitational lens)]Magnification("Zoom mode", Int) = 0
		[PowerSlider(2.0)]_Magnification("Zoom/Scale", Range (-1, 1)) = 0.1
		[PowerSlider(2.0)]_Gravitation("Gravitation range", Range (0, 100.0)) = 1.0
		_AngleStartFade("Angle range", Range (0, 1)) = 0.25
		_MaxAngle("Max angle range", Range (0, 1)) = 0.5

		[Space(10)]
		[Header(Blur)]
		[KeywordEnum(OFF, Horizontal, Star, Circle, Radial)]Blur("Blur mode", Int) = 0
		[Toggle]Blur_Distorsion("Blur with Distorsion", Int) = 0
		[HDR]_BlurColor("Blur Color (RGBA)", Color) = (1,1,1,1)
		[PowerSlider(2.0)]_BlurRange ("Blur Range", Range(0, 1)) = 0.01
		_BlurRotation ("Blur rotation phase", Float) = 0.0
		_BlurRotationSpeed("Blur rotation speed", Float) = 0
		_BlurIterations ("Samples", Range(1, 128)) = 8.0
		_BlurCenterOffset("Blur center offset", Vector) = (0, 0, 0, 0)
		_BlurMask("Blur Mask effect", Range(0.0, 1.0)) = 0.5

		[Space(10)]
		[Header(Chromatic Aberration)]
		[KeywordEnum(OFF, Vector, Radial)]Chromatic_Aberration("Chromatic Aberration mode", Int) = 0
		[KeywordEnum(Simple split, Multisampling)]Aberration_Quality("Aberration quality", Int) = 1
		[Toggle]_CA_Distorsion("Aberration with Distorsion", Int) = 0
		[PowerSlider(2.0)]_CA_amplitude("Amplitude", Range(0.0, 0.2)) = 0.015
		_CA_iterations ("Samples", Range(1, 128.0)) = 8.0
		_CA_speed("Animation Speed", Float) = 0.0
		_CA_direction("Vector direction", Vector) = (1, 0, 0, 0)
		_CA_factor ("Aberration effect", Range(0, 1.0)) = 1.0
		_CA_centerOffset("Radial center offset", Vector) = (0, 0, 0, 0)
		_CA_mask("Aberration Mask effect", Range(0.0, 1.0)) = 0.5

		[Space(10)]
		[Header(HSV color space)]
		[Space(5)]
		[Toggle]HSV_Selection("hsv Color Selection Toggle", Int) = 0
		_TargetColor("Select color (RGB)", Color) = (1,0,0,1)
		_HueRange("Hue range", Range(0, 0.5)) = 0.02
		_SaturationRange("Saturation range", Range(0, 1)) = 0.4
		_LightnessRange("Lightness range", Range(0, 1)) = 1
		_HueSmoothRange("Hue fade", Range(0, 0.5)) = 0.02
		_SaturationSmoothRange("Saturation fade", Range(0, 1)) = 0.1
		_LightnessSmoothRange("Lightness fade", Range(0, 1)) = 1
		[Toggle]HSV_Desaturate_Selected("Desaturate", Int) = 1

		[Space(10)]
		[Toggle]HSV_Transform("hsv Color Transform Toggle", Int) = 0
		_TransformColor("Transform color (RGB)", Color) = (0, 0, 1, 1)
		_Hue("Hue value", Range(0, 1)) = 1.0
		_HueAnimationSpeed("Hue Animation Speed", Float) = 0.0
		_Saturation("Saturation value", Range(0, 1)) = 0
		_Lightness("Lightness value", Range(0, 1)) = 0

		[Space(10)]
		[Header(Neon)]
		[Toggle]Neon("Neon Toggle", Int) = 0
		[HDR]_NeonColor("Neon Tint (RGBA)", Color) = (1, 1, 1, 1)
		_NeonOrigColor("Background Color (RGBA)", Color) = (0.25, 0.25, 0.25, 1)
		_NeonBrightness("Brightness", Float) = 3.0
		_NeonPosterization("Posterization", Range (0.0, 1.0)) = 1.0
		_NeonWidth("Width", Float) = 1.5
		_NeonGlow("Glow", Range (0.0, 1.0)) = 1.0

		[Space(10)]
		[Header(Color Correction)]
		[Toggle]Color_Tint("Color Correction Toggle", Int) = 0
		[HDR]_EmissionColor("Emission color (RGB)", Color) = (0, 0, 0, 1)
		[HDR]_Color("Mix color (RGBA)", Color) = (0, 0, 0, 0)
		_Grayscale("Grayscale", Range (0.0, 1.0)) = 0.0
		_Contrast("Contrast", Vector) = (1.0, 1.0, 1.0, 1.0)
		_Gamma("Gamma", Vector) = (1.0, 1.0, 1.0, 1.0)
		_Brightness("Brightness", Vector) = (1.0, 1.0, 1.0, 1.0)
		_RedInvert("Red Invert", Range (0.0, 1.0)) = 0.0
		_GreenInvert("Green Invert", Range (0.0, 1.0)) = 0.0
		_BlueInvert("Blue Invert", Range (0.0, 1.0)) = 0.0

		[Space(10)]
		[Header(Fog)]
		[Toggle]Fragment_Fog("Fog Toggle", Int) = 0
		_FogColor("Fog Color (RGBA)", Color) = (1, 1, 1, 1)
		_FogDensity("Fog Density", Float) = 0.05
		_FogMask("Fog Mask effect", Range(0.0, 1.0)) = 0.5

		[Space(10)]
		[Header(Rim and Matcap)]
		[Toggle]Fragment_Rim("Rim+Matcap Toggle", Int) = 0
		_RimMatcapTex("Matcap", 2D) = "white" {}
		_RimMatcap("Matcap mix", Range (0.0, 1.0)) = 0.0
		[HDR]_RimColor("Rim Color (RGBA)", Color) = (1, 1, 1, 1)
		_RimPower("Rim Power", Float) = 1.7
		_RimContrast("Rim Contrast", Float) = 10000.0
		_RimFadeStart("Rim Fade start", Float) = 2.0
		_RimFadeEnd("Rim Fade end", Float) = 20.0
		_Rim_Mask("Rim Mask effect", Range(0.0, 1.0)) = 0.25

		[Space(10)]
		[Header(Outline)]
		[Toggle]Outline("Outline Toggle", Int) = 0
		[HDR]_OutlineColor("Outline Color (RGBA)", Color) = (1, 0, 0, 0.5)
		_OutlineSharpness("Sharpness", Float) = 100.0
		_OutlineWidth("Width", Range (1.0, 32.0)) = 1.0

		[Space(10)]
		[Header(Vignette)]
		[Toggle]Vignette("Vignette Toggle", Int) = 0
		_VignetteColor("Vignette Color (RGBA)", Color) = (0, 0, 0, 0.85)
		_VignetteWidth("Vignette density", Float) = 0.25

		[Space(10)]
		[Header(Overlay Texture)]
		[Toggle]Overlay_Texture("Overlay Toggle", Int) = 0
		_OverlayTex("Texture", 2D) = "white" {}
		[HDR]_OverlayTint("Tint (RGBA)", Color) = (1, 1, 1, 1)
		_OverlayScroll("Overlay Scroll Vector", Vector) = (0, 1, 0, 0)

		[Space(10)]
		[Header(Mask Texture)]
		[Toggle]Mask_Texture("Mask Toggle", Int) = 0
		[Toggle]Mask_Multisampling("Multisampling", Int) = 0
		_MaskTex("Mask", 2D) = "white" {}
		[HDR]_MaskColor("Mask mix color (RGBA)", Color) = (1, 1, 1, 0)
		_MaskScroll("Mask Scroll Vector", Vector) = (0, 0, 0, 0)
		
		[Space(10)]
		[Header(Other settings)]
		[Toggle]Particle_Render("Setup for Particle system", Int) = 0
	}
	SubShader 
	{
		Tags { "Queue"="Overlay+2" "RenderType"="Transparent" "IgnoreProjector" = "True" "ForceNoShadowCasting" = "True"}
		Cull Off	
		ZTest Off
		GrabPass { "_Levi" }
		Pass {
			CGPROGRAM
			//#pragma enable_d3d11_debug_symbols
			#pragma target 4.0
			#pragma vertex vert
			#pragma fragment frag	
			#pragma shader_feature PARTICLE_RENDER_ON
			#pragma shader_feature COLOR_TINT_ON
			#pragma shader_feature SHAKE_ON
			#pragma shader_feature DISTORSION_ON
			#pragma shader_feature TEXTURE_DISTORSION_ON
			#pragma shader_feature WAVE_DISTORSION_ON
			#pragma shader_feature PIXELIZATION_ON
			#pragma shader_feature POSTERIZATION_ON
			#pragma shader_feature SCREENROTATION_ON
			#pragma multi_compile MAGNIFICATION_OFF MAGNIFICATION_SIMPLE_SCALE MAGNIFICATION_ZOOM MAGNIFICATION_ZOOM_FALLOFF MAGNIFICATION_CENTERING MAGNIFICATION_GRAVITATIONAL_LENS
			#pragma multi_compile BLUR_OFF BLUR_HORIZONTAL BLUR_STAR BLUR_CIRCLE BLUR_RADIAL
			#pragma multi_compile CHROMATIC_ABERRATION_OFF CHROMATIC_ABERRATION_VECTOR CHROMATIC_ABERRATION_RADIAL
			#pragma multi_compile ABERRATION_QUALITY_SIMPLE_SPLIT ABERRATION_QUALITY_MULTISAMPLING
			#pragma shader_feature _CA_DISTORSION_ON
			#pragma shader_feature BLUR_DISTORSION_ON
			#pragma shader_feature NEON_ON
			#pragma shader_feature HSV_SELECTION_ON
			#pragma shader_feature HSV_DESATURATE_SELECTED_ON
			#pragma shader_feature HSV_TRANSFORM_ON
			#pragma shader_feature OUTLINE_ON
			#pragma shader_feature FRAGMENT_FOG_ON
			#pragma shader_feature FRAGMENT_RIM_ON
			#pragma shader_feature VIGNETTE_ON
			#pragma shader_feature OVERLAY_TEXTURE_ON
			#pragma shader_feature MASK_TEXTURE_ON
			#pragma shader_feature MASK_MULTISAMPLING_ON
			//Total: 754974720 variants of this shader OwO

			#include "UnityCG.cginc"

			#if defined(MAGNIFICATION_SIMPLE_SCALE) || defined(MAGNIFICATION_ZOOM) || defined(MAGNIFICATION_ZOOM_FALLOFF) || defined(MAGNIFICATION_CENTERING) || defined(MAGNIFICATION_GRAVITATIONAL_LENS)
				#define MAGNIFICATION
			#endif

			#if defined(BLUR_HORIZONTAL) || defined(BLUR_STAR) || defined(BLUR_CIRCLE) || defined(BLUR_RADIAL)
				#define BLUR
			#endif

			#if defined(CHROMATIC_ABERRATION_SIMPLE) || defined(CHROMATIC_ABERRATION_VECTOR) || defined(CHROMATIC_ABERRATION_RADIAL)
				#define CHROMATIC_ABERRATION
			#endif

			#if defined(OUTLINE_ON) || defined(FRAGMENT_FOG_ON) || defined(FRAGMENT_RIM_ON)
				#define USE_DEPTH_TEXTURE
			#endif

			struct appdata
			{
				float4 vertex : POSITION;
			#ifdef PARTICLE_RENDER_ON
				float4 texcoord : TEXCOORD0; //xyz - Particle center
			#endif
			};

			struct v2f 
			{
				float4 pos : SV_POSITION;
				float4 grabPos : TEXCOORD0;
				float4 uv : TEXCOORD1; //[0 .. 1] overlayScreenSpace
				float falloff: TEXCOORD2; //[0 .. 1] shader effect strength
			#ifdef MAGNIFICATION
				float3 viewPos : TEXCOORD3;
				float3 viewCenter : TEXCOORD4;
			#endif
			};

			uniform sampler2D _Levi;
			uniform float4 _Levi_TexelSize;
		
		#ifdef USE_DEPTH_TEXTURE
			uniform sampler2D _CameraDepthTexture;
			uniform float4 _CameraDepthTexture_TexelSize;
		#endif //USE_DEPTH_TEXTURE

			//Falloff
			uniform float _MaxRange;
			uniform float _MinRange;
		#if defined(DISTORSION_ON) || defined(_CA_DISTORSION_ON) || defined(BLUR_DISTORSION_ON)
			#ifdef TEXTURE_DISTORSION_ON
				uniform sampler2D _DistorsionTex;
				uniform float4 _DistorsionTex_ST;
				uniform float4 _DistorsionTex_TexelSize;
			#endif
			uniform float _DIntensity_X;
			uniform float _DIntensity_Y;
			uniform float4 _DistorsionScroll;

			uniform float4 _DistorsionWave;
		#endif //DISTORSION_ON

		#ifdef PIXELIZATION_ON
			uniform float _PSize_X;
			uniform float _PSize_Y;
		#endif //PIXELIZATION_ON

		#ifdef POSTERIZATION_ON
			uniform float _PosterizationSteps;
		#endif //POSTERIZATION_ON

		#ifdef SCREENROTATION_ON
			uniform float _ScreenRotation;
			uniform float _ScreenRotationSpeed;
		#endif //SCREENROTATION_ON

		#ifdef SHAKE_ON
			uniform sampler2D _ShakeTex;
			uniform float4 _ShakeTex_ST;
			uniform float4 _ShakeWave;
			uniform float4 _ShakeScroll;
			uniform float _SIntensity_X;
			uniform float _SIntensity_Y;
			
		#endif //SHAKE_ON

			uniform float _ScreenHorizontalFlip;
			uniform float _ScreenVerticalFlip;
		
		#ifdef CHROMATIC_ABERRATION
			uniform float _CA_amplitude;
			uniform float _CA_speed;
			uniform float _CA_iterations;
			uniform float _CA_factor;
			uniform float _CA_mask;
			uniform float4 _CA_centerOffset;
		#endif //CHROMATIC_ABERRATION

		#ifdef CHROMATIC_ABERRATION_VECTOR
			uniform float2 _CA_direction;
		#endif //_CHROMATIC_ABERRATION_VECTOR

		#ifdef BLUR
			uniform float _BlurRange;
			uniform float _BlurIterations;
			uniform float _BlurRotation;
			uniform float _BlurRotationSpeed;
			uniform float _BlurMask;
			uniform float4 _BlurCenterOffset;
			uniform float4 _BlurColor;
		#endif //BLUR

		#ifdef MAGNIFICATION
			uniform float _Magnification;
			uniform float _Gravitation;
			uniform float _AngleStartFade;
			uniform float _MaxAngle;
		#endif //MAGNIFICATION

		#ifdef COLOR_TINT_ON
			uniform float4 _EmissionColor;
			uniform float4 _Color;
			uniform float4 _Contrast;
			uniform float4 _Gamma;
			uniform float4 _Brightness;
			uniform float _Grayscale;
			uniform float _RedInvert;
			uniform float _GreenInvert;
			uniform float _BlueInvert;
		#endif //COLOR_TINT_ON

		#ifdef HSV_SELECTION_ON
			uniform float4 _TargetColor;
			uniform float _HueRange;
			uniform float _SaturationRange;
			uniform float _LightnessRange;
			uniform float _HueSmoothRange;
			uniform float _SaturationSmoothRange;
			uniform float _LightnessSmoothRange;
		#endif //HSV_SELECTION_ON

		#ifdef HSV_TRANSFORM_ON
			uniform float4 _TransformColor;
			uniform float _HueAnimationSpeed;
			uniform float _Hue;
			uniform float _Saturation;
			uniform float _Lightness;
		#endif //HSV_TRANSFORM_ON

		#ifdef NEON_ON
			uniform float4 _NeonColor;
			uniform float4 _NeonOrigColor;
			uniform float _NeonBrightness;
			uniform float _NeonPosterization;
			uniform float _NeonWidth;
			uniform float _NeonGlow;
		#endif //NEON_ON

		#ifdef OUTLINE_ON
			uniform float _OutlineSharpness;
			uniform float _OutlineWidth;
			uniform float4 _OutlineColor;
		#endif //Outline

		#ifdef FRAGMENT_FOG_ON
			uniform float4 _FogColor;
			uniform float _FogDensity;
			uniform float _FogMask;
		#endif //FRAGMENT_FOG_ON

		#ifdef FRAGMENT_RIM_ON
			uniform Texture2D _RimMatcapTex;
			uniform SamplerState linear_clamp_sampler;
			uniform float4 _RimColor;
			uniform float _RimMatcap;
			uniform float _RimPower;
			uniform float _RimContrast;
			uniform float _RimFadeStart;
			uniform float _RimFadeEnd;
			uniform float _Rim_Mask;
		#endif //FRAGMENT_RIM_ON

		#ifdef VIGNETTE_ON
			uniform float4 _VignetteColor;
			uniform float _VignetteWidth;
		#endif //VIGNETTE_ON

		#ifdef OVERLAY_TEXTURE_ON
			uniform sampler2D _OverlayTex;
			uniform float4 _OverlayTex_ST;
			uniform float4 _OverlayScroll;
			uniform float4 _OverlayTint;
		#endif //OVERLAY_TEXTURE_ON

		#ifdef MASK_TEXTURE_ON
			uniform sampler2D _MaskTex;
			uniform float4 _MaskTex_ST;
			uniform float4 _MaskScroll;
			uniform float4 _MaskColor;
		#endif //MASK_TEXTURE_ON

			float3 nonStereoCameraPosition()
			{
				#if UNITY_SINGLE_PASS_STEREO
					return (unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1])*0.5;
				#else
					return _WorldSpaceCameraPos;
				#endif
			}
			float2 ComputeWindowUV(float2 screenUV)
			{
				#if UNITY_SINGLE_PASS_STEREO
					// If Single-Pass Stereo mode is active, transform the
					// coordinates to get the correct output UV for the current eye.
					float4 scaleOffset = unity_StereoScaleOffset[unity_StereoEyeIndex];
					screenUV = (screenUV - scaleOffset.zw) / scaleOffset.xy;
				#else
					return screenUV;
				#endif
			}

			v2f vert(appdata v) 
			{
				v2f o;
				
			#ifdef PARTICLE_RENDER_ON
				float4 viewPos = v.vertex - float4(v.texcoord.xyz, 0);
				float3 worldCenter = v.texcoord;
				float3 viewCenter = UnityObjectToViewPos(worldCenter);
				float dist = distance(nonStereoCameraPosition(), v.texcoord.xyz);
			#else
				float4 viewPos = v.vertex;
				float3 worldCenter = mul(unity_ObjectToWorld, float4(0,0,0,1));
				float3 viewCenter = UnityObjectToViewPos(float3(0,0,0));
				float dist = distance(nonStereoCameraPosition(), mul(unity_ObjectToWorld, float4(0,0,0,1)).xyz);
			#endif //PARTICLE_RENDER_ON
				
				if(dist > _MaxRange)
				{
					o.pos = float4(0, 0, -2, 1);
					return o;
				}
				float4 viewPos2 = viewPos;

				o.grabPos = ComputeGrabScreenPos(UnityViewToClipPos(viewPos));
				o.falloff = smoothstep(1, 0, (clamp(dist, _MinRange, _MaxRange) - _MinRange) / (_MaxRange - _MinRange));

			#ifdef MAGNIFICATION
				o.viewCenter = viewCenter;
				o.viewPos = viewPos;
			#endif
			#ifdef MAGNIFICATION_SIMPLE_SCALE
				//viewPos2.xy *= lerp(1.0, -2 / (clamp(_Magnification, -0.9999, 0.9999) - 1) - 1, o.falloff);

				//float4 clipCenter = UnityViewToClipPos(viewCenter);
				//float4 grabPosCenter = ComputeGrabScreenPos(clipCenter);
				//float2 grabPosCenterNormalized = grabPosCenter.xy / max(0.0001, grabPosCenter.w);
				o.grabPos.xy = lerp(o.grabPos.xy, TransformStereoScreenSpaceTex(0.5, 1.0) * o.grabPos.w,  o.falloff * _Magnification);
			#elif defined(MAGNIFICATION_ZOOM)
				float4 clipCenter = UnityViewToClipPos(viewCenter);
				float4 grabPosCenter = ComputeGrabScreenPos(clipCenter);
				
				float borderFalloff = grabPosCenter.w > 0 ? 1 : 0;
				float2 grabPosCenterNormalized = grabPosCenter.xy / max(0.0001, grabPosCenter.w);
				float4 uv = ComputeNonStereoScreenPos(clipCenter);
				uv /= uv.w;
				borderFalloff *= step(0, uv.x)*step(0, uv.y)*step(-1, -uv.x)*step(-1, -uv.y); // check in range [-1 .. 1]

				o.grabPos.xy = lerp(o.grabPos.xy, grabPosCenterNormalized * o.grabPos.w, borderFalloff * o.falloff * _Magnification);
			#elif defined(MAGNIFICATION_ZOOM_FALLOFF)
				float angle = 1 - acos(normalize(viewCenter).z) / UNITY_PI;
				float linearRange = (clamp(angle, _AngleStartFade, _MaxAngle) - _MaxAngle) / (_AngleStartFade - _MaxAngle);
				float angleFalloff = smoothstep(0, 1, linearRange);

				float4 clipCenter = UnityViewToClipPos(viewCenter);
				float4 grabPosCenter = ComputeGrabScreenPos(clipCenter);
				float2 grabPosCenterNormalized = grabPosCenter / grabPosCenter.w;

				o.grabPos.xy = lerp(o.grabPos.xy, grabPosCenterNormalized * o.grabPos.w, angleFalloff * o.falloff * _Magnification);
			#elif defined(MAGNIFICATION_CENTERING)
				float3 v_forward = normalize(-viewCenter);
				float angle = acos(v_forward.z) / UNITY_PI;
				float linearRange = (clamp(angle, _AngleStartFade, _MaxAngle) - _MaxAngle) / (_AngleStartFade - _MaxAngle);
				float angleFalloff = smoothstep(0, 1, linearRange);

				v_forward = lerp(float3(0, 0, 1), v_forward, angleFalloff * o.falloff);
				float3 v_up = float3(0, 1, 0);
				float3 v_right = -normalize(cross(v_forward, v_up));
				v_up = -normalize(cross(v_right, v_forward));
				
				float3x3 matrix_v = float3x3(v_right, v_up, v_forward);
				viewPos2.xyz = mul(matrix_v, viewPos2.xyz);

				float4 clipCenter = UnityViewToClipPos(viewCenter);
				float4 grabPosCenter = ComputeGrabScreenPos(clipCenter);
				float2 grabPosCenterNormalized = grabPosCenter / grabPosCenter.w;

				o.grabPos.xy = lerp(o.grabPos.xy, grabPosCenterNormalized * o.grabPos.w, angleFalloff * o.falloff * _Magnification);
			#elif defined(MAGNIFICATION_GRAVITATIONAL_LENS)
			#endif //MAGNIFICATION

			#ifdef SCREENROTATION_ON
				float s, c;
				sincos(_ScreenRotation*cos(_Time.y*_ScreenRotationSpeed*UNITY_TWO_PI)*o.falloff, s, c);
				viewPos2.xy = mul(float2x2(c, -s, s, c), viewPos2.xy);
			#endif //SCREENROTATION_ON

				o.grabPos.xy = lerp(o.grabPos.xy, o.grabPos.ww - o.grabPos.xy, float2(_ScreenHorizontalFlip, _ScreenVerticalFlip) * o.falloff);

				o.pos = UnityViewToClipPos(viewPos2);
				o.uv = ComputeNonStereoScreenPos(o.pos);
				return o;
			}

		#ifdef OUTLINE_ON
			float calcOutline(float2 grabPos)
			{
				float depth = tex2D(_CameraDepthTexture, grabPos);
				float depth_sum = 0;
				float samples = 0;
				for (float yi = -_OutlineWidth; yi <= _OutlineWidth; yi += 1.0) 
				{
					for (float xi = -_OutlineWidth; xi <= _OutlineWidth; xi += 1.0)
						if (xi*xi + yi*yi <= _OutlineWidth*_OutlineWidth)
						{
							depth_sum += tex2D(_CameraDepthTexture, grabPos + float2(xi, yi)*_CameraDepthTexture_TexelSize.xy);
							samples += 1;
						}
				}
				float k = Linear01Depth(depth_sum / samples) / Linear01Depth(depth);
				return saturate((1-min(k, 1/k)) * _OutlineSharpness);
			}
		#endif //OUTLINE_ON
			
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

			float2 rand2( float2 n ) { return frac(sin(n)*1399763.5453123); }

			//return color from red to blue
			float3 rainbow(float t)
			{
				float3 dist = 1.0 - 2.0*abs(t - float3(0.0, 0.5, 1.0));
				return max(0, dist*float3(4.0, 2.0, 4.0));
			}
		#if defined(DISTORSION_ON) || defined(_CA_DISTORSION_ON) || defined(BLUR_DISTORSION_ON)
			float2 DistorsionSample(float2 uv)
			{
			#ifdef TEXTURE_DISTORSION_ON
				float2 disUV = uv;
				disUV.x *= _ScreenParams.x / _ScreenParams.y;
				disUV = TRANSFORM_TEX(disUV, _DistorsionTex) + _Time.x * _DistorsionScroll.xy;
				float2 distorsion = UnpackNormal(tex2D(_DistorsionTex, disUV)) * float2(_DIntensity_X, _DIntensity_Y);
				distorsion.x *= _ScreenParams.y/_ScreenParams.x;
			#else
				float2 distorsion = 0;
			#endif
			#ifdef WAVE_DISTORSION_ON
				distorsion += _DistorsionWave.xy*cos(length(_DistorsionWave.zw*(uv - 0.5)) + _Time.y*_DistorsionScroll.zw);
			#endif
				return distorsion;
			}
		#endif //DISTORSION

		#ifdef BLUR_DISTORSION_ON
			#define blurDistorsion(uv) DistorsionSample(uv)
		#else
			#define blurDistorsion(uv) 0
		#endif

			float4 mask(float2 uv)
			{
			#ifdef MASK_TEXTURE_ON
				return tex2D(_MaskTex, TRANSFORM_TEX(uv, _MaskTex) + _Time.y*_MaskScroll.xy);
			#else
				return 1.0;
			#endif
			}

			float4 frag(v2f i) : COLOR 
			{
				#if UNITY_SINGLE_PASS_STEREO
					const float factor = 0.5;
				#else
					const float factor = 1.0;
				#endif

				float4 grabPos = i.grabPos;
				grabPos.xy /= grabPos.w;
				i.uv /= i.uv.w;

			#ifdef SHAKE_ON
				float2 shake = UnpackNormal(tex2D(_ShakeTex, _Time.x * _ShakeScroll.xy));
				shake.x *= _ScreenParams.y/_ScreenParams.x;
				grabPos.xy += shake * float2(_SIntensity_X, _SIntensity_Y) * i.falloff * factor;
				grabPos.xy += _ShakeWave.xy*cos(_Time.y*_ShakeWave.zw) * i.falloff * factor;
			#endif //SHAKE_ON

			#ifdef MAGNIFICATION_GRAVITATIONAL_LENS
				i.viewPos = normalize(i.viewPos);
				float magFalloff = dot(i.viewCenter, i.viewCenter);
				magFalloff = 1.0 / (1.0/_Gravitation*magFalloff + 1.0);

				i.viewCenter = normalize(i.viewCenter);
				float angle = acos(dot(i.viewPos, i.viewCenter)) / UNITY_PI;
				i.viewPos *= 0.5;
				float angleFalloff = smoothstep(0, 1, (clamp(angle, _AngleStartFade, _MaxAngle) - _MaxAngle) / (_AngleStartFade - _MaxAngle));
				
				float3 vec = i.viewCenter - i.viewPos;
				float3 viewSpaceDistorsion = i.viewPos + vec * magFalloff * angleFalloff * i.falloff * _Magnification;
				float4 grabPosDest = ComputeGrabScreenPos(UnityViewToClipPos(i.viewPos));
				float4 grabPosSrc = ComputeGrabScreenPos(UnityViewToClipPos(viewSpaceDistorsion));
				float4 magOffset = grabPosSrc / grabPosSrc.w - grabPosDest / grabPosDest.w;
				grabPos.xy += magOffset.xy;
			#endif //MAGNIFICATION_GRAVITATIONAL_LENS
				
			#ifdef MASK_TEXTURE_ON
				float4 maskColor = tex2D(_MaskTex, TRANSFORM_TEX(i.uv, _MaskTex) + _Time.y*_MaskScroll.xy);
				#ifdef MASK_MULTISAMPLING_ON
					for(float a = 0.5; a >= 0.125; a /= 2)
					{
						float2 maskUV = TRANSFORM_TEX(i.uv, _MaskTex) + _Time.y*_MaskScroll.xy;
						maskColor = lerp(maskColor, tex2D(_MaskTex, maskUV / a), a);
					}
					maskColor = saturate(maskColor);
				#endif
				maskColor = lerp(maskColor, _MaskColor, _MaskColor.a);
				float maskGray = dot(maskColor.rgb, 0.333);
			#else
				float4 maskColor = 1.0;
				float maskGray = 1.0;
			#endif //MASK_TEXTURE_ON
		
			#ifdef PIXELIZATION_ON
				float2 blockSize = _ScreenParams.xy / lerp(1.0, float2(_PSize_X, _PSize_Y), i.falloff);
				grabPos.xy = trunc(grabPos.xy * blockSize) / blockSize;
			#endif //PIXELIZATION_ON

			#ifdef DISTORSION_ON
				grabPos.xy += DistorsionSample(i.uv) * i.falloff * factor * maskGray;
			#endif //DISTORSION_ON

			float4 color = tex2D(_Levi, grabPos);

			#ifdef BLUR
				float2 blurVector;
				float4 blurColor = 0;
			#endif //BLUR
			#ifdef BLUR_HORIZONTAL
				sincos(_BlurRotation + _Time.y*_BlurRotationSpeed, blurVector.y, blurVector.x);
				blurVector.y *= _ScreenParams.x / _ScreenParams.y;
				blurVector *= _BlurRange;
				blurVector += blurDistorsion(i.uv);
				blurVector *= i.falloff * factor;
				float blurStep = 1.0 / _BlurIterations;

				for(float x = -0.5; x <= 0.5; x += blurStep)
					blurColor += blurStep * tex2D(_Levi, grabPos.xy + x * blurVector);
				//blurColor.rgb /= 2.0;
			#endif //BLUR_HORIZONTAL
			#ifdef BLUR_STAR
				sincos(_BlurRotation + _Time.y*_BlurRotationSpeed, blurVector.y, blurVector.x);
				blurVector.y *= _ScreenParams.x / _ScreenParams.y;
				blurVector *= _BlurRange;
				blurVector += blurDistorsion(i.uv);
				blurVector *= i.falloff * factor;
				float blurStep = 1.0 / _BlurIterations;

				for(float x = -0.5; x <= 0.5; x += blurStep)
					blurColor += blurStep * tex2D(_Levi, grabPos.xy + x * blurVector);
				sincos(_BlurRotation + UNITY_HALF_PI + _Time.y*_BlurRotationSpeed, blurVector.y, blurVector.x);
				blurVector.y *= _ScreenParams.x / _ScreenParams.y;
				blurVector *= _BlurRange;
				blurVector += blurDistorsion(i.uv);
				blurVector *= i.falloff * factor;
				for(float x = -0.5; x <= 0.5; x += blurStep)
					blurColor += blurStep * tex2D(_Levi, grabPos.xy + x * blurVector);
				blurColor /= 2.0;
			#endif //BLUR_STAR
			#ifdef BLUR_CIRCLE
				
				float blurStep = 1.0 / _BlurIterations * UNITY_TWO_PI;

				for(float x = 0.0; x < UNITY_TWO_PI; x += blurStep)
				{
					sincos(_BlurRotation + x + _Time.y*_BlurRotationSpeed, blurVector.y, blurVector.x);
					blurVector.y *= _ScreenParams.x / _ScreenParams.y;
					blurVector *= _BlurRange;
					blurVector += blurDistorsion(i.uv + blurVector*i.falloff);
					blurVector *= i.falloff * factor;
					blurColor += blurStep / UNITY_TWO_PI * tex2D(_Levi, grabPos.xy + blurVector);
				}
			#endif //BLUR_CIRCLE
			#ifdef BLUR_RADIAL
				blurVector = -(ComputeWindowUV(grabPos)*2.0 - 1.0 + _BlurCenterOffset.xy);
				blurVector *= _BlurRange;
				blurVector += blurDistorsion(i.uv);
				blurVector *= i.falloff * factor;
				float blurStep = 1.0 / _BlurIterations;

				for(float x = 0.0; x <= 1.0; x += blurStep)
					blurColor += blurStep * tex2D(_Levi, grabPos.xy + x * blurVector);
			#endif //BLUR_RADIAL
			#ifdef BLUR
				color = lerp(color, blurColor, _BlurColor * _BlurColor.a * lerp(1.0, maskGray, _BlurMask));
			#endif //BLUR
		
			#ifdef CHROMATIC_ABERRATION
				float shift = 0.5 + 0.5*cos(_Time.y*_CA_speed);
				shift = _CA_amplitude * pow(shift, 3.0) * i.falloff * factor;

				#ifdef CHROMATIC_ABERRATION_RADIAL
					float2 shift2 = i.uv*2.0 - 1.0 + _CA_centerOffset.xy;
					shift2 *= -abs(dot(shift2, shift2)) * shift;
				#else
					float2 shift2 = _CA_direction.xy * shift;
					shift2.y *= _ScreenParams.x / _ScreenParams.y;
				#endif //CHROMATIC_ABERRATION_RADIAL

				float3 chromatcColor = 0;

				#ifdef ABERRATION_QUALITY_MULTISAMPLING
					float w = 1.0 / _CA_iterations;
					#ifdef _CA_DISTORSION_ON
						shift2 += DistorsionSample(i.uv) * i.falloff;
						for(float x = 0.0; x <= 1.0; x += w)
						{
						#ifdef CHROMATIC_ABERRATION_VECTOR
							float2 uv = (x - 0.5) * shift2;
						#else
							float2 uv = x * shift2;
						#endif
							chromatcColor += rainbow(x) * tex2D(_Levi, grabPos.xy + uv).rgb;
						}
					#else
						for(float x = 0.0; x <= 1.0; x += w)
						{
						#ifdef CHROMATIC_ABERRATION_VECTOR
							chromatcColor += rainbow(x) * tex2D(_Levi, grabPos.xy + (x - 0.5) * shift2 ).rgb;
						#else
							chromatcColor += rainbow(x) * tex2D(_Levi, grabPos.xy + x * shift2 ).rgb;
						#endif
						}
					#endif //_CA_DISTORSION_ON
					chromatcColor /= _CA_iterations;
					color.rgb = lerp(color.rgb, chromatcColor, _CA_factor * lerp(1.0, maskColor.rgb, _CA_mask));
				#else
					#ifdef _CA_DISTORSION_ON
						shift2 += DistorsionSample(i.uv) * i.falloff;
					#endif //_CA_DISTORSION_ON
					color.r = lerp(color.r, tex2D(_Levi, grabPos - shift2).r, _CA_factor* lerp(1.0, maskColor.r, _CA_mask));
					color.b = lerp(color.b, tex2D(_Levi, grabPos + shift2).b, _CA_factor* lerp(1.0, maskColor.b, _CA_mask));
				#endif
			#endif //CHROMATIC_ABERRATION

			#if defined(HSV_SELECTION_ON) || defined(HSV_TRANSFORM_ON)
				float3 hsv = RGBToHSV(color.rgb);
			#endif
			#ifdef HSV_SELECTION_ON
				float3 targetHSV = RGBToHSV(_TargetColor.rgb);
				float3 diff;
				diff.x = frac(targetHSV.x - hsv.x);
				diff.x -= step(0.5, diff.x);
				diff.yz = targetHSV.yz - hsv.yz;

				float hsvMask = abs(diff.x) < _HueRange ? 1 : 1 - saturate((abs(diff.x) - _HueRange) / _HueSmoothRange - 1);
				hsvMask *= diff.y < _SaturationRange ? 1 : 1 - saturate(max(0, diff.y - _SaturationRange) / _SaturationSmoothRange - 1);
				hsvMask *= diff.z < _LightnessRange ? 1 : 1 - saturate(max(0, diff.z - _LightnessRange) / _LightnessSmoothRange - 1);

				#ifdef HSV_DESATURATE_SELECTED_ON
					hsv.y = hsv.y * hsvMask;
				#endif
				#ifndef HSV_TRANSFORM_ON
					color.rgb = lerp(color.rgb, HSVToRGB(hsv), i.falloff);
				#endif
			#endif //HSV_SELECTION_ON

			#ifdef HSV_TRANSFORM_ON
				float3 transformHSV = RGBToHSV(_TransformColor.rgb);
				transformHSV.x = frac(transformHSV.x + _Time.y * _HueAnimationSpeed);
				if (_Hue < 1.0)
				{
					float hue_diff = frac(transformHSV.x - hsv.x);
					hue_diff -= step(0.5, hue_diff);
					float hue_shift = -8.0*hue_diff*(hue_diff*hue_diff - 0.25); //Smoothing hue shift
					hsv.x = frac(hsv.x + hue_shift * _Hue);
				}
				else
					hsv.x = transformHSV.x;
				hsv.y = lerp(hsv.y, transformHSV.y, _Saturation);
				hsv.z = lerp(hsv.z, transformHSV.z, _Lightness);
				#ifdef HSV_DESATURATE_SELECTED_ON
					color.rgb = lerp(color.rgb, HSVToRGB(hsv), i.falloff);
				#else
					color.rgb = lerp(color.rgb, HSVToRGB(hsv), i.falloff * hsvMask);
				#endif
			#endif //HSV_TRANSFORM_ON

			#ifdef NEON_ON
				float3 pix = float3(_Levi_TexelSize.xy, 0) * _NeonWidth;
				float3 color_sub = tex2D(_Levi, grabPos.xy - pix.xz);
				color_sub += tex2D(_Levi, grabPos.xy + pix.xz);
				color_sub += tex2D(_Levi, grabPos.xy - pix.zy);
				color_sub += tex2D(_Levi, grabPos.xy + pix.zy);
				float3 delta_color = 4.0*color.rgb*_NeonOrigColor.a - color_sub;
				delta_color *= _NeonBrightness;
				delta_color = lerp(delta_color, length(delta_color) > 1.0 ? normalize(delta_color) : 0.0, _NeonPosterization);
				delta_color = lerp(delta_color, abs(delta_color), _NeonGlow);
				float3 neonColor = color.rgb * _NeonOrigColor.rgb + delta_color *_NeonColor.rgb;
				color.rgb = lerp(color.rgb, neonColor, _NeonColor.a * i.falloff);
			#endif //NEON_ON

			#ifdef COLOR_TINT_ON
				color.rgb = lerp(color.rgb, 1 - min(1, color.rgb), float3(_RedInvert, _GreenInvert, _BlueInvert) * i.falloff);
				color.rgb = max(0.0, (color.rgb - 0.5)*lerp(1, _Contrast, i.falloff) + 0.5);
				color.rgb = pow(color.rgb, lerp(1, _Gamma, i.falloff));
				color.rgb *= lerp(1, _Brightness, i.falloff);
				color.rgb = lerp(color.rgb, LinearRgbToLuminance(color.rgb), _Grayscale * i.falloff);
				color.rgb = lerp(color.rgb, _Color, _Color.a * i.falloff);
				color.rgb += _EmissionColor.rgb * i.falloff;
			#endif //COLOR_TINT_ON

			#ifdef FRAGMENT_FOG_ON
				float fogDepth = LinearEyeDepth(tex2D(_CameraDepthTexture, grabPos.xy));
				float k = 1 - saturate(exp(-_FogDensity*fogDepth*fogDepth * lerp(1.0, maskGray, _FogMask)));
				color = lerp(color, _FogColor, _FogColor.a * k * i.falloff);
			#endif //FRAGMENT_FOG_ON
			
			#ifdef FRAGMENT_RIM_ON
				float3 dpix = float3(_CameraDepthTexture_TexelSize.xy, 0);
			
				float depthX = tex2D(_CameraDepthTexture, grabPos.xy - dpix.xz);
				float depth  = tex2D(_CameraDepthTexture, grabPos.xy);
				float depthY = tex2D(_CameraDepthTexture, grabPos.xy + dpix.zy);
				float2 deltaDepth = max(depth.xx, float2(depthX, depthY)) / min(depth.xx, float2(depthX, depthY)) - 1.0;
				float rim = saturate(pow(length(deltaDepth), _RimPower)*_RimContrast);
				//TODO: try to convert screen space position with the depth buffer to world normal vector
				float2 screenSpaceNormal = depth.xx / float2(depthX, depthY) - 1.0;  //fast approximate calculation (not a true normals)
				float3 matcapColor = _RimMatcapTex.Sample(linear_clamp_sampler, 0.5 + screenSpaceNormal*0.5*_RimContrast);
				matcapColor = lerp(rim * _RimColor.rgb, matcapColor, _RimMatcap);

				float rimFade = lerp(1.0, maskGray, _Rim_Mask) * saturate((LinearEyeDepth(depth) - _RimFadeEnd) / (_RimFadeStart - _RimFadeEnd));

				color.rgb = lerp(color.rgb, matcapColor, _RimColor.a * rimFade * i.falloff);
			#endif //FRAGMENT_RIM_ON

			#ifdef OUTLINE_ON
				color = lerp(color, _OutlineColor, _OutlineColor.a * calcOutline(grabPos.xy) * i.falloff);
			#endif //OUTLINE_ON

			#ifdef POSTERIZATION_ON
				if(_PosterizationSteps <= 255.0)
					color.rgb = lerp(color.rgb, floor( color.rgb * _PosterizationSteps ) / _PosterizationSteps, i.falloff);
			#endif //POSTERIZATION_ON

			#ifdef OVERLAY_TEXTURE_ON
				float4 overlaySample = _OverlayTint * tex2D(_OverlayTex, TRANSFORM_TEX(i.uv, _OverlayTex) + _Time.y*_OverlayScroll.xy);
				color = lerp(color, overlaySample, overlaySample.a * i.falloff);
			#endif //OVERLAY_TEXTURE_ON

			#ifdef VIGNETTE_ON
				//formula from https://www.shadertoy.com/view/lsKSWR
				float2 windowPos = i.uv;
				windowPos *= 1.0 - windowPos.yx;
				float vignette = windowPos.x * windowPos.y * (1.0 - _VignetteColor.a) * 100.0;
				color = lerp(color, _VignetteColor, saturate(1.0 - pow(vignette, _VignetteWidth)) * i.falloff);
			#endif //VIGNETTE_ON

				return color;
			}
			ENDCG
		}
	}
	FallBack "Particles/Multiply"
}
