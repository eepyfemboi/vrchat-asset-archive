
Shader "ShaderMan/Psychedelic Glass"
	{

	Properties{
	iChannel0 ("iChannel0", 2D) = "" {}
	_iMouse ("_iMouse", Vector) = (0,0,0,0)
	 pos ("pos", Range(0, 32)) = 16.83625
	}

	 SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        GrabPass{ "iChannel0"}
        Pass {
           

            Cull Front
            ZTest Always
            ZWrite Off


	CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"

	sampler2D iChannel0;


uniform fixed uv;
uniform fixed pos;

float hash1( float n ) { return frac(sin(n)*43758.5453); }
fixed2  hash2( fixed2  p ) { p = fixed2( dot(p,fixed2(127.1,311.7)), dot(p,fixed2(269.5,183.3)) ); return frac(sin(p)*43758.5453); }

fixed2 rotate(fixed2 p, float a) {
    float cs = cos(a), sn = sin(a);
    return (mul(fixed3x3(cs, sn, 0.0,-sn, cs, 0.0,0.0, 0.0, 1.0) , fixed3(p,1.0))).xy;
}

// ratio: 3 = neon, 4 = refracted, 5+ = approximate white
fixed3 physhue2rgb(float hue, float ratio) {
    return smoothstep(
        fixed3(0.0,0,0),fixed3(1.0,1.0,1.0),
        abs(fmod(hue + fixed3(0.0,1.0,2.0)*(1.0/ratio),1.0)*2.0-1.0));
}

fixed4 voronoi( in fixed2 x, float c, out fixed2 rp)
{
    fixed2 n = floor( x );
    fixed2 f = frac( x );

	fixed3 m = fixed3( 8.0 , 8.0 , 8.0 );
	float m2 = 8.0;
    for( int j=-2; j<=2; j++ )
    for( int i=-2; i<=2; i++ )
    {
        fixed2 g = fixed2( float(i),float(j) );
        fixed2 o = hash2( n + g );

		// animate
		float cid = hash1( dot(n+g,fixed2(7.0,113.0) ) );
		if (cid < 0.1)
        	o = 0.5 + 0.5*abs(fmod(c + o,2.0)-1.0);

		fixed2 r = g - f + o;

        // triangular
		fixed2 d = fixed2( max(abs(r.x)*0.866025+r.y*0.5,-r.y), 
				        1.0 );

		
        if( d.x<m.x )
        {
			m2 = m.x;
            m.x = d.x;
            m.y = cid;
			m.z = d.y;
			rp = n + g;
        }
		else if( d.x<m2 )
		{
			m2 = d.x;
		}

    }
    return fixed4( m, m2-m.x );
}

fixed4 render_sheet(fixed2 p, float fi, float a) {
	
	float z = exp(lerp(log(32.0), log(0.5), a));

	//p.y = abs(p.y);
	p.y = -p.y;
	float tpos = abs(p.x); //max(abs(p.x)*0.866025-p.y*0.5,p.y);
	p.x = abs(p.x);
	p = rotate(p, radians(60.0));
	p.x = abs(p.x);
	
	//p = rotate(p, radians(-60.0));
	//p.x = abs(p.x);
	
	fixed2 rp;
	float o = fi*128.0-step(fi,0.2)*a*2.0;
	fixed4 c = voronoi( z*p+o, fi+a*8.0, rp);
	rp -= o;
	
	float pp = 0.6 - (max(abs(rp.x)*0.866025+rp.y*0.5,-rp.y)/4.0); // + fract(fi+c.y);
	pp = clamp(pp, 0.0, 1.0);
	
	float fadein = clamp(a*2.0,0.0,1.0);
	
	float rep = 1.0-a-(pp-sin(c.w*40.0)*0.1)*fadein;//;
	
	float alpha = clamp((rep-c.w)*16.0, 0.0, 1.0);
	if (alpha > 0.0) {	
		float hue = c.w*(1.0+c.y*8.0)
			+fi+a*9.0*c.y*lerp(1.0,8.0,step(fi,0.1))
			-tpos*1.0;
		
		fixed3 w = physhue2rgb(hue, 4.0);
		w.z = 0.5; //sin(_Time.y)*0.1+0.5;
		return fixed4(w, alpha);
	}	
	
	return fixed4(0.0,0,0,0);
}

fixed4 alpha(fixed4 a, fixed4 b) {
	a = lerp(b, a, a.w);
	a.w = max(a.w, b.w);
	return a;
}

#define STEPS 6

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

    fixed2 aspect = fixed2(1 /1, 1.0);    
    fixed2 uv =  (i.projPos.xy / i.projPos.w);
    fixed2 pos = (uv*2.0-1.0)*aspect;
    
	fixed4 col = fixed4(0.0,0,0,0);
	
	float s = 1.0/float(STEPS);
	
	float t = _Time.y*0.5;
	float a = frac(t)*s;
	t -= frac(t);
	
	for (int i = STEPS-1; i >= 0; --i) {
		float fi = float(i);
		col = alpha(col, render_sheet(pos, hash1(t-fi), a+fi*s));
		if (col.w >= 1.0) break;
	}
	
	float blend = sin(_Time.y)*0.5+0.5;
	blend = 0.1; //smoothstep(0.0,1.0,blend);
	
	fixed3 co = tex2D(iChannel0, -uv + col.xy*blend*0.1).rgb;
	col.rgb = lerp(co, col.rgb, blend);
	
    return col;
}
	ENDCG
	}
  }
}

