Shader "Louis45/Lagger HS (HeavyShader)"
{
    Properties
    {
        _LogIteration("Log Iteration", Range(1, 10)) = 3
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
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            float _LogIteration;

            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = (o.vertex.xy / o.vertex.w) * 0.5 + 0.5;
                return o;
            }

            float4 frag(v2f i) : SV_Target
            {
                float4 color = float4(1, 1, 1, 1);

                // Convert the logarithmic value to exponential value for iteration count
                int iterations = (int)pow(10.0, _LogIteration);

                // Expensive calculations based on slider value
                for(int j = 0; j < iterations; j++)
                {
                    for(int k = 0; k < iterations; k++)
                    {
                        color.r = sin(color.r);
                        color.g = cos(color.g);
                        color.b = tan(color.b);
                    }
                }

                return color;
            }
            ENDCG
        }
    }
}
