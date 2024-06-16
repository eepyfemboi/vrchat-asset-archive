//Shader by Neen, if you have any questions forward them to me on discord.
//Object xyz scale needs to be set at or below (.0001) for magnification to work as intended - Weird results else.
//Version 1.5
//If you've got this without purchasing it, that's not nice :( *but who cares this whole site is full of pirated assets and shit so dont cry little boi*  using shaders you didn't purchase is like stealing avatars!(people still steal avatars? how big does your ego have to be to get mad over something like that lmao) Contact me at Neen#2693 if you found this posted somewhere for a reward!(ugh k)
//Screen Flip, Chromatic Aberration, HSL Color Selection, HSL Color Transform made by Leviant
Shader "Huyami/Ultrashader" {
Properties {
	[Header(Screen Shift)]
	[PowerSlider(2.0)]_intensity ("Vertical Shift", Range(-50, 50)) = 0
	[PowerSlider(2.0)]_intensity2 ("Horizontal Shift", Range(-50, 50)) = 0

	[PowerSlider(2.0)]_yper ("Y-period", Range(-200, 200)) = 1
	[PowerSlider(2.0)]_xper ("X-period", Range(-200, 200)) = 1

	[Space(10)]
	[Toggle]_ScreenHorizontalFlip("Screen Horizontal Flip", Float) = 0.0
	[Toggle]_ScreenVerticalFlip("Screen Vertical Flip", Float) = 0.0

	[Space(20)]
	[Header(Magnification)]
	[Space(5)]
	[Toggle(MAGNIFIED_ON)]_MG("Magnified Toggle", Float) = 0.0 //Toggle magnification on or off
	[Toggle(MAGNIFY_SMOOTH1)]_MGS1("Magnification Smoothing", Float) = 0.0 //Toggle magnification smoothing within vert
	[Toggle(MAGNIFY_SMOOTH)]_MGS2("Magnification Smoothing Alternative", Float) = 0.0 //Toggle magnification smoothing within frag
	[Space(5)]
	_mag("Magnification", Range (1.0, 50.0)) = 8

	[Space(20)]
	[Header(Blur)]
	[Space(5)]
	[Toggle(BLUR_ENABLED)]_BLUR("Blur Toggle", Float) = 0.0 //Toggle blur on or off
	[Toggle(BLUR_FALLOFF)]_BLURFO("Blur Falloff Toggle", Float) = 0.0 //Toggle blur falloff on or off
	[Space(5)]
	_blurfactor ("Blur Factor", Range(0, 5)) = 1.0

	[Space(20)]
	[Header(Falloff)]
	[Space(5)]
	_max ("Max Range", Float) = 3.0
	_min ("Minimum Range", Float) = 0.0

	[Space(20)]
	[Header(Color Tint)]
	[Space(5)]
	_contrast("Contrast", Range (0.0, 10.0)) = 1.0
	_gamma("Gamma", Range (0.01, 10.0)) = 1.0

	_redvalue ("Red Tint", Range (0.0, 25.0)) = 0.3
	_greenvalue ("Green Tint", Range (0.0, 25.0)) = 0.0
	_bluevalue ("Blue Tint", Range (0.0, 25.0)) = 0.0
	[Toggle(COLOR_BLACK_OUT)]_blackout ("Color Fade", Float) = 0.0 //Toggle color to fade with black tint
	_blackvalue ("Black Tint", Range (0.0, 1.0)) = 0.0

	[Space (20)]
	[Toggle(COLOR_INVERT)]_CINV ("Invert Colors", Float) = 0.0 //Toggles Color Inversion
	[Toggle(COLIN_FO)]_CIFO ("Inversin Falloff Toggle", Float) = 0.0 //Toggles Color Inversion falloff
	_redinv("Red Invert Value", Range (0.0, 25.0)) = 1.0
	_greeninv("Green Invert Value", Range (0.0, 25.0)) = 1.0
	_blueinv("Blue Invert Value", Range (0.0, 25.0)) = 1.0

	[Space(20)]
	[Toggle(CHROMATIC_ABERRATION)]_CA("Chromatic Aberration", Float) = 0.0 //Toggles Chromatic Aberration
	[Toggle(CHROMATIC_ABERRATION_FO)]_CAFO("Aberration Falloff Toggle", Float) = 0.0 //Toggles Chromatic Aberration falloff
	_CA_amplitude("Amplitude", Range(0.0, 0.1)) = 0.005
	_CA_speed("Speed", Float) = 2.7

	[Space(20)]
	[Header(HSL color space)]
	[Space(5)]
	[Toggle(HSL_SELECTION)]_HSL_S("HSL Color Selection", Float) = 0.0 //Toggles selection in HSL color space
	_TargetColor("Target color", Color) = (1,0,0,1)
	_HueRange("Hue value range", Range(0, 0.5)) = 0.02
	_SaturationRange("Saturation value range", Range(0, 1)) = 0.4
	_LightnessRange("Lightness value range", Range(0, 1)) = 1
	_HueSmoothRange("Hue smooth", Range(0, 0.5)) = 0.02
	_SaturationSmoothRange("Saturation smooth", Range(0, 1)) = 0.1
	_LightnessSmoothRange("Lightness smooth", Range(0, 1)) = 1
	[Space(10)]
	[Toggle(HSL_TRANSFORM)]_HSL_T("HSL Color Transform", Float) = 0.0 //Toggles color transform in HSL color space
	_TransformColor("Transform color", Color) = (0,1,0,1)
	_Hue("Hue value", Range(0, 1)) = 1.0
	_HueAnimationSpeed("Hue Animation Speed", Float) = 0.0
	_Saturation("Saturation value", Range(0, 1)) = 0
	_Lightness("Lightness value", Range(0, 1)) = 0

	//[Header(Ignore me OwO)]
	//_slider ("Slider ", Range (0.0, 100.0)) = 16.0
}

SubShader {
	Tags { "Queue"="Overlay+1" "RenderType"="Transparent" }
	//Blend SrcAlpha OneMinusSrcAlpha
	Cull Off
	ZTest Off
	//ZWrite On

	GrabPass {
		//Tags { "Queue"="Overlay+1" }
		"_GP2"
	}

	Pass {
		//Tags { "Queue"="Overlay+1" }

		CGPROGRAM
		//#pragma enable_d3d11_debug_symbols
		#pragma vertex vert
		#pragma fragment frag
		#pragma shader_feature COLOR_BLACK_OUT
		#pragma shader_feature MAGNIFIED_ON  
		#pragma shader_feature MAGNIFY_SMOOTH1
		#pragma shader_feature MAGNIFY_SMOOTH2
		#pragma shader_feature INVERT_VIEW
		#pragma shader_feature BLUR_ENABLED
		#pragma shader_feature BLUR_FALLOFF
		#pragma shader_feature COLOR_INVERT
		#pragma shader_feature COLIN_FO
		#pragma shader_feature CHROMATIC_ABERRATION
		#pragma shader_feature CHROMATIC_ABERRATION_FO
		#pragma shader_feature HSL_SELECTION
		#pragma shader_feature HSL_TRANSFORM
		#include "UnityCG.cginc"

		struct v2f {
			float4 pos : SV_POSITION;
			float4 grabPos : TEXCOORD0;
			float4 worldPos : TEXCOORD1;
			float4 dist: TEXCOORD2;
			float4 uv : TEXCOORD3;
			float3 viewDir : TEXCOORD4;
			float ang : TEXCOORD5;
		};

		uniform sampler2D _GP2;
		uniform float4 _GP2_TexelSize;

		uniform float _intensity;
		uniform float _intensity2;

		uniform float _yper;
		uniform float _xper;

		uniform int _ScreenHorizontalFlip;
		uniform int _ScreenVerticalFlip;

		uniform float _max;
		uniform float _min;

		uniform float _blurfactor;

		uniform float _mag;
		uniform float _contrast;
		uniform float _gamma;
		uniform float _redvalue;
		uniform float _greenvalue;
		uniform float _bluevalue;
		uniform float _blackvalue;

		uniform float _redinv;
		uniform float _greeninv;
		uniform float _blueinv;

		uniform float _CA_amplitude;
		uniform float _CA_speed;

		uniform float4 _TargetColor;
		uniform float _HueRange;
		uniform float _SaturationRange;
		uniform float _LightnessRange;
		uniform float _HueSmoothRange;
		uniform float _SaturationSmoothRange;
		uniform float _LightnessSmoothRange;
		uniform float4 _TransformColor;
		uniform float _HueAnimationSpeed;
		uniform float _Hue;
		uniform float _Saturation;
		uniform float _Lightness;

		//float _slider;

		v2f vert(float4 pos : POSITION, appdata_base v) 
		{
			v2f o;
			//cameraPos =  mul(unity_WorldToObject, cameraPos);


			float4 abspos = pos;
			float4 worldPos2  = mul(unity_CameraToWorld, abspos);   // Transform View to World
			float4 objectPos2 = mul(unity_WorldToObject, worldPos2); //Transform Object to screen dimensions


			o.dist = distance(_WorldSpaceCameraPos, mul(unity_ObjectToWorld, float4(0,0,0,1)));
			o.pos = UnityObjectToClipPos(objectPos2);
			o.pos = o.pos - o.pos*step(_max, o.dist);
			//o.pos = UnityObjectToClipPos(v.vertex);
			o.grabPos = ComputeGrabScreenPos(o.pos);
			o.worldPos = worldPos2;
			o.viewDir = mul(_WorldSpaceCameraPos, float4(0,0,1,1));

			float falloff2 = pow(min(1, 1 - (1/(_max - _min))*(o.dist - _min)), 2);

			//float4 uv_center = ComputeGrabScreenPos(UnityObjectToClipPos(float4(0, 0, 0, 1)));
			float4 uv_center = ComputeGrabScreenPos(UnityObjectToClipPos(v.vertex));
			float4 UVDif = ComputeGrabScreenPos(o.pos) - uv_center;
			

			//float3 forward = normalize(o.viewDir.xyz);
			//float4 forward = mul(unity_CameraToWorld, float4(0,0,1,0));
			//float4 verttocam = mul(unity_ObjectToWorld, float4(0,0,1,0)) - forward;

			//float DotDiff = abs(dot(forward,verttocam));

			#if UNITY_SINGLE_PASS_STEREO
				float4 cameraPos = float4((unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1])*0.5, 1);
			#else
				float4 cameraPos = float4(_WorldSpaceCameraPos,1);
			#endif

			#if UNITY_SINGLE_PASS_STEREO
				float3 p1 =  mul(unity_StereoCameraToWorld[0], float4(0,0,1,1));
				float3 p2 =  mul(unity_StereoCameraToWorld[0], float4(0,0,0,1));
			#else
				float3 p1 =  mul(unity_CameraToWorld, float4(0,0,1,1));
				float3 p2 =  mul(unity_CameraToWorld, float4(0,0,0,1));
			#endif

			float4 wpos = mul(unity_ObjectToWorld, float4(0,0,0,1));
			float3 forward = normalize(p2-p1);
			float3 cameraDir = normalize(cameraPos.xyz - wpos.xyz);

			o.ang = saturate(dot(forward, cameraDir));
			float dotang1 = saturate(1.5*cos(clamp(acos(o.ang)*10*max(1,o.dist*0.25), 0, 1.58)));

			//UVDif /= lerp(_mag,(1-DotDiff),.5);
			UVDif /= _mag;
			#ifdef MAGNIFY_SMOOTH1
				o.uv = (uv_center + UVDif)*falloff2*dotang1;
			#else
				o.uv = (uv_center + UVDif)*falloff2;
			#endif
			//o.uv = lerp(uv_center,(uv_center + UVDif),1);
			//o.uv = (uv_center + UVDif);
			if (_ScreenHorizontalFlip > 0.5)
			{
				o.grabPos.x = o.grabPos.w - o.grabPos.x;
				o.uv.x = o.uv.w - o.uv.x;
			}
			if (_ScreenVerticalFlip > 0.5)
			{
				o.grabPos.y = o.grabPos.w - o.grabPos.y;
				o.uv.y = o.uv.w - o.uv.y;
			}
			return o;
		}

		float3 rgb2hsl(float3 i)
		{
			float3 hsl = 0;
			float maximum = max(max(i.r, i.g), i.b);
			float minimum = min(min(i.r, i.g), i.b);
			hsl.z = (maximum + minimum) * 0.5;
			if (maximum - minimum < 0.0001)
				hsl.xy = 0;
			else
			{
				if (i.r >= i.g)
				{
					if (i.r >= i.b)
					{
						if (i.g >= i.b)
							hsl.x = (i.g - i.b) / (maximum - minimum) / 6;
						else
							hsl.x = (i.g - i.b) / (maximum - minimum) / 6 + 1;
					}
					else
						hsl.x = ((i.r - i.g) / (maximum - minimum) + 4) / 6;
				}
				else
					if (i.g >= i.b)
						hsl.x = ((i.b - i.r) / (maximum - minimum) + 2) / 6;
					else
						hsl.x = ((i.r - i.g) / (maximum - minimum) + 4) / 6;
				hsl.y = (maximum - minimum) / (1 - abs(1 - maximum - minimum));
			}
			return hsl;
		}
		float3 hsl2rgb(float3 i)
		{
			float rgb[3];
			float q = i.z < 0.5 ? i.z * (1.0 + i.y) : i.y + i.z - (i.y*i.z);
			float p = 2.0 * i.z - q;
			float tRGB[3] = { i.x + 1 / 3.0, i.x, i.x - 1 / 3.0 };
			for (int i = 0; i < 3; i++)
			{
				tRGB[i] = tRGB[i] < 0 ? tRGB[i] + 1 : (tRGB[i] > 1 ? tRGB[i] - 1 : tRGB[i]);
				if (tRGB[i] < 1 / 6.0)
					rgb[i] = p + ((q - p) * 6.0 * tRGB[i]);
				else if (tRGB[i] < 0.5)
					rgb[i] = q;
				else if (tRGB[i] < 2 / 3.0)
					rgb[i] = p + ((q - p) * 6.0 * (2 / 3.0 - tRGB[i]));
				else
					rgb[i] = p;
			}
			return float3(rgb[0], rgb[1], rgb[2]);
		}

		float4 frag(v2f i) : COLOR 
		{
			#if UNITY_SINGLE_PASS_STEREO
				int factor = 250;
			#else
				int factor = 125;
			#endif

			float dotang2 = saturate(1.5*cos(clamp(acos(i.ang)*10*max(1,i.dist*0.25), 0, 1.58)));
			#if MAGNIFY_SMOOTH2
				i.uv = lerp(i.grabPos,i.uv,dotang2);
			#endif

			float falloff = pow(min(1, 1 - (1/(_max - _min))*(i.dist - _min)), 2);
			i.grabPos.y = i.grabPos.y + cos(_Time[1]*_yper)*(_intensity/factor)*falloff;
			i.grabPos.x = i.grabPos.x + cos(_Time[1]*_xper)*(_intensity2/factor)*falloff*(_ScreenParams[1]/_ScreenParams[0]);
			//i.grabPos.y = i.grabPos.y / (_intensity);
			//i.grabPos.x = i.grabPos.x / (_intensity2)*(_ScreenParams[1]/_ScreenParams[0]);

			//float3 CamDir = normalize(i.viewDir.xyz);
			//float3 ObjCen = normalize(i.dist.xyz-i.viewDir.xyz);
			//float4 DotDif = dot(CamDir,ObjCen);


			#ifdef MAGNIFIED_ON
				float4 shakeZoom = lerp(i.uv,i.grabPos,.05);
			#else
				float4 shakeZoom = i.grabPos;
			#endif
			//float4 shakeZoom = lerp(i.uv,i.grabPos,.05);
			//float4 shakeZoomG = shakeZoom + float4(texdisp2.xy,0,0);
			float4 color = tex2Dproj(_GP2, UNITY_PROJ_COORD(shakeZoom));
			#ifdef CHROMATIC_ABERRATION
				float shift = 0.5 + 0.5*cos(_Time.y*_CA_speed);
				shift = _CA_amplitude * pow(shift, 3.0);

				#ifdef CHROMATIC_ABERRATION_FO
					shift *= falloff;
				#endif
				float2 chroma_uv = shakeZoom.xy / shakeZoom.w;
				chroma_uv.x -= shift;
				color.r = tex2D(_GP2, chroma_uv).r;

				//chroma_uv = shakeZoom.xy / shakeZoom.w;
				chroma_uv.x += shift*2;
				color.b = tex2D(_GP2, chroma_uv).b;
			#endif
			#if defined(HSL_SELECTION) || defined(HSL_TRANSFORM)
				float3 hsl = rgb2hsl(color.rgb / (color.rgb + 1)); //Tonemapping HDR colors
			#endif
			#ifdef HSL_SELECTION
				float3 targetHSL = rgb2hsl(_TargetColor.rgb / (_TargetColor.rgb + 1));
				float3 diff;
				diff.x = frac(targetHSL.x - hsl.x);
				diff.x -= step(0.5, diff.x);
				diff.yz = targetHSL.yz - hsl.yz;

				hsl.y =   abs(diff.x) < _HueRange ? hsl.y : lerp(hsl.y, 0, saturate((abs(diff.x) - _HueRange) / _HueSmoothRange - 1));
				hsl.y = diff.y < _SaturationRange ? hsl.y : lerp(hsl.y, 0, saturate(max(0, diff.y - _SaturationRange) / _SaturationSmoothRange - 1));
				hsl.y =  diff.z < _LightnessRange ? hsl.y : lerp(hsl.y, 0, saturate(max(0, diff.z - _LightnessRange) / _LightnessSmoothRange - 1));

				#ifndef HSL_TRANSFORM
				color.rgb = hsl2rgb(hsl);
				#endif
			#endif
			#ifdef HSL_TRANSFORM
				float3 transformHSL = rgb2hsl(_TransformColor.rgb / (_TransformColor.rgb + 1));
				transformHSL.x = frac(transformHSL.x + _Time.y * _HueAnimationSpeed);
				if (_Hue < 1.0)
				{
					float hue_diff = frac(transformHSL.x - hsl.x);
					hue_diff -= step(0.5, hue_diff);
					float hue_shift = -8.0*hue_diff*(hue_diff*hue_diff - 0.25); //Smoothing hue shift
					hsl.x = frac(hsl.x + hue_shift * _Hue);
				}
				else
					hsl.x = transformHSL.x;
				color.rgb = hsl2rgb(float3(hsl.x, lerp(hsl.y, transformHSL.y, _Saturation), lerp(hsl.z, transformHSL.z, _Lightness)));
			#endif
			#if defined(HSL_SELECTION) || defined(HSL_TRANSFORM)
				color.rgb = -color.rgb / (color.rgb - 1);  //Tonemapping HDR colors
			#endif
			color = max(0.0, (color - 0.5)*_contrast + 0.5);
			color = pow(color, _gamma);
			color = lerp(float4(0,0,0,0),color,(1 - _blackvalue));
			//float4 color = lerp(color2,color1,.2);
			//float color2 = tex2Dproj(_GP2, UNITY_PROJ_COORD(shakeZoom)) * float4(0,0,0,0);
			//float4 color = lerp(color1,color2,float4(.51,0,0,0));
			//float4 color = lerp(float4 (sp.a, color2.g,color1.r,0),nK.rgb,.5);
			//float4 color = lerp(color1,tex2Dproj(_GP2, UNITY_PROJ_COORD(shakeZoomG)),0.4);


			//float4 color = tex2Dproj(_GP2, UNITY_PROJ_COORD(shakeZoom));
			float4 invertcol = float4(_redinv,_greeninv,_blueinv,1);

			//Add in color
			#ifdef COLOR_BLACK_OUT
				color.rgb += lerp (float3(0,0,0),float3(_redvalue*falloff,_greenvalue*falloff,_bluevalue*falloff), 1 - _blackvalue);
			#else
				color.rgb += float3(_redvalue*falloff,_greenvalue*falloff,_bluevalue*falloff);
			#endif

			//float4 color = tex2Dproj(_GP2, UNITY_PROJ_COORD(i.uv)) + float4 (.10,0,0,0);
			//float4 color = (N,e,e,n)
			//return tex2Dproj(_GP2, UNITY_PROJ_COORD(i.grabPos));

			#ifdef BLUR_ENABLED
				#ifdef BLUR_FALLOFF
					#define ADDPIXEL(weight,kernelX) tex2Dproj(_GP2, UNITY_PROJ_COORD(float4(shakeZoom.x + _GP2_TexelSize.x * kernelX * _blurfactor, shakeZoom.yzw))) * weight * falloff * _blackvalue
				#else
					#define ADDPIXEL(weight,kernelX) tex2Dproj(_GP2, UNITY_PROJ_COORD(float4(shakeZoom.x + _GP2_TexelSize.x * kernelX * _blurfactor, shakeZoom.yzw))) * weight
				#endif
				color += ADDPIXEL(0.05, 4.0);
				color += ADDPIXEL(0.09, 3.0);
				color += ADDPIXEL(0.12, 2.0);
				color += ADDPIXEL(0.15, 1.0);
				color += ADDPIXEL(0.18, 0.0);
				color += ADDPIXEL(0.15, -1.0);
				color += ADDPIXEL(0.12, -2.0);
				color += ADDPIXEL(0.09, -3.0);
				color += ADDPIXEL(0.05, -4.0);
			#endif
					
			#ifdef COLOR_INVERT
				#ifdef COLIN_FO
					color = ((invertcol - color)*falloff) + (color*(1 - falloff));
				#else
					color = (invertcol - color);
				#endif
			#endif
			return color;
		}
		ENDCG
	}
}
FallBack "Diffuse"
}
