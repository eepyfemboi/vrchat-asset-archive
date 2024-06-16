Shader "Louis45/NORMAL RGBVD (RGBViewDirection)"
{
    Properties
    {
        [ThryWideEnum(viewDirection, 0, worldSpaceCameraPos, 1, worldPos, 2)]_Algorithm ("Algorithm", Int) = 0
    }
    SubShader
    {
        Cull Off
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
                float4 pos : SV_POSITION;
                float3 worldPos : TEXCOORD3;
            };

            int _Algorithm;

            v2f vert (appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
                return o;
            }

            half3 returnValue(float3 inputValue)
			{
				return half3(normalize(inputValue).x, normalize(inputValue).y, normalize(inputValue).z);
			}

            half3 frag (v2f i) : SV_Target
            {
                if (_Algorithm == 0)
                {
                    return returnValue(_WorldSpaceCameraPos.xyz - i.worldPos);
                }
                if (_Algorithm == 1)
                {
                    return returnValue(_WorldSpaceCameraPos.xyz);
                }
                if (_Algorithm == 2)
                {
                    return returnValue(i.worldPos);
                }
                return 0;
            }
            ENDCG
        }
    }
}
