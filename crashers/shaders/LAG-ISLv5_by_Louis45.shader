Shader "Louis45/Lagger ISLv5 (InsideSphereLagV5)"
{
    Properties
    {
        [Header(Normal Material)]
        _MainTex ("Albedo (RGB) - Texture used when not lagging", 2D) = "white" {}

        [Header(Sphere Settings)]
        _SphereCenter("Sphere Center - Only used if 'Use Object Center' is disabled. Refers to world coordinates.", Vector) = (0, 0, 0, 0)
        _SphereRadius("Sphere Radius - If the distance between the camera and the sphere center is less, the lag will be performed.", Range(0, 100)) = 1.0

        [Header(Lag Settings)]
        _LogIterations("Log Iterations - How strong the lag is", Range(1, 10)) = 6

        [Header(Advanced Settings)]
        [Toggle] _InverseToggle("Inverse Toggle - If enabled, the lag will be performed when the camera is outside the sphere. Otherwise, it will be performed when the camera is inside the sphere.", Float) = 0
        [Toggle] _UseObjectCenter("Use Object Center - If enabled, the lag will be performed based on the object's center. Otherwise, it will be based on the 'Sphere Center' property.", Float) = 0
        [Toggle] _IsShownInMirrors("Is shown in Mirrors - If enabled, the lag will be shown in mirrors. Otherwise, it will not be shown in mirrors.", Float) = 1
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
            float _InverseToggle;
            float _UseObjectCenter;
            float _IsShownInMirrors;

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
                if (_IsShownInMirrors < 0.5)
                {
                    if (unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f)
                    {
                        return tex2D(_MainTex, i.uv);
                    }
                }

                float3 cameraPosition = _WorldSpaceCameraPos;
                float3 sphereCenter = _UseObjectCenter > 0.5 ? i.worldPos : _SphereCenter;                
                float distanceToSphere = distance(cameraPosition, sphereCenter);
                
                // Check if inside sphere
                bool insideSphere = distanceToSphere < _SphereRadius;
                
                // If inside the sphere, perform some heavy computation
                if (insideSphere && _InverseToggle == 0.0 || !insideSphere && _InverseToggle == 1.0)
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
