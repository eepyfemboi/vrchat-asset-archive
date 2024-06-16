
Shader "ShaderMan/Facet Eye VisifragColorn"
	{

Properties{
iChannel0 ("iChannel0", 2D) = "" {}
iChannel1 ("iChannel1", 2D) = "" {}
	}

	 SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        GrabPass{ "iChannel0"}
        GrabPass{ "iChannel1"}
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
           
            Cull Front
            ZTest Always
            ZWrite Off

	CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"

sampler2D iChannel0;
//Radius for each hexagon. Smaller = more hexagons
#define R .075
//Difference between neighbouring hexagons.
#define OFFSET 2.
//Strength of the falloff in the corners
#define FALLOFF 0.0
//Strength of Fisheye effect on each facet
#define FISH 1.0


#define SQRT3 1.732050807
#define PI 3.141592653


fixed2 hexCenter(fixed2 id, float odd)
{
	return fixed2(
		SQRT3 * R * (id.x +.5*odd),
		1.5 * id.y * R
		);
}


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

	//UV coordinates [1,2]
	fixed2 uv = (i.projPos.xy / i.projPos.w);
	uv.xy += 1.0;
	fixed2 grid;

	//Estimate hex coordinate
	grid.y = floor(uv.y / (1.5*R));
	float odd = fmod(grid.y, 2.0);
	grid.x = floor(uv.x / (SQRT3 * R) - odd*.5);

	//Find possible centers of hexagons
	fixed2 h1 = hexCenter(grid, odd);
	fixed2 h2 = hexCenter(grid + fixed2(1.0,0.0), odd);
	fixed2 h3 = hexCenter(grid + fixed2(odd, 1.0), 1.0-odd);

	//Find closest center
	float d1 = dot(h1-uv, h1-uv);
	float d2 = dot(h2-uv, h2-uv);
	float d3 = dot(h3-uv, h3-uv);
    
	if (d2 < d1)
	{
		d1 = d2;
		h1 = h2;
	}
	if (d3 < d1)
	{
		d1 = d3;
		h1 = h3;
	}
	
    //Hexagon UV
	fixed2 uv2 = uv - h1;
    
    //Set Hexagon offset
	uv = (uv.xy - 1.0) + uv2 * OFFSET;

    //Per Facet Fisheye effect (optional)
	fixed2 coords = (uv2 - 0.5*R) * 2.0;
	fixed2 fisheye;
	fisheye.x = (1.0 - coords.y * coords.y) * FISH * (coords.x);
	fisheye.y = (1.0 - coords.x * coords.x) * FISH * (coords.y);
	uv -= fisheye*R;

	fixed4 o;
    //Retrieve texture colour
    o = tex2D( iChannel0, uv);

    //Redude corners (optional)
	o = max(fixed4(0.0,0,0,0), o - length(2.0*uv-1.0)*FALLOFF);
	return o;
}
	ENDCG
	}
  }
}

