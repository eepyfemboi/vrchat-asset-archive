Shader "Louis45/Lagger SHS (SuperHeavyShader)"
{
    Properties
    {
        _MainTex("Main Texture", 2D) = "white" {}
        _LogOuterLoop("Log Outer Loop Iterations", Range(1, 10)) = 3 // Logarithmic slider for outer loop count
    }

    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            sampler2D _MainTex; // Declare the texture sampler
            float _LogOuterLoop;

            struct appdata
            {
                float4 vertex : POSITION;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

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
                float2 uv = i.uv;

                int outerLoopIterations = (int)pow(10.0, _LogOuterLoop);

                // Nested loops with noise calculations
                for(int a = 0; a < outerLoopIterations; a++)
                {
                    for(int b = 0; b < 1000; b++)
                    {
                        uv *= 1.01;
                        float p = tex2Dlod(_MainTex, float4(uv, 0, 0)).r;
                        color.r = sin(color.r + p);
                        color.g = cos(color.g - p);
                        color.b = tan(color.b * p);
                    }

                    float noiseValue = tex2Dlod(_MainTex, float4(uv * color.rg, 0, 0)).r;
                    color += noiseValue;
                }

                return color;
            }
            ENDCG
        }
    }
}
