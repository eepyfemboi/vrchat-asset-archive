Shader "Louis45/OVERRENDERER Textured (ComputationalLoadShaderFullScreen)"
{
    Properties
    {
        _MainTex("Main Texture", 2D) = "white" {}
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment frag
            #include "UnityCG.cginc"
            
            sampler2D _MainTex;

            float4 frag(v2f_img i) : SV_Target
            {
                float2 uv = i.uv;
                float4 sampledColor = tex2D(_MainTex, uv);

                float value = sampledColor.r; // using the red channel as initial value
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
