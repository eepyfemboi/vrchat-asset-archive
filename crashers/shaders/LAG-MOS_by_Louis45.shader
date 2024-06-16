Shader "Louis45/Lagger MOS (MathOperationsStress)"
{
    Properties
    {
        _LogOperations("Log Operations", Range(1, 10)) = 6
    }

    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment frag
            #include "UnityCG.cginc"

            float _LogOperations;

            float4 frag(v2f_img i) : SV_Target
            {
                float2 uv = i.uv * 50.0;
                float value = 0.5;
                
                // Convert the logarithmic value to exponential value for iteration count
                int operations = (int)pow(10.0, _LogOperations);

                for (int j = 0; j < operations; j++)
                {
                    value = sin(uv.x * value) + cos(uv.y * value);
                }
                return float4(value, value, value, 1.0);
            }
            ENDCG
        }
    }
}
