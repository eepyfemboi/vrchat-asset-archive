Shader "VRCMods/NIEShader"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_Cutoff("Alpha cutoff", Range(0,1)) = 0.01
	}

	SubShader
	{
		// No culling or depth
		//Cull Off ZWrite Off ZTest Always

		Pass
		{
			CGPROGRAM
			#pragma shader_feature _ _ALPHATEST_ON _ALPHABLEND_ON _ALPHAPREMULTIPLY_ON
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			uniform float _Cutoff;

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				return o;
			}
			
			sampler2D _MainTex;

			// welp, that's a waves...
			float4 frag (v2f i) : SV_Target
			{
				float4 col = tex2D(_MainTex, i.uv);

				#if defined(_ALPHATEST_ON)
        		clip(col.a - _Cutoff);
    			#endif

				//col = col * sin(_Time.y);

				//return col;

				float3 c = float3(0., .0, 0.);
				float l;// = 1.;
				float z = _Time.z;

				for(int j=0; j<3; j++) {
					float2 uv;
					float2 p = (i.uv);///float2(4096., 4096.);

					uv=p;

					p-=0.5;

					z+=0.07;

					l=length(p);

					uv+=p/l*(sin(z)+1.0)*abs(sin(l*9.0-z*2.0));

					c[j]=0.01/length(abs(fmod(uv,1.)-0.5));
				}

				//return fixed4(c/l, _Time.y);
				return col * (10 * float4(c/l, _Time.y));
				//return fixed4(sin(_Time.y), cos(_Time.y), sin(_Time.y * _Time.y), 1.);
			}

			// fixed4 frag (v2f i) : SV_Target
			// {
			// 	fixed4 col = tex2D(_MainTex, i.uv);

			// 	return col;
			// }
			ENDCG
		}
	}
}
