﻿Shader "Nigger/NIGLET" {
    Properties {
        _Color ("Main Color", Color) = (1,1,1,1)
        _MainTex ("Base (RGB) Trans (A)", 2D) = "white" {}
        _LightMap ("Lightmap (RGB)", 2D) = "black" {}
    }
 
    SubShader {
        Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
        LOD 200
 
        CGPROGRAM
        #pragma surface surf Lambert alpha
 
        sampler2D _MainTex;
        sampler2D _LightMap;
        fixed4 _Color;
 
        struct Input {
            float2 uv_MainTex;
            float2 uv2_LightMap;
        };
 
        void surf (Input IN, inout SurfaceOutput o) {
            fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
            half4 lm = tex2D (_LightMap, IN.uv2_LightMap);
            o.Emission = c.rgb * lm.rgb * 2;
           
            o.Alpha = c.a;
        }
        ENDCG
    }
}