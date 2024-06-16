Shader "Louis45/Lagger ISL (InsideSphereLag)"
{
    Properties
    {
        _MainTex ("Albedo (RGB)", 2D) = "white" {}
        _SphereCenter("Sphere Center", Vector) = (0, 0, 0, 0)
        _SphereRadius("Sphere Radius", Range(0, 100)) = 1.0
        _LogIterations("Log Iterations", Range(1, 10)) = 6
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
                float3 worldPos : TEXCOORD1;
            };

            sampler2D _MainTex;
            float3 _SphereCenter;
            float _SphereRadius;
            float _LogIterations;

            v2f vert (appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                o.worldPos = mul(_Object2World, v.vertex).xyz;
                return o;
            }

            half4 frag (v2f i) : SV_Target
            {
                float3 cameraPosition = _WorldSpaceCameraPos;
                float distanceToSphere = distance(cameraPosition, _SphereCenter);
                
                // Check if inside sphere
                bool insideSphere = distanceToSphere < _SphereRadius;
                
                // If inside the sphere, perform some heavy computation
                if (insideSphere)
                {
                    float value = 0.0;

                    // Convert the logarithmic value to exponential value for iteration count
                    int iterations = (int)pow(10.0, _LogIterations);

                    for (int j = 0; j < iterations; j++)
                    {
                        value += sin(j + i.uv.x) * cos(j + i.uv.y);
                    }
                    return half4(value, value, value, 1);
                }
                else
                {
                    return tex2D(_MainTex, i.uv);
                }
            }
            ENDCG
        }
    }
}
