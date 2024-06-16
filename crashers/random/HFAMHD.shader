Shader "Private Shaders/HFHD"
{
	Properties
	{
		//CGINC PROPERTIES
		[Header(Rendering)]
		[Enum(UnityEngine.Rendering.CullMode)] _Culling ("Cull Mode", Int) = 2
		[Enum(UnityEngine.Rendering.BlendMode)] _BlendSrc ("Blend mode Source", Int) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] _BlendDst ("Blend mode Destination", Int) = 0
		[Enum(Off,0,On,1)] _ZWrite("ZWrite", Int) = 1
		[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Int) = 4
		
		//STENCIL
		[Header(Stencil)]
		_Stencil ("Stencil ID [0-255]", Float) = 0
		_ReadMask ("ReadMask [0-255]", Int) = 255
		_WriteMask ("WriteMask [0-255]", Int) = 255
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("Stencil Comparison", Int) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("Stencil Operation", Int) = 8
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFail ("Stencil Fail", Int) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilZFail ("Stencil ZFail", Int) = 0
		
		
		//COLOR
		[Header(Ramp Lighting)]
		_Color ("Color", Color) = (0.5,0.5,0.5,1.0)
		_HColor ("Highlight Color", Color) = (0.6,0.6,0.6,1.0)
		_SColor ("Shadow Color", Color) = (0.3,0.3,0.3,1.0)
		
		//COLORS RAMP
		[NoScaleOffset]_Ramp ("Toon Ramp (RGB)", 2D) = "gray" {}
		_RampOff ("Ramp Offset", Range(0,5)) = 1
		
		//DIFFUSE
		[Header(Texture)]
		_MainTex ("Main Texture (RGB)", 2D) = "white" {}
		[NoScaleOffset]_Mask1 ("Specular Map", 2D) = "black" {}
		[NoScaleOffset]_Mask2 ("Detail Mask (Alpha)", 2D) = "black" {}
		_Detail ("Detail Texture", 2D) = "white" {}
		[PowerSlider(3.0)] _DetAmount ("Bias", Range(0.0,1)) = 0.5
		[HDR] _DetColor("Tint Color", Color) = (1, 1, 1, 1)
				
		//Alpha Testing
		_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
		
		//BUMP
		[Header(Normal Mapping)]
		[Normal]_BumpMap ("Normal Map", 2D) = "bump" {}
		[Normal]_DetBump ("Detail Normal Map", 2D) = "bump" {}
		_DetBumpAmt ("Detail Normal Amount", Range(0.0,1)) = 1
		
		
		//SPECULAR
		[Header(Specular)]
		_SpecColor ("Specular Color", Color) = (0.5, 0.5, 0.5, 1)
		_Shininess ("Shininess", Range(0.0,2)) = 0.1
		_AnisoBrush ("Anisotropic Spread", Range(0.0,2)) = 1.0
		
		//REFLECTION
		[Header(Reflection)]
		[NoScaleOffset]_Cube ("Reflection Cubemap", Cube) = "_Skybox" {}
		_ReflectColor ("Reflection Color (RGB) Strength (Alpha)", Color) = (1,1,1,0.5)
		_ReflectRoughness ("Reflection Roughness (Mip)", Range(0,9)) = 0
		
		//RIM LIGHT
		[Header(Rim)]
		_RimColor ("Rim Color", Color) = (0.8,0.8,0.8,0.6)
		_RimMin ("Rim Min", Range(0,1)) = 0.5
		_RimMax ("Rim Max", Range(0,1)) = 1.0
		
		
		//MATCAP
		[Header(MatCap)]
		[NoScaleOffset]_MatCap ("MatCap", 2D) = "white" {}
		[Toggle(MATCAPCOLOR_ON)] MatCapColor("Use MatCap Texture Color?", Float) = 0
		[HDR] _MatCapColor("MatCap Color (RGB) Strength (Alpha)", Color) = (1,1,1,1)
		_Border ("MatCap Border", Range (0.1, 0.5)) = 0.43

	}
	
	SubShader
	{
		Tags {"Queue"="Opaque+1" "IgnoreProjector"="True" "RenderType"="Opaque"}
		Cull [_Culling]
		Blend [_BlendSrc] [_BlendDst]
		ZWrite [_ZWrite]
		ZTest [_ZTest]
			
		Stencil
		{
			Ref [_Stencil]
			ReadMask [_ReadMask]
			WriteMask [_WriteMask]
			Comp [_StencilComp]
			Pass [_StencilOp] 
			Fail [_StencilFail]
			ZFail [_StencilZFail]
		}
		
		CGPROGRAM
		#pragma surface surf ToonyColorsCustom addshadow fullforwardshadows vertex:vert alphatest:_Cutoff
		#pragma target 3.5
		#pragma glsl
		#pragma multi_compile TCP2_RAMPTEXT
		#pragma shader_feature MATCAPCOLOR_ON

		// VARIABLES		
		fixed4 _Color, _ReflectColor, _MatCapColor, _RimColor, _RimDir, _DetColor;
		sampler2D _MainTex, _Mask1, _Mask2, _BumpMap, _DetBump, _Detail, _MatCap;
		samplerCUBE _Cube;
		fixed _ReflectRoughness, _RimMin, _RimMax, _Shininess;
		float _AnisoBrush, _Border, _DetAmount, _DetBumpAmt, _RampOff;
		
		struct Input
		{
			half2 uv_MainTex;
			fixed3 tangentDir;
			half2 uv_BumpMap;
			half2 uv_DetBump;
			float3 worldRefl;
			INTERNAL_DATA
			float3 viewDir;
			half2 matcap;
			half2 uv_Detail;
		};

		//Lighting-related variables
		fixed4 _HColor, _SColor;
		sampler2D _Ramp;
		
		//Custom SurfaceOutput
		struct SurfaceOutputCustom
		{
			fixed3 Albedo;
			fixed3 Normal;
			fixed3 Emission;
			half Specular;
			fixed Gloss;
			fixed Alpha;
			fixed3 Tangent;
		};
		
		inline half4 LightingToonyColorsCustom (SurfaceOutputCustom s, half3 lightDir, half3 viewDir, half atten)
		{
			s.Normal = normalize(s.Normal);
			fixed ndl = max(0, dot(s.Normal, lightDir)*0.5 + 0.5);
			
			fixed3 ramp = tex2D(_Ramp, fixed2(ndl,ndl) * _RampOff);
		#if !(POINT) && !(SPOT)
			ramp *= atten;
		#endif
			_SColor = lerp(_HColor, _SColor, _SColor.a);	//Shadows intensity through alpha
			ramp = lerp(_SColor.rgb,_HColor.rgb,ramp);
			
			//Specular
			half3 h = normalize(lightDir + viewDir);
			float ndh = max(0, dot (s.Normal, h));
			half3 binorm = cross(s.Normal, s.Tangent);
			fixed ndv = dot(viewDir, s.Normal);
			float aX = dot(h, s.Tangent) / _AnisoBrush;
			float aY = dot(h, binorm) / _Shininess;
			float spec = sqrt(max(0.0, ndl / ndv)) * exp(-2.0 * (aX * aX + aY * aY) / (1.0 + ndh)) * s.Gloss * 2.0;
			spec *= atten;
			fixed4 c;
			c.rgb = s.Albedo * _LightColor0.rgb * ramp;
		#if (POINT || SPOT)
			c.rgb *= atten;
		#endif
			c.rgb *= 2;
			c.rgb += _LightColor0.rgb * _SpecColor.rgb * spec;
			c.a = s.Alpha + _LightColor0.a * _SpecColor.a * spec;
			return c;
		}
		
		// VERTEX FUNCTION
		struct appdata_tcp2
		{
			float4 vertex : POSITION;
			float3 normal : NORMAL;
			float4 texcoord : TEXCOORD0;
			float4 texcoord1 : TEXCOORD1;
			float4 texcoord2 : TEXCOORD2;
			float4 tangent : TANGENT;
		};
		
		void vert(inout appdata_tcp2 v, out Input o)
		{
			UNITY_INITIALIZE_OUTPUT(Input, o);
			
			//MATCAP
			float3 worldNorm = normalize(unity_WorldToObject[0].xyz * v.normal.x + unity_WorldToObject[1].xyz * v.normal.y + unity_WorldToObject[2].xyz * v.normal.z);
			worldNorm = mul((float3x3)unity_ObjectToWorld, worldNorm);
			o.matcap.xy =  worldNorm * _Border + 0.5f;
			
			//ANISOTROPIC SPECULAR
			o.tangentDir = v.tangent.xyz;
		}

		// SURFACE FUNCTION
		void surf (Input IN, inout SurfaceOutputCustom o)
		{
			//Diffuse
			fixed4 mainTex = tex2D(_MainTex, IN.uv_MainTex);			
			fixed4 mask2 = tex2D(_Mask2, IN.uv_MainTex).a;
			fixed4 detTex = tex2D(_Detail, IN.uv_Detail);
			fixed4 mask1 = tex2D(_Mask1, IN.uv_MainTex);
			mainTex.rgb = lerp(mainTex.rgb, (detTex.r * _DetColor), mask2.a * _DetAmount);
			o.Albedo = (mainTex.rgb * _Color.rgb);
			//o.Albedo = (mainTex.rgb * _Color.rgb) * (detTex * _DetColor);
			o.Alpha = (mainTex.a * _Color.a);

			//Specular
			_Shininess *= mask1.a;
			o.Gloss = mask1.a;
			o.Specular = _Shininess;
			o.Tangent = IN.tangentDir;
			
			//Normal map
			_DetBumpAmt *= mask2.a;
			o.Normal = UnpackNormal(tex2D(_BumpMap, IN.uv_BumpMap));
			o.Normal += UnpackNormal(tex2D(_DetBump, IN.uv_DetBump)) * _DetBumpAmt;
			
			half3 worldRefl = WorldReflectionVector(IN, o.Normal);
			fixed4 reflColor = texCUBElod(_Cube, half4(worldRefl.xyz, _ReflectRoughness));
			reflColor.rgb *= _ReflectColor.rgb * _ReflectColor.a;
			
			//Rim
			float3 viewDir = normalize(IN.viewDir);
			half rim = 1.0f - saturate( dot(viewDir, o.Normal) );
			rim = smoothstep(_RimMin, _RimMax, rim);
			o.Emission += (_RimColor.rgb * rim * reflColor.rgb) * _RimColor.a;
			o.Albedo = lerp(o.Albedo.rgb, _RimColor.rgb, rim * _RimColor.a);
			
			//MatCap
			fixed3 matcap = tex2D(_MatCap, IN.matcap.xy).rgb;
			
			#ifdef MATCAPCOLOR_ON
			o.Albedo *= lerp(fixed3(1,1,1), matcap.rgb * _MatCapColor.rgb, _MatCapColor.a);
			#else
			o.Albedo *= lerp(fixed3(1,1,1), matcap.r * _MatCapColor.rgb, _MatCapColor.a);
			#endif
		}
		ENDCG
	}
	Fallback "Diffuse"
}