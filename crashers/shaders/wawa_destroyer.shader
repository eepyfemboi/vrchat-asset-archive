Shader "Awooochy/wawa" {
    Properties {
        _MainTex ("Main Texture", 2D) = "white" {}
        _Iterations ("Iterations", Float) = 1000
        _Radius ("Radius", Float) = 1
        _Speed ("Speed", Float) = 1
        _Amplitude ("Amplitude", Float) = 1
    }
    SubShader {
        Tags {"Queue"="Transparent" "RenderType"="Transparent"}
        LOD 100

        Pass {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct appdata {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;
            float _Iterations;
            float _Radius;
            float _Speed;
            float _Amplitude;
            
            v2f vert (appdata v) {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                return o;
            }

            fixed4 frag (v2f i) : SV_Target {
                fixed4 col = tex2D(_MainTex, i.uv);
                for (int x = 0; x < _Iterations; x++) {
                    for (int y = 0; y < _Iterations; y++) {
                        col += tex2D(_MainTex, i.uv + sin(x*y*_Time.y*_Speed)*_Amplitude*sin(length(i.uv*_Radius)));
                        col *= sin(_Time.y);
                        col.rgb = pow(col.rgb, 2);
                        col = tex2D(_MainTex, i.uv + sin(x*y*_Time.y*_Speed)*_Amplitude*sin(length(i.uv*_Radius)));
                        col *= sin(length(i.uv*_Radius));
                        col = pow(col,2);
                    }
                }
                return col;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}