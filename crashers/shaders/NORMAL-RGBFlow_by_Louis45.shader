Shader "Louis45/NORMAL RGBFlow (HeavyDraw)"
{
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

            v2f vert(appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            float4 frag(v2f i) : SV_Target
            {
                // Some arbitrary calculations to make the shader do "work".
                float3 value = float3(sin(i.uv.x * _Time.y), cos(i.uv.y * _Time.y), tan(_Time.y));
                return float4(value, 1.0);
            }
            ENDCG
        }
    }
}
