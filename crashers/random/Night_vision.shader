
Shader "ShaderMan/Night vision"
	{

	Properties{
	iChannel0 ("iChannel0", 2D) = "" {}
	}

	SubShader
	{
	 Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
	 GrabPass{"iChannel0" }

	Pass
	{
	   Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }

            Blend SrcAlpha OneMinusSrcAlpha
            Cull Front
            ZTest Always
            ZWrite Off

	CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"



	//Variables
sampler2D iChannel0;

// by Nikos Papadopoulos, 4rknova / 2013
// WTFPL

float hash(in float n) { return frac(sin(n)*43758.5453123); }

struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {

	fixed2 p = (i.projPos.xy / i.projPos.w);
	
	fixed2 u = p * 2. - 1.;
	fixed2 n = u * fixed2(1 / 1, 1.0);
	fixed3 c = tex2D(iChannel0, p).xyz;
    
    
	// flicker, grain, vignette, fade in
	c += sin(hash(_Time.y)) * 0.01;
	c += hash((hash(n.x) + n.y) * _Time.y) * 0.5;
	c *= smoothstep(length(n * n * n * fixed2(0.075, 0.4)), 1.0, 0.4);
    c *= smoothstep(0.001, 3.5, _Time.y) * 1.5;
	
	c = dot(c, fixed3(0.2126, 0.7152, 0.0722)) 
	  * fixed3(0.2, 1.5 - hash(_Time.y) * 0.1,0.4);
	
	return fixed4(c,1.0);
}
	ENDCG
	}
  }
}

