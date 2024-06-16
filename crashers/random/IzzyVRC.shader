//IzzyVR: Stay away from mirrors
Shader "Izzy/IzzyVRC" {
	Properties {
		[Space(10)]
        [Header(Rebuilt by Izzy)]
		[Space(10)]

			//Remove "//" from the next line
			//_IzzyVR ("VRL", Range(1,1)) = 1

		[Space(88)]
		Izzy("#8888", Range(8, 8888)) = 8888.0
	}

	SubShader {
		Tags {
            "Queue"="Transparent"
            "RenderType"="Transparent"
			"IgnoreProjector"="True" 
			"ForceNoShadowCasting"="True"
		}
		Cull off
		ZWrite Off
		Stencil {
			Ref 1
			Comp notequal
			Pass keep
		}
		
		CGPROGRAM
		#pragma surface surf Lambert
		#pragma multi_compile __ CLAMPOUT
		#include "UnityCG.cginc"
		
		fixed4 _Color;
		int _IzzyVR;
		sampler2D _MainTex;
		float4 _Center;
		float _Forward;
		float _Tile;
		float4 Izzy;
		float _Light;
		
		struct Input {
			float2 uv_MainTex;
		};
		
		void surf (Input IN, inout SurfaceOutput o) {
			half3 col = half3(0, 0, 0);
			float zoom = _Forward / 1000;
			float2 uv = IN.uv_MainTex;
			uv -= .5;
			half3 dir = float3(uv * zoom, 1);

			float light = _Light / 1000;
			float3 tile = abs(float3(_Tile, _Tile, _Tile)) / 1000;
			float3 from = _Center.xyz;

			float s = 0.1, fade = 1.0;
			float3 v = float3(0, 0, 0);
			float pa,a = pa = 0.;
			for (int r = 0; r < _IzzyVR;) {
				float3 p = abs(from + s * dir * .5);
				p = abs(float3(tile - fmod(p, tile*2)));
				a *= a * a; //add c values
				v += float3(s, s*s, s*s*s*s) * a * light * fade;
			}
			
			#ifdef CLAMPOUT
				v = clamp(v, float3(0,0,0), _Color.xyz);
			#endif
			o.Emission = float3(v * .01);
		}
		
		ENDCG
	
	}

	Fallback Off
}
