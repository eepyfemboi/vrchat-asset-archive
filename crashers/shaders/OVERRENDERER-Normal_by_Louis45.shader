Shader "Louis45/OVERRENDERER Normal (ComputationalLoadShaderFullScreen)"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment frag
            #include "UnityCG.cginc"

            float4 frag(v2f_img i) : SV_Target
            {
                float value = 0.5;
                for(int j = 0; j < 5000; j++)
                {
                    value += sin(value) * tan(value);
                }
                return float4(value, value, value, 1);
            }
            ENDCG
        }
    }
}
