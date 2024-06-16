
Shader "Kortana/ShaderToy/Deforms/Deform"
	{

	Properties{
	_MainTex ("MainTex", 2D) = "white" {}
	}

	SubShader
	{
	Tags { "RenderType" = "Transparent" "Queue" = "Transparent" }

	Pass
	{
	ZWrite Off
	Blend SrcAlpha OneMinusSrcAlpha

	CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"

	struct VertexInput {
    fixed4 vertex : POSITION;
	fixed2 uv:TEXCOORD0;
    fixed4 tangent : TANGENT;
    fixed3 normal : NORMAL;
	//VertexInput
	};


	struct VertexOutput {
	fixed4 pos : SV_POSITION;
	fixed2 uv:TEXCOORD0;
	//VertexOutput
	};

	//Variables
float4 _iMouse;
sampler2D _MainTex;

	VertexOutput vert (VertexInput v)
	{
	VertexOutput o;
	o.pos = UnityObjectToClipPos (v.vertex);
	o.uv = v.uv;
	//VertexFactory
	return o;
	}
	fixed4 frag(VertexOutput i) : SV_Target
	{
	
  fixed2 p = -1.0 + 2.0 * i.uv / 1;
  fixed2 m = -1.0 + 2.0 * _iMouse.xy / 1;

  fixed a1 = atan2(p.x-m.x,p.y-m.y);
  fixed r1 = sqrt(dot(p-m,p-m));
  fixed a2 = atan2(p.x+m.x,p.y+m.y);
  fixed r2 = sqrt(dot(p+m,p+m));

  fixed2 uv;
  uv.x = 0.2*_Time.y + (r1-r2)*0.25;
  uv.y = asin(sin(a1-a2))/3.1416;
	

  fixed3 col = tex2D( _MainTex, 0.125*uv ).zyx;

  fixed w = exp(-15.0*r1*r1) + exp(-15.0*r2*r2);

  w += 0.25*smoothstep( 0.93,1.0,sin(128.0*uv.x));
  w += 0.25*smoothstep( 0.93,1.0,sin(128.0*uv.y));
	
  return fixed4(col+w,1.0);

	}
	ENDCG
	}
  }
}

