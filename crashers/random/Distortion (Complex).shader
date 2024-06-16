Shader "Zer0/Distortion (Complex)"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_IntensityAndScrolling ("ShiftEdges(X,Y) | Scrolling(Z,W)", Vector) = (0.1,0.1,1,1)
		_DistanceFade ("FadeStart(X) | FadeEnd(Y)", Float) = (20, 50, 0, 0)
		[Toggle(MASK)] _MASK ("Texture Blue channel is Mask", Float) = 0
		[Toggle(MIRROR_EDGE)] _MIRROR_EDGE ("Mirror screen borders", Float) = 0
		[Toggle(DEBUGUV)] _DEBUGUV ("Debug Texture Coordinates", Float) = 0
		[Toggle(DEBUGDISTANCEFADE)] _DEBUGDISTANCEFADE ("Debug Distance Fade", Float) = 0
	}

	Category
	{
		Tags {  "Queue"="Transparent+10" "RenderType"="Transparent" }
		Blend One Zero
		Cull Off
		ZTest Always
		Lighting Off
		ZWrite Off
		Fog { Mode Off }
		AlphaTest Greater 0.001
		LOD 200

		SubShader
		{
			GrabPass { "_GrabTexture" }
	
			Pass
			{  
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#pragma shader_feature MASK
				#pragma shader_feature MIRROR_EDGE
				#pragma shader_feature DEBUGUV
				#pragma shader_feature DEBUGDISTANCEFADE

				#include "UnityCG.cginc"

				#define ENABLE_CLIP 1
				#include "GrabPassDistortion.cginc"			
				ENDCG 
			}
		}	
	}
}
