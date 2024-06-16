
Shader "ShaderMan/Alien Cavity"
	{

	Properties{
	iChannel0 ("iChannel0", 2D) = "" {}
	}

	SubShader
	{


	cull off
	ZWrite off
	Blend SrcAlpha OneMinusSrcAlpha


	Pass
	{


	CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"


	sampler2D iChannel0;

// mostly inspired/taken from hglib, but fairly standard now in shadertoy
// http://mercury.sexy/hg_sdf/
float rep(float p, float d) {
	return fmod(p - d*.5, d) - d*.5;
}

fixed3 rep(fixed3 p, float d) {
	return fmod(p - d*.5, d) - d*.5;
}

void mo(inout fixed2 p, fixed2 d) {
	p.x = abs(p.x) - d.x;
	p.y = abs(p.y) - d.y;
	if (p.y > p.x)p = p.yx;
}

void amod(inout fixed2 p, float m) {
	float a = rep(atan2(p.x, p.y), m);
	p = fixed2(cos(a), sin(a)) * length(p);
}

fixed2x2 r2d(float a) {
    float c = cos(a), s = sin(a);
    return fixed2x2(c, s, -s, c);
}
// </hglib>


// Tunnel pattern studied from shane & shau
// i.e. https://www.shadertoy.com/view/4tKXzV
fixed2 path(float t) {
	float a = sin(t*.2 + 1.5), b = sin(t*.2);
	return fixed2(a*2., a*b);
}

// signed cross (iq, from the menger cube article)
// http://www.iquilezles.org/www/articles/menger/menger.htm
float sc(fixed3 p) {
	p = abs(p);
	p = max(p, p.yzx);
	return min(p.x, min(p.y, p.z)) - .02;
}

#define sph(p, r) (length(p) - r)
#define cyl sph

fixed3 g;

float de(fixed3 p) {
	p.xy -= path(p.z);
    
    p.xy =mul(p.xy ,r2d(1.57));// pi/2
	mo(p.xy, fixed2(.9, 3.));
	mo(p.xy, fixed2(.9, .3));
    fixed3 q = p;
	
    float d = cyl(p.xy, .13); // cylinder
    p.z = rep(p.z, 4.);
	d = min(d, sph(p, .2));// sphere
    
	amod(p.xy, .785);// pi/4
	mo(p.zy, fixed2(1., 1.2));
	p.z = rep(p.z, 1.);
	d = min(d, sc(p));// cross 1
    
    amod(q.xy, 2.09);// pi/1.5
    mo(q.zy, fixed2(.2, 3.1));
    mo(q.xy, fixed2(.0, .4));
	q.z = rep(q.z, 1.);
    d = min(d, sc(q));// cross 2

    // glow trick from balkhan
    // i.e. https://www.shadertoy.com/view/4t2yW1
	g += fixed3(.5, .6, .5) * .025 / (.01 + d*d);
	return d;
}

fixed3 camera(fixed3 ro, fixed2 uv, fixed3 ta) {
	fixed3 fwd = normalize(ta - ro);
	fixed3 left = cross(fixed3(0, 1, 0), fwd);
	fixed3 up = cross(fwd, left);
	return normalize(fwd + uv.x*left + up*uv.y);
}

struct v2f {
                float4 position : SV_POSITION;
                //float2 uv : TEXCOORD0; // stores uv
                float3 worldSpacePosition : TEXCOORD0;
                float3 worldSpaceView : TEXCOORD1; 
            };
            
            v2f vert(appdata_full i) {
            	
            
                v2f o;
                o.position = UnityObjectToClipPos (i.vertex);
                
                float4 vertexWorld = mul(unity_ObjectToWorld, i.vertex);
                
                o.worldSpacePosition = vertexWorld.xyz;
                o.worldSpaceView = vertexWorld.xyz - _WorldSpaceCameraPos;
                return o;
            }

            fixed4 frag(v2f i) : SV_Target {


	fixed2 uv = 1;

	float dt = _Time.y * 6.;
	fixed3 ro = fixed3(0, 0, -4. + dt);
	fixed3 ta = fixed3(0, 0, dt);
    fixed3 rd;
    
	ro.xy += path(ro.z);
	ta.xy += path(ta.z);
    
	rd =normalize(i.worldSpaceView);

	float ri, t = 0.;
	for (float i = 0.; i < 1.; i += .01) {
		ri = i; fixed3 p = ro + rd*t;
		float d = de(p);
		if (d<.001 || t>100.) break;
		t += d*.2;

	}

	fixed3 c = lerp(fixed3(.9, .2, .4), fixed3(.3, cos(_Time.y)*.1, .2), uv.x + ri);
	c.r *= sin(_Time.y);
	c += g * .015;
	 // standard cheap "glitch" post process
	float s = sin(_Time.y*10.)*.008;
	float tt = tan(_Time.y)*.002;
	fixed4 fragColor;
	fragColor.r = tex2D(iChannel0, uv + fixed2(-s, s)).r;
	fragColor.g = tex2D(iChannel0, uv + fixed2(-tt, tt)).g;
	fragColor.b = tex2D(iChannel0, uv + fixed2(s, -s)).b;
	fragColor = fixed4(c, 1);
	return fragColor;
}

	ENDCG
	}
  }
}

