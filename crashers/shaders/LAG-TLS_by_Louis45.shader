Shader "Louis45/Lagger TLS (TextureLookupStress)"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _LogTexLookups("Log Texture Lookups", Range(1, 10)) = 6 // Logarithmic slider for texture lookup count
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
            float _LogTexLookups;

            float4 frag(v2f_img i) : SV_Target
            {
                float4 col = tex2D(_MainTex, i.uv);
                
                int lookupIterations = (int)pow(10.0, _LogTexLookups);
                
                for (int j = 0; j < lookupIterations; j++)
                {
                    col += tex2D(_MainTex, frac(col.rg));
                }
                return col;
            }
            ENDCG
        }
    }
}
