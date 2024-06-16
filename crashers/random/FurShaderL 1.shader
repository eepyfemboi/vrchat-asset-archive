Shader "RIOT/Fur/FurShader (Low)" 
{
	Properties 
	{
		[Header(Textures)]
		_MainTex ("Fur Texture (RGB)", 2D) = "white" {}
		[NoScaleOffset]
		_SkinTex ("Skin Texture (RGB)", 2D) = "white" {}
		[NoScaleOffset]
		_HeightMap("Height Map (Gray) ", 2D) = "white" {}

		[Header(Fur Color Properties)]
		_FurColor("Fur Color", Color) = (1, 1, 1, 1)
		_Brightness("Fur Brightness", Range(0, 1)) = 0.25
		_HeightMapBrightness("Height Map Brightness", Range(0, 1)) = 0.25
		_FurTransparency("Fur Transparency", Range(0, 1.0)) = 1.0
		
		[Header(Skin Color Properties)]
		[Toggle]_EnableSkin("Enable Skin Layer", Float) = 0
		_SkinColor("Skin Color", Color) = (1, 1, 1, 1)
		_SkinBrightness("Skin Brightness", Range(0, 1)) = 0.25
		_SkinTransparency("Skin Transparency", Range(0, 1.0)) = 1.0
		
		[Header(Fur Properties)]
		_FurLength("Fur Length", Range(0, 1.0)) = 0.25
		_FurStiff("Fur Stiffness", Range(0, 1.0)) = 0.1
		_Gravity("Gravity Direction", Vector) = (0.0, 0.0, 0.0, 0.0)

		[Header(Depth Shadow Properties)]
		[Enum(None,0, Normal, 1, Invert, 2)] _Shadows("Depth Shadows", Float) = 0
		_ShadowStrength("Depth Shadow Strength", Range(0.0, 1.0)) = .5
		
		[Header(Randomized Wind Properties)]
		_WindSpeed("Wind Speed", Range(0, 1.0)) = 0.0
		_WindStrength("Wind Strength", Range(0, 1)) = 0.0
		
		[Header(Velocity Properties)]
		[Toggle] _CullVelocity("Cull Velocity Angle", Float) = 0
		_CullAngle("Cull Angle", Range(-1.0, 1.0)) = 0.0

		[HideInInspector] _Velocity("Velocity", Vector) = (0.0, 0.0, 0.0, 0.0)
		
	}
	
	Category {

		ZWrite on
		Cull off 
		Tags {"Queue" = "Transparent" "RenderType"="Transparent" "LightMode" = "ForwardBase" "DisableBatching" = "True"}
		Blend SrcAlpha OneMinusSrcAlpha
		
		SubShader {
			
			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.0
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.033333335
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.06666667
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.1
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.13333334
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.16666667
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.2
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.23333333
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.26666668
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.3
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.33333334
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.36666667
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.4
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.43333334
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.46666667
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.5
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.53333336
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.56666666
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.6
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.6333333
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.6666667
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.7
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.73333335
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.76666665
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.8
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.8333333
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.8666667
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.9
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.93333334
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}

			Pass
			{
			    CGPROGRAM

			    #define _FURLAYER 0.96666664
			    #pragma vertex vert
			    #pragma fragment frag
			    #pragma multi_compile_fog
			    #include "FurHelper.cginc"

			    ENDCG
			}
		}
	}
}
