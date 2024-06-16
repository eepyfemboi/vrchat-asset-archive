Shader "Louis45/NORMAL RGBSN (RGBStaticNoise)"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 pos : SV_POSITION;
            };

            v2f vert (appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            // Pseudo-random number generator
            float pseudoRandom(float2 co)
            {
                return frac(sin(dot(co.xy, float2(12.9898, 78.233))) * 43758.5453);
            }

            half4 frag (v2f i) : SV_Target
            {
                // Generate random values for R, G, and B channels
                half r = half(pseudoRandom(i.uv + _Time.y));
                half g = half(pseudoRandom(i.uv - _Time.y));
                half b = half(pseudoRandom(2 * i.uv + _Time.y));
                return half4(r, g, b, 1);
            }
            ENDCG
        }
    }
}
