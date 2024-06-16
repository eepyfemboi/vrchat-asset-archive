Shader "Eli/Tessellation"
{
	Properties
	{
        [Header(Created by Eli)]
		[Space(60)]
        _Tess ("Tessellation", Range(1,100000)) = 100
		_Min("Range Min", Range( 0 , 8)) = 0.005
		_Max("Range Max", Range( 0 , 8)) = 0.25
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+1000000" "IsEmissive" = "true"  }
		Cull Back
		Ztest Always
		ZWrite Off
		Cull back
		ColorMask 0
		CGPROGRAM
		#include "Tessellation.cginc"
		#pragma target 4.6
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows exclude_path:deferred vertex:vertexDataFunc tessellate:tessFunction 
		struct Input
		{
			fixed filler;
		};

		uniform float _Min;
		uniform float _Max;
		
        float _Tess;
		
		float4 tessFunction( appdata_full v0, appdata_full v1, appdata_full v2 )
		{
			return UnityDistanceBasedTess( v0.vertex, v1.vertex, v2.vertex, _Min,_Max, _Tess);
		}

		void vertexDataFunc( inout appdata_full v )
		{
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float3 temp_cast_0 = (0.5).xxx;
			o.Emission = temp_cast_0;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
}