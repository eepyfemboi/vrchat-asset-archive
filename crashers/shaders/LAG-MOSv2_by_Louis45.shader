Shader "Louis45/Lagger MOSv2 (MathOperationsStressV2)"
{
    Properties
    {
        _LogOperations("Log Operations", Range(1, 10)) = 6
        _UvMultiplier("UV Multiplier", Range(0, 100)) = 50
        _Value("Value", Range(0, 1)) = 0.5
        _MainColor("Main Color", Color) = (1, 1, 1, 1)
        _SecondaryColor("Secondary Color", Color) = (0, 0, 0, 1)
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
            float _UvMultiplier;
            float _Value;
            float4 _MainColor;
            float4 _SecondaryColor;

            float4 frag(v2f_img i) : SV_Target
            {
                float2 uv = i.uv * _UvMultiplier;

                // Convert the logarithmic _Value to exponential _Value for iteration count
                int operations = (int)pow(10.0, _LogOperations);

                for (int j = 0; j < operations; j++)
                {
                    _Value = sin(uv.x * _Value) + cos(uv.y * _Value);
                }

                float4 finalColor = lerp(_MainColor, _SecondaryColor, _Value);

                return finalColor;
            }
            ENDCG
        }
    }
}
