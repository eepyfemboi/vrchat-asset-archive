Shader "Louis45/OVERRENDERER Scuffed (ComputationalLoadShader)"
{
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
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
            };

            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = v.vertex;
                return o;
            }

            float4 frag(v2f i) : SV_Target
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
