// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,)' with 'UnityObjectToClipPos()'


Shader"ShaderToyConverter/AnotherChromaticAberration"{
Properties{
_MainTex("MainTex", 2D) = "white"{}

}
SubShader{
    Tags { "Queue" = "Overlay+28767" }

        // Grab the screen behind the object into _BackgroundTexture
        GrabPass
        {
            "_NotBackgroundTexture"
        }

        ZTest Always
        Cull Off
        ZWrite Off
Pass{
CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"
struct appdata{
float4 vertex : POSITION;
float2 uv : TEXCOORD0;
};
sampler2D _MainTex;
sampler2D _NotBackgroundTexture;
fixed4 fragColor;

struct v2f
{
float2 uv : TEXCOORD0;
float4 vertex : SV_POSITION;
float4 screenCoord : TEXCOORD1;
float4 grabPos : TEXCOORD2;
};

v2f vert(appdata v)
{
v2f o;
o.vertex = UnityObjectToClipPos(v.vertex);
o.uv = v.uv;
o.screenCoord.xy = ComputeScreenPos(o.vertex);
o.grabPos = ComputeGrabScreenPos(o.vertex); 
return o;
}
fixed4 frag(v2f i) : SV_Target{

{
    fixed2 uv = i.uv.xy;

    fixed amount = 0.0;

    amount = (1.0 + sin(_Time.y*6.0)) * 0.5;
    amount = (1.0 + sin(_Time.y*16.0)) * 0.5;
    amount = (1.0 + sin(_Time.y*19.0)) * 0.5;
    amount = (1.0 + sin(_Time.y*27.0)) * 0.5;
    amount = pow(amount, 1.0);

    amount *= 0.05;

    fixed3 col;
    fixed4 tempGrab = i.grabPos;
    tempGrab.x = i.grabPos.x+amount;
    col.r = tex2Dproj( _NotBackgroundTexture, tempGrab ).r;
    col.g = tex2Dproj( _NotBackgroundTexture, i.grabPos ).g;
    tempGrab.x = i.grabPos.x-amount;
    col.b = tex2Dproj( _NotBackgroundTexture, tempGrab ).b;

    col *= (1.0 - amount * 0);

    return fixed4(col,1.0);
}

}ENDCG
}
}
}