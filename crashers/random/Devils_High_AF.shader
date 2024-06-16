
//lol
Shader "Devilmane/High AF" {
	Properties {
		_Intensity ("Intensity", Range(0, 50)) = 0
		_Speed ("Speed", Range (0, 50)) = 1
		_ColorTintR (" Red Tint", Range (0, 1)) = 0
		_ColorTintB (" Blue Tint", Range (0, 1)) = 0
		_ColorTintG (" Green Tint", Range (0, 1)) = 0
		[Toggle(_Dark)]_Dark ("Bright/Dark", Float) = 0
	}
	SubShader {
	Tags { "Queue"="Overlay" "RenderType"="Overlay" }
		GrabPass { "_GrabTexture" }

		Pass {
			Cull Off
			ZWrite Off
			ZTest Always
			LOD 200
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma shader_feature _Dark
			#include "UnityCG.cginc"

			struct v2f {

				half4 pos : SV_POSITION;
				half4 grabPos : TEXCOORD0;
				float4 worldPos : TEXCOORD1;
				float4 projPos : TEXCOORD2;
			};

			sampler2D _GrabTexture;
			half _Intensity;
			float _Speed;
			float _ColorTintR;
			float _ColorTintB;
			float _ColorTintG;


			v2f vert(appdata_base v) {

				v2f o;
				o.worldPos = mul(unity_ObjectToWorld, v.vertex);
				o.pos = UnityObjectToClipPos(v.vertex);
				o.grabPos = ComputeScreenPos(o.pos);
				o.projPos = ComputeScreenPos (o.pos);
				COMPUTE_EYEDEPTH(o.projPos.z);
				return o;
			}

			half4 frag(v2f i) : COLOR {

				half4 red = tex2D(_GrabTexture, i.grabPos).r;
				half4 blue = tex2D(_GrabTexture, i.grabPos).g;
				half4 green = tex2D(_GrabTexture, i.grabPos).b;
				i.grabPos.xyz += sin((_Time.y * _Speed + i.grabPos.xyz) * _Intensity)/10;
				fixed4 color = tex2Dproj(_GrabTexture,UNITY_PROJ_COORD(i.grabPos));
				#ifdef _Dark

					return fixed4(color.r*_ColorTintR,color.g*_ColorTintG,color.b*_ColorTintB,color.a);

				#endif
				return fixed4(color.r+_ColorTintR,color.g+_ColorTintG,color.b+_ColorTintB,1);
				

				/*fixed r = tex2Dproj(_GrabTexture, (i.grabPos.xyz / i.grabPos.w)).r;
				fixed g = tex2Dproj(_GrabTexture, (i.grabPos.xyz / i.grabPos.w)).g;
				fixed b = tex2Dproj(_GrabTexture, (i.grabPos.xyz / i.grabPos.w)).b;
				i.grabPos.xyz += sin((_Time.y *_Speed + i.grabPos.xyz) * _Intensity)/10;
				fixed4 color = tex2Dproj(_GrabTexture,UNITY_PROJ_COORD(i.grabPos));
				fixed4 final = fixed4(color.r*r,color.g*g,color.b*b,color.a)

				return final;
				*/

			}
			ENDCG
		}
	}

	FallBack "Diffuse"
}