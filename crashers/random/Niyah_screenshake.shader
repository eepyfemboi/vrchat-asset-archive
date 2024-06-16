Shader "Niyah/ScreenShake" {
    Properties{
		[Header(Colors Settings)]
		[Space(5)]
			_Colorchange ("Colors distance", Range(-5, 5)) = 0
			_Lightning ("Lightning", Range(0.0001, 20)) = 1
			_Color("Color tint", Color) = (1.0, 1.0, 1.0, 1.0)
		[Space(10)]
		[Header(Screenshake Settings)]
		[Space(5)]
			_AxisX ("Axis X", Range( -2 , 2)) = 0
			_AxisY ("Axis Y", Range( -2 , 2)) = 0
			_IntensityX ("Intensity X", Range( 0 , 100)) = 10
			_IntensityY ("Intensity Y", Range( 0 , 100)) = 10
    }
		SubShader {
        Tags { "IgnoreProjector" = "True" "Queue" = "Overlay+80001"  "RenderType" = "Overlay" }

			GrabPass {
				"_NotBackgroundTexture"
			}

			Pass {
				ZTest Always
				ZWrite Off
				Cull Front
				offset -9999999, -9999999	
				Blend One Zero
				Lighting Off
				Fog{ Mode Off }
				
				CGPROGRAM
				
				#pragma vertex vert
				#pragma fragment frag
				#include "UnityCG.cginc"
				
				sampler2D _NotBackgroundTexture;
				float _Lightning;
				float _Colorchange;
				float _IntensityX;
				float _IntensityY;
				float _AxisX;
				float _AxisY;
				float4 _Color;
				
			struct appdata{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};
				


			struct v2f {
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float4 screenCoord : TEXCOORD1;
				float4 grabPos : TEXCOORD2;
			};

			v2f vert(appdata v) {
				v2f o = (v2f)0;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				o.screenCoord.xy = ComputeScreenPos(o.vertex);
				o.grabPos = ComputeGrabScreenPos(o.vertex); 
				return o;
			}
				
			fixed4 frag(v2f i) : SV_Target {

				{
				fixed2 uv = i.uv.xy;

    			fixed shakex = 0.0;
    			fixed shakey = 0.0;
    			fixed colorchange = 0.0;
	

				shakex = (1.0 + sin(_Time.y*_IntensityX)) * _AxisX;
    			shakex = pow(shakex, 1.0);

				shakey = (1.0 + sin(_Time.y*_IntensityY)) * _AxisY;
				shakey = pow(shakey, 1.0);

				colorchange = (_Colorchange);

				fixed3 screenshake;
				fixed4 tempGrab1 = i.grabPos;
				tempGrab1.x = i.grabPos.x+(shakex / 2);
				tempGrab1.y = i.grabPos.y+(shakey / 2);
				fixed4 tempGrab = tempGrab1;
				tempGrab.x = tempGrab1.x+colorchange;

				screenshake.g = tex2Dproj( _NotBackgroundTexture, tempGrab ).g;
				screenshake.r = tex2Dproj( _NotBackgroundTexture, tempGrab1 ).r;
				tempGrab.x = tempGrab1.x-colorchange;
				screenshake.b = tex2Dproj( _NotBackgroundTexture, tempGrab ).b;

				
				screenshake *= (_Lightning);

				return _Color * fixed4(screenshake, 0);
				}
			}
			ENDCG
		}
	}
}