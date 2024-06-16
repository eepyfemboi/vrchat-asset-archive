
// Copyright © 2019 Leviant
// Email: leviant@yandex.ru  
// Discord: Leviant#8796
// License: http://opensource.org/licenses/MIT
// Version: 1.0 (18.07.2019)

Shader "Leviant's Shaders/Infinity Zoom"
{
	Properties
	{
		[Toggle] Particle_Render("Setup for Particle system", Int) = 0
		_MinRange("Start fading", Float) = 2.0
		_MaxRange("End distance", Float) = 10.0
		_Magnification("Zoom/Scale", Range(-1, 1)) = 0.1
	}
	SubShader
	{
		Tags { "Queue" = "Overlay" "RenderType" = "Overlay" "IgnoreProjector" = "True" "ForceNoShadowCasting" = "True" "LightMode" = "Always"}
		Cull Off
		Lighting Off
		ZTest Always
		ZWrite Off
		GrabPass 
		{
			"_InfinityZoomGrabTexture"
		}
		Pass {
			HLSLPROGRAM
			//#pragma enable_d3d11_debug_symbols
			#pragma target 4.0
			#pragma fragmentoption ARB_precision_hint_fastest
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float3 texcoord : TEXCOORD0; //xyz - Particle center
			};

			struct v2f
			{
				float4 pos : SV_POSITION;
				float4 grabPos : TEXCOORD0;
				float3 viewPos : TEXCOORD1;
			};
			uniform Texture2D _InfinityZoomGrabTexture;
			uniform int Particle_Render;

			uniform SamplerState linear_repeat_sampler;
			#define grabSampler linear_repeat_sampler

			//Falloff
			uniform float _MaxRange;
			uniform float _MinRange;

			uniform float _Magnification;
			uniform float _Gravitation;
			uniform float _AngleStartFade;
			uniform float _MaxAngle;

			uniform float _MatrixLerp;
			
			bool IsInMirror() //Thanks DocMe ^w^
			{
				return unity_CameraProjection[2][0] != 0.0 || unity_CameraProjection[2][1] != 0.0;
			}

			v2f vert(appdata v)
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f, o);
			#ifdef UNITY_SINGLE_PASS_STEREO
				float3 nonStereoCameraPosition = (unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1]) * 0.5;
			#else
				float3 nonStereoCameraPosition = _WorldSpaceCameraPos;
			#endif
				//vertex position used as a position in camera space
				float4 viewPos = v.vertex;
				float3 worldCenter;
				float dist;
				[branch] if (Particle_Render != 0)
				{
					viewPos.xyz -= v.texcoord;
					worldCenter = v.texcoord;
					dist = distance(nonStereoCameraPosition, v.texcoord);
				}
				else
				{
					worldCenter = mul(unity_ObjectToWorld, float4(0, 0, 0, 1));
					dist = distance(nonStereoCameraPosition, worldCenter);
				}

				if (dist > _MaxRange || IsInMirror())
				{
					o.pos = float4(0, 0, -2, 1);
					return o;
				}
				o.pos = UnityViewToClipPos(viewPos);
				o.grabPos = ComputeGrabScreenPos(o.pos);
				float falloff = smoothstep(1, 0, (clamp(dist, _MinRange, _MaxRange) - _MinRange) / (_MaxRange - _MinRange));
				// Center of camera view
				float4 grabPosForward = ComputeGrabScreenPos(UnityViewToClipPos(float4(0, 0, 1, 1)));
				// Reprojecting grab texture coordinates
				grabPosForward *= o.grabPos.w / grabPosForward.w;
				// Remapping [-1 .. +1] -> [-Inf .. +Inf]
				_Magnification = 2.0 - 2.0 / (_Magnification + 1.0);
				// Zoom in/out of center
				o.grabPos.xy = lerp(o.grabPos.xy, grabPosForward.xy, _Magnification);
				return o;
			}

			float mod(float x, float p)
			{
				return frac(x / p) * p;
			}
			float wave(float x)
			{
				return 1.0 - abs(frac(x*0.5)*2.0 - 1.0);
			}

			#define LEFT_EYE 0

			float4 frag(v2f i) : COLOR
			{
				// Normalize texture coords
				i.grabPos.xy /= i.grabPos.w;
			#ifdef USING_STEREO_MATRICES
				if (unity_StereoEyeIndex == LEFT_EYE)
				{
					i.grabPos.x = frac(i.grabPos.x * 2.0) / 2.0; // Repeat in range [0.0 ... 0.5]
				}
				else
				{
					i.grabPos.x = frac((i.grabPos.x - 0.5) * 2.0) / 2.0 + 0.5; // Repeat in range [0.5 ... 1.0]
				}	
			#endif
				return _InfinityZoomGrabTexture.Sample(grabSampler, i.grabPos.xy);
			}
			ENDHLSL
		}
	}
}
