﻿// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/Pixelate New"
{
    Properties
    {
        _PixelSize("Pixel Size", Float) = 10
    }
 
    SubShader
    {
        Tags{ "Queue" = "Transparent" "IgnoreProjector" = "True" }
        Blend Off
        Lighting Off
        Fog{ Mode Off }
        ZWrite On
        LOD 200
        Cull Off
 
        GrabPass{ "_GrabTexture" }
 
        Pass
        {
            CGPROGRAM
 
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
 
            struct v2f
            {
                float4 pos : SV_POSITION;
                float4 uv : TEXCOORD0;
            };
 
            float _PixelSize;
 
            v2f vert(appdata_base v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = ComputeGrabScreenPos(o.pos);
                return o;
            }
 
            sampler2D _GrabTexture;
 
            float4 frag(v2f IN) : COLOR
            {
                float2 steppedUV = IN.uv.xy / IN.uv.w;
                steppedUV /= _PixelSize / _ScreenParams.xy;
                steppedUV = round(steppedUV);
                steppedUV *= _PixelSize / _ScreenParams.xy;
 
                return tex2D(_GrabTexture, steppedUV);
            }
         
            ENDCG
        }
    }
}