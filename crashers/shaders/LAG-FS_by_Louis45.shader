Shader "Louis45/Lagger FS (FractalStress)"
{
    Properties
    {
        _LogMaxIterations("Log Max Iterations", Range(1, 10)) = 6
    }

    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            
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

            float _LogMaxIterations;

            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            float4 frag(v2f i) : SV_Target
            {
                // Convert the logarithmic value to exponential value
                int maxIterations = (int)pow(10.0, _LogMaxIterations);

                float2 c = (i.uv - 0.5) * 4.0;
                float2 z = c;

                int iteration = 0;
                for(; iteration < maxIterations; iteration++)
                {
                    if(dot(z, z) > 4.0) break;
                    z = float2(z.x*z.x - z.y*z.y, 2.0*z.x*z.y) + c;
                }

                float3 color = iteration == maxIterations ? float3(0, 0, 0) : float3(1, 1, 1);
                return float4(color, 1);
            }
            ENDCG
        }
    }
}
