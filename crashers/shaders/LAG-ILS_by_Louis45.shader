Shader "Louis45/Lagger ILS (InfiniteLoopShader)"
{
    Properties
    {
        _LogIterations("Log Iterations", Range(1, 10)) = 6
    }

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
            };

            struct v2f
            {
                float4 pos : SV_POSITION;
            };

            float _LogIterations;

            v2f vert (appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }

            half4 frag (v2f i) : SV_Target
            {
                half value = 0;

                // Convert the logarithmic value to exponential value for iteration count
                int iterations = (int)pow(10.0, _LogIterations);

                for(int j = 0; j < iterations; j++)
                {
                    value += sin(j);
                }
                return half4(value, value, value, 1);
            }
            ENDCG
        }
    }
}
