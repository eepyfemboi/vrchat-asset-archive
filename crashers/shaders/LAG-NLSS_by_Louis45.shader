Shader "Louis45/Lagger NLSS (NestedLoopStressShader)"
{
    Properties
    {
        _LogInnerLoop("Log Inner Loop Iterations", Range(1, 10)) = 3
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
            };

            struct v2f
            {
                float4 pos : SV_POSITION;
            };

            float _LogInnerLoop;

            v2f vert (appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }

            float IntensiveComputation(float value)
            {
                float result = value;

                int innerLoopIterations = (int)pow(10.0, _LogInnerLoop);

                for(int i = 0; i < 500; i++)
                {
                    for(int j = 0; j < innerLoopIterations; j++)
                    {
                        result = sin(result + i * j);
                    }
                }
                return result;
            }

            half4 frag (v2f i) : SV_Target
            {
                return half4(IntensiveComputation(i.pos.x), IntensiveComputation(i.pos.y), 0, 1);
            }
            ENDCG
        }
    }
}
