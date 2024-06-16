Shader "Louis45/Lagger MSS (MemoryStressShader)"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _LogFetches("Log Texture Fetches", Range(1, 10)) = 7
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
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 pos : SV_POSITION;
            };

            sampler2D _MainTex;
            float _LogFetches;

            v2f vert (appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            half4 frag (v2f i) : SV_Target
            {
                half4 col = half4(0,0,0,1);
                
                // Convert the logarithmic value to exponential value for iteration count
                int fetches = (int)pow(10.0, _LogFetches);

                for(int j = 0; j < fetches; j++)
                {
                    col += tex2D(_MainTex, i.uv);
                }
                return col/100;
            }
            ENDCG
        }
    }
}
