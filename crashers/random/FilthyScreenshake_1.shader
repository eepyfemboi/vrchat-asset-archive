// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

    Shader "Custom/DistortingGrabPass" {
        Properties {
            _Intensity ("Vertical Shift", Float) = 0
			_Intensity2 ("Horizontal Shift", Float) = 0
			_maxdist ("Max Distance", Float) = 5
			_Multiplier ("Multiplier", Float) = 3
        }
        SubShader {
			Tags { "Queue"="Transparent+10" "RenderType"="Transparent" }
			//Blend SrcAlpha OneMinusSrcAlpha
			Cull Front
			ZTest Always
			ZWrite Off
			
			GrabPass {
			Tags { "Queue"="Transparent+10" }
			"_GrabTexture2"
			}
			
            Pass {
                Tags { "Queue"="Transparent+10" }
				Stencil {
					Ref 121
					Comp NotEqual
					Pass Keep
				}
           
                CGPROGRAM
                #pragma vertex vert
                #pragma fragment frag
                #include "UnityCG.cginc"
     
                struct v2f {
                    half4 pos : SV_POSITION;
                    half4 grabPos : TEXCOORD0;
					float4 worldPos : TEXCOORD1;
                };
     
                sampler2D _GrabTexture2;
                half _Intensity;
				half _Intensity2;
				float _maxdist;
				float _Multiplier;
     
                v2f vert(appdata_base v) {
                    v2f o;
                    o.pos = UnityObjectToClipPos(v.vertex);
                    o.grabPos = ComputeGrabScreenPos(o.pos);
					o.worldPos = mul(unity_ObjectToWorld, v.vertex);
                    return o;
                }
     
                half4 frag(v2f i) : COLOR {
					float dist = distance(i.worldPos, _WorldSpaceCameraPos);
                    i.grabPos.y = i.grabPos.y + (0 +((_Intensity/25)*min(dist/_maxdist, 1) * -_Multiplier)/100);
					i.grabPos.x = i.grabPos.x + (0 + ((_Intensity2/25)*min(dist/_maxdist, 1) * -_Multiplier)/100);
					//i.grabPos.x = i.grabPos.x *(0.3 *sin(_Time.y* _Intensity)) + 0.7;
                    fixed4 color = tex2Dproj(_GrabTexture2, UNITY_PROJ_COORD(i.grabPos));
                    return color;
                }
                ENDCG
            }
        }
        FallBack "Diffuse"
}
