//BY MOCHIE
//NOT FOR RESALE OR REDISTRIBUTION
Shader "Mochie/Mochie's Screen FX" {
Properties {
	
	// Render settings
	[HideInInspector]_BlendMode("__mode", Float) = 0.0
	[HideInInspector]_SrcBlend("__src", Float) = 1.0
	[HideInInspector]_DstBlend("__dst", Float) = 0.0
	[Enum(Off,0,Front,1,Back,2)]_Culling("Culling Mode", Int) = 1
	[Enum(Off,0,On,1)]_ZWrite("ZWrite", Int) = 0
	[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Int) = 8

	// Distortion
	_DistMap ("Normal Map", 2D) = "bump" {}
	_DistIntensity("Intensity", Range(0,128)) = 0
	_DistSpeed("Speed", Range(0,1)) = 0
	[Toggle(dg)]_DistGeom("", Float) = 0

	// Blur
	_BlurOpacity("Exposure", Range(0,1)) = 0
	_BlurSpread("Spread", Range(0,1)) = 0
	_Pixelation("Pixelation", Range(0.0000001, 0.01)) = 0.0000001
	[Toggle(rgbs)]_RGBSplit("RGB Split", Float) = 0
	[Toggle(cb)]_ColorizeBlur("Colorize Blur", Float) = 0

	// Shake
	_Amp("",Range(0,4000)) = 0
	[Toggle(df)]_UseFalloff("Distance Falloff", Float) = 0
	_AmpMult("Amplitude Multiplier", Range(0,.025)) = .025
	_MinRange("Min Range", Range(0,100)) = 1
	_MaxRange("Max Range", Range (.1,100)) = 3

	// Zoom
	_Magnification("Magnification", Range(0,1.5)) = 0
	_MinRangeZ("Minimum Range", Range(0,3)) = 0
	_MaxRangeZ("Maximum Range", Range (0.001,10)) = 7
	[Toggle(st)]_SmoothTransition("Smooth Transition", Float) = 0
	_XYTrans("X/Y Transition Width", Range(0,1)) = .8
	_ZTrans("Z Transition Width", Range(0,1)) = .8

	// Screenspace Texture
	_ScreenTex("Image Overlay", 2D) = "black" {}
	_stTint("Tint", Color) = (1,1,1,1)
	_Width("Width", Range(0,2)) = 1
	_Height("Height", Range(0,2)) = 1
    _Scale("Scale", Range(-1,0)) = -.5
	_LR("L/R Position", Range(-1,1)) = 0
	_UD("Up/Down Position", Range(-1,1)) = 0

	// Color
	_Opacity("Opacity", Range(-1, 1)) = 0
	_HDRBlend("HDR", Range(0,1)) = 0
	[Toggle(cp)]_UseColorpicker("Use Colorpicker", Float) = 0
	[HDR]_Colorpicker("", Color) = (1,1,1,0)
	_rAmt("Red Tint", Range(-1,1)) = 1
	_bAmt("Blue Tint", Range(-1,1)) = 1
	_gAmt("Green Tint", Range(-1,1)) = 1
	[Toggle(cf)]_ColFalloff("FX Distance Falloff", Float) = 0
	_VisibilityMult("Visibility Multiplier", Range(0,.05)) = .025
	_MinRangeCol("Min Range", Range(0,100)) = 1
	_MaxRangeCol("Max Range", Range (.1,100)) = 3
	[Toggle(inv)]_Invert("Invert", Int) = 0
	_InvAmt("Invert Amount", Range (0,1)) = .1
	[Toggle(gs)]_Grayscale("Grayscale", Int) = 0
}

SubShader {
	Tags {"Queue" = "Transparent" "LightMode" = "Always" "ForceNoShadowCasting" = "True" "IgnoreProjector" = "True"}
	GrabPass {"_gp"}
	Blend [_SrcBlend] [_DstBlend]
	Cull [_Culling]
	ZTest [_ZTest]
	ZWrite [_ZWrite]

		Pass {		
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma shader_feature df
			#pragma shader_feature inv
			#pragma shader_feature dg
			#pragma shader_feature gs
			#pragma shader_feature cf
			#pragma shader_feature cb
			#pragma shader_feature cp
			#pragma shader_feature rgbs
			#pragma shader_feature st
			#include "UnityCG.cginc"

			// Properties
			sampler2D_float _CameraDepthTexture;
            sampler2D _gp; float4 _gp_TexelSize;
			sampler2D _DistMap; float4 _DistMap_ST;
			sampler2D _ScreenTex;

			float4 _Colorpicker, _stTint; // Color Pickers
			float _DistIntensity, _DistSpeed;  // Distortion
			float _BlurOpacity, _BlurSpread;  // Blur
			float _Amp, _AmpMult, _MinRange, _MaxRange; // Shake
			float _MinRangeZ, _MaxRangeZ, _Magnification, _XYTrans, _ZTrans; // Zoom
			float _Width, _Height, _Scale, _LR, _UD; // Screenspace texture
			float _rAmt, _gAmt, _bAmt, _Opacity, _InvAmt, _HDRBlend, _Pixelation; // Color
			float _MinRangeCol, _MaxRangeCol, _VisibilityMult; // FX Falloff
			
			// Triplanar func for world geom distortion
			float4 triplanar(sampler2D tex, float3 wpos, float3 wNorm, float4 _ST) {
				
				// Calc xyz + scaling for tex
				float2 yUV = wpos.xz / _ST;
				float2 xUV = wpos.zy / _ST;
				float2 zUV = wpos.xy / _ST;

				// Sample tex
				float3 yDiff = UnpackNormal(tex2D(tex, yUV));
				float3 xDiff = UnpackNormal(tex2D(tex, xUV));
				float3 zDiff = UnpackNormal(tex2D(tex, zUV));

				float3 blend = pow(abs(wNorm), 1);
				blend = blend / (blend.x + blend.y + blend.z);

				float4 finalTri;

				// Assembling mapped tex
				finalTri.rgb = (xDiff * blend.x) + (yDiff * blend.y) + (zDiff * blend.z);
				finalTri.a = 1;
				return finalTri;
			}

			struct appdata_t {
				float4 vertex : POSITION;
				float4 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 vertex : SV_POSITION;
				float4 uvgrab : TEXCOORD0;
				float2 uvdist : TEXCOORD1;
				float4 pos : TEXCOORD2;
				float4 posCol : TEXCOORD3;
				float4 distance: TEXCOORD4;
				float3 viewDir : TEXCOORD5;
				float3 raycast  : TEXCOORD6;
				float4 uvc : TEXCOORD7;
				float4 uvgNoZ : TEXCOORD8;
				float4 uvd : TEXCOORD9;
				float4 camDist : TEXCOORD10;
				float4 screenTex: TEXCOORD11;
			};

			v2f vert (appdata_t v) {
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.screenTex = mul(unity_ObjectToWorld, v.vertex);
				o.distance = distance(_WorldSpaceCameraPos, mul(unity_ObjectToWorld, float4(0, 0, 0, 1)));
				o.pos = o.vertex - o.vertex*step(_MaxRange, o.distance);
				o.posCol = o.vertex - o.vertex*step(_MaxRangeCol, o.distance);
				o.uvgrab = ComputeGrabScreenPos(o.vertex);
				o.camDist = distance(mul(unity_ObjectToWorld, v.vertex), _WorldSpaceCameraPos);
				o.uvc = ComputeGrabScreenPos(UnityObjectToClipPos(float4(0, 0, 0, 1)));
				o.uvd = ComputeGrabScreenPos(o.vertex) - o.uvc;
				o.uvgNoZ = ComputeGrabScreenPos(o.vertex);
				#ifdef dg
					o.uvdist = TRANSFORM_TEX(v.texcoord, _DistMap);
				#else
					o.uvdist = TRANSFORM_TEX(v.texcoord, _DistMap); + _Time.y*_DistSpeed;
				#endif
				o.raycast = UnityObjectToViewPos(v.vertex).xyz * float3(-1,-1,1);
				o.raycast = lerp(o.raycast, v.texcoord, v.texcoord.z != 0);
				o.viewDir = WorldSpaceViewDir(v.vertex);
				return o;
			}

			float4 frag (v2f i) : SV_Target {

				// Screenspace Texture Overlay               
				float3 matrixMul = mul(UNITY_MATRIX_V, float4((i.screenTex.rgb - _WorldSpaceCameraPos), 0)).xyz;
                float2 divRG = (matrixMul.rgb.rg / matrixMul.rgb.b).rg;
                float2 stUV = float2(((_ScreenParams.b / _ScreenParams.a) * divRG.r * _Width)+_LR, (divRG.g * _Height)+_UD) * _Scale + 0.5;
                float4 screenTexCol = tex2D(_ScreenTex, stUV);
				screenTexCol *= _stTint;

				// Zoom
				float2 objScrnPos = i.uvc.xy / i.uvc.w;
				#ifdef st
					if ((objScrnPos.x <= 1 && objScrnPos.x >= _XYTrans) || (objScrnPos.y <= 1 && objScrnPos.y >= _XYTrans) || 
					    (objScrnPos.x >= 0 && objScrnPos.x <= _XYTrans/4) || (objScrnPos.y <= _XYTrans/4 && objScrnPos.y >= 0) || 
						(i.uvc.w > _MaxRangeZ*_ZTrans && i.uvc.w < _MaxRangeZ)) {
						float smoothing = 
						smoothstep(1, _XYTrans, objScrnPos.x) * 
						smoothstep(1, _XYTrans, objScrnPos.y) * 
						smoothstep(0, _XYTrans/4, objScrnPos.x) * 
						smoothstep(0, _XYTrans/4, objScrnPos.y) * 
						smoothstep(_MaxRangeZ, _MaxRangeZ*_ZTrans, i.uvc.w);
						_Magnification *= smoothing;
					}
					i.uvd /= _Magnification * i.camDist;
					i.uvgrab = i.uvc + i.uvd;
					if (_Magnification == 0 || objScrnPos.x < 0 || objScrnPos.y < 0 || objScrnPos.x > 1 || objScrnPos.y > 1 || i.uvc.w < _MinRangeZ || i.uvc.w > _MaxRangeZ)
						i.uvgrab = i.uvgNoZ;
				#else
					i.uvd /= _Magnification * i.camDist;
					i.uvgrab = i.uvc + i.uvd;
					if (_Magnification == 0 || objScrnPos.x < 0 || objScrnPos.y < 0 || objScrnPos.x > 1 || objScrnPos.y > 1 || i.uvc.w < _MinRangeZ || i.uvc.w > _MaxRangeZ)
						i.uvgrab = i.uvgNoZ;
				#endif

				// Distortion
				#ifdef dg
					// World Geometry
					float depth = Linear01Depth(DecodeFloatRG(tex2Dproj(_CameraDepthTexture, i.uvgrab)));
					i.raycast = i.raycast * (_ProjectionParams.z / i.raycast.z);
					float4 vpos = float4(i.raycast * depth, 1);
					float3 wpos = mul(unity_CameraToWorld, vpos).xyz;
					float3 wposx = ddx(wpos);
					float3 wposy = ddy(wpos);
					float3 normal = normalize(cross(wposy, wposx));
					float2 distMap = triplanar(_DistMap, (wpos+_Time.y*_DistSpeed), normal, _DistMap_ST).rg;	
				#else
					// Screen
					float2 distMap = UnpackNormal(tex2D(_DistMap, i.uvdist)).rg;
				#endif

				float2 offset = distMap * _DistIntensity * _gp_TexelSize.xy;

				// Shake
				float shakeSpeed = sin(_Time.y * 300);
				#ifdef df
					float falloff = pow(min(1, 1 - (1/(_MaxRange - _MinRange))*(i.distance - _MinRange)), 2) * i.pos.w;
					_Amp *= falloff;
					_Amp *= _AmpMult;
				#endif
				float offsetx = sin(_Time.y*123456) * (_gp_TexelSize.x * _Amp);
				float offsety = sin(_Time.y*132654) * (_gp_TexelSize.y * _Amp);
				i.uvgrab.x += offsetx * shakeSpeed;
				i.uvgrab.y += offsety * shakeSpeed;
				i.uvgrab.xy = (offset * UNITY_Z_0_FAR_FROM_CLIPSPACE(i.uvgrab.z)) + i.uvgrab.xy;
				
				// Pixelate
				float4 screenUV = i.uvgrab / i.uvgrab.w;
				i.uvgrab = float4((int)(screenUV.x / _Pixelation) * _Pixelation, (int)((screenUV.y) / _Pixelation) * _Pixelation, screenUV.z, screenUV.w);
				_BlurSpread /= 26;
				
				// Blur Setup
				float4 uvgrab = i.uvgrab;
					uvgrab.x += _BlurSpread*.55555; // *.55555 to x coords to roughly offset screen aspect ratios
				float4 gp1 = tex2Dproj(_gp, UNITY_PROJ_COORD(uvgrab));
					uvgrab = i.uvgrab;
					uvgrab.x -= _BlurSpread*.55555;
				float4 gp2 = tex2Dproj(_gp, UNITY_PROJ_COORD(uvgrab));
					uvgrab = i.uvgrab;
					uvgrab.y += _BlurSpread;
				float4 gp3 = tex2Dproj(_gp, UNITY_PROJ_COORD(uvgrab));
					uvgrab = i.uvgrab;
					uvgrab.y -= _BlurSpread;
				float4 gp4 = tex2Dproj(_gp, UNITY_PROJ_COORD(uvgrab));
					uvgrab = i.uvgrab;
					uvgrab.x += _BlurSpread*.55555;
					uvgrab.y -= _BlurSpread;
				float4 gp5 = tex2Dproj(_gp, UNITY_PROJ_COORD(uvgrab));
					uvgrab = i.uvgrab;
					uvgrab.x -= _BlurSpread*.55555;
					uvgrab.y += _BlurSpread;
				float4 gp6 = tex2Dproj(_gp, UNITY_PROJ_COORD(uvgrab));
					uvgrab = i.uvgrab;
					uvgrab.x += _BlurSpread*.55555;
					uvgrab.y += _BlurSpread;
				float4 gp7 = tex2Dproj(_gp, UNITY_PROJ_COORD(uvgrab));
					uvgrab = i.uvgrab;
					uvgrab.x -= _BlurSpread*.55555;
					uvgrab.y -= _BlurSpread;
				float4 gp8 = tex2Dproj(_gp, UNITY_PROJ_COORD(uvgrab));

				// Use blur grabpasses for the rgb split effect
				float4 blur;
				#ifdef rgbs
					float blurR = gp4.r*3;
					float blurG = gp2.g*3;
					float blurB = gp1.b*3;
					float blurA = (gp1.a + gp2.a + gp3.a + gp4.a + gp5.a + gp6.a + gp7.a + gp8.a)/8;
					blur = float4(blurR, blurG, blurB, blurA);
				#else
					blur = (gp1 + gp2 + gp3 + gp4 + gp5 + gp6 + gp7 + gp8)/8;
				#endif

				// Color
				float4 col = tex2Dproj(_gp, UNITY_PROJ_COORD(i.uvgrab));
				col *= _Opacity-1;

				#ifdef cp
					_rAmt = _Colorpicker.r;
					_gAmt = _Colorpicker.g;
					_bAmt = _Colorpicker.b;
				#endif

				float4 finalCol = float4(col.r*(-_rAmt), col.g*(-_gAmt), col.b*(-_bAmt), col.a) + screenTexCol;

				// If using colorize blur, calculate the color effects on blurCol alongside finalCol, otherwise just calculate finalCol and add blurCol at the end.
				#ifdef cb
					blur*= _Opacity-1;
					float4 blurCol = float4(blur.r*(-_rAmt), blur.g*(-_gAmt), blur.b*(-_bAmt), blur.a);
					#ifdef inv
						finalCol = _InvAmt-finalCol;
						blurCol = _InvAmt-blurCol;
					#endif
					float4 HDR = finalCol * finalCol;
					float4 HDRBlur = blurCol * blurCol;
					finalCol = lerp(finalCol, HDR, _HDRBlend);
					blurCol = lerp(blurCol, HDRBlur, _HDRBlend);
					#ifdef gs
						finalCol.rgb = dot(finalCol.rgb, float3(0.3,0.59,0.11));
						blurCol.rgb = dot(blurCol.rgb, float3(0.3,0.59,0.11));
					#endif
					finalCol += blurCol * _BlurOpacity;
					#ifdef cf
						float colFalloffAmt = pow(min(1, 1 - (1/(_MaxRangeCol - _MinRangeCol))*(i.distance - _MinRangeCol)), 2) * i.posCol.w ;
						finalCol.a *= colFalloffAmt;
						finalCol.a *= _VisibilityMult;
					#endif
					return finalCol;
				#else
					#ifdef inv
						finalCol = _InvAmt-finalCol.rgba;
					#endif
					float4 HDR = finalCol * finalCol;
					finalCol = lerp(finalCol, HDR, _HDRBlend);
					#ifdef gs
						finalCol += blur * _BlurOpacity;
						finalCol.rgb = dot(finalCol.rgb, float3(0.3,0.59,0.11));
					#else
						finalCol += blur * _BlurOpacity;
					#endif
					#ifdef cf
						float colFalloffAmt = pow(min(1, 1 - (1/(_MaxRangeCol - _MinRangeCol))*(i.distance - _MinRangeCol)), 2) * i.posCol.w ;
						finalCol.a *= colFalloffAmt;
						finalCol.a *= _VisibilityMult;
					#endif
					return finalCol;
				#endif
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "MSFXEditor"
}