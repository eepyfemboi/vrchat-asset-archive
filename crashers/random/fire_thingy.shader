// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'


Shader "ShaderMan/fire thingy"
	{

	Properties{
	//Properties
	}

	SubShader
	{
	Tags { "RenderType" = "Overlay" "Queue" = "Transparent" }

	Pass
	{
	ZWrite Off

	Cull Off

	ZTest Always

	Blend SrcAlpha OneMinusSrcAlpha

		    Stencil
			{
			Ref 1
			Comp notequal
			Pass keep
			}

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
	fixed3 worldPos : TEXCOORD1;
	//VertexOutput
	};

	//Variables

	/* 
    Combustible Voronoi Layers
	--------------------------

    The effect itself is nothing new or exciting, just some moving 3D Voronoi layering. 
    However, the fire palette might prove useful to some.

*/


// This is my favorite fire palette. It's trimmed down for shader usage, and is based on an 
// article I read at Hugo Elias's site years ago. I'm sure most old people, like me, have 
// visited his site at one time or another:
//
// http://freespace.virgin.net/hugo.elias/fmodels/m_ffire.htm
//
fixed3 firePalette(fixed i){

    fixed T = 1400. + 1300.*i; // Temperature range (in Kelvin).
    fixed3 L = fixed3(7.4, 5.6, 4.4); // Red, green, blue wavelengths (in hundreds of nanometers).
    L = pow(L,fixed3(5.0,5.0,5.0)) * (exp(1.43876719683e5/(T*L))-1.0);
    return 1.0-exp(-5e8/L); // Exposure level. Set to "50." For "70," change the "5" to a "7," etc.
}

/*
fixed3 firePalette(fixed i){

    fixed T = 1400. + 1300.*i; // Temperature range (in Kelvin).
    // Hardcode red, green and blue wavelengths (in hundreds of nanometers).
    fixed3 L = (exp(fixed3(19442.7999572, 25692.271372, 32699.2544734)/T)-1.0);
    // Exposure level. Set to "50" For "70," change the ".5" to a ".7," etc.
    return 1.0-exp(-fixed3(22532.6051122, 90788.296915, 303184.239775)*2.*.5/L); 
}
*/

// Hash function. This particular one probably doesn't disperse things quite as nicely as some 
// of the others around, but it's compact, and seems to work.
//
fixed3 hash33(fixed3 p){ 
    
    fixed n = sin(dot(p, fixed3(7, 157, 113)));    
    return frac(fixed3(2097152, 262144, 32768)*n); 
}

// 3D Voronoi: Obviously, this is just a rehash of IQ's original.
//
fixed voronoi(fixed3 p){

	fixed3 b, r, g = floor(p);
	p = frac(p); // "p -= g;" works on some GPUs, but not all, for some annoying reason.
	
	// Maximum value: I think outliers could get as high as "3," the squared diagonal length 
	// of the unit cube, with the mid point being "0.75." Is that right? Either way, for this 
	// example, the maximum is set to one, which would cover a good part of the range, whilst 
	// dispensing with the need to clamp the final result.
	fixed d = 1.; 
     
    // I've unrolled one of the loops. GPU architecture is a mystery to me, but I'm aware 
    // they're not fond of nesting, branching, etc. My laptop GPU seems to hate everything, 
    // including multiple loops. If it were a person, we wouldn't hang out. 
	[unroll(100)]
for(int j = -1; j <= 1; j++) {
	    [unroll(100)]
for(int i = -1; i <= 1; i++) {
    		
		    b = fixed3(i, j, -1);
		    r = b - p + hash33(g+b);
		    d = min(d, dot(r,r));
    		
		    b.z = 0.0;
		    r = b - p + hash33(g+b);
		    d = min(d, dot(r,r));
    		
		    b.z = 1.;
		    r = b - p + hash33(g+b);
		    d = min(d, dot(r,r));
    			
	    }
	}
	
	return d; // Range: [0, 1]
}

// Standard fBm function with some time dialation to give a parallax 
// kind of effect. In other words, the position and time frequencies 
// are changed at different rates from layer to layer.
//
fixed noiseLayers(in fixed3 p) {

    // Normally, you'd just add a time fixedtor to "p," and be done with 
    // it. However, in this instance, time is added seperately so that 
    // its frequency can be changed at a different rate. "p.z" is thrown 
    // in there just to distort things a little more.
    fixed3 t = fixed3(0., 0., p.z+_Time.y*1.5);

    const int iter = 5; // Just five layers is enough.
    fixed tot = 0., sum = 0., amp = 1.; // Total, sum, amplitude.

    for (int i = 0; i < iter; i++) {
        tot += voronoi(p + t) * amp; // Add the layer to the total.
        p *= 2.0; // Position multiplied by two.
        t *= 1.5; // Time multiplied by less than two.
        sum += amp; // Sum of amplitudes.
        amp *= 0.5; // Decrease successive layer amplitude, as normal.
    }
    
    return tot/sum; // Range: [0, 1].
}





	VertexOutput vert (VertexInput v)
	{
	VertexOutput o;
	o.pos = UnityObjectToClipPos(v.vertex);
	o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
	//VertexFactory
	return o;
	}
	fixed4 frag(VertexOutput i) : SV_Target
	{
	
    // Screen coordinates.
	fixed2 uv = (i.uv - 1*0.5) / 1;
	
	// Shifting the central position around, just a little, to simulate a 
	// moving camera, albeit a pretty lame one.
	uv += fixed2(sin(_Time.y*0.5)*0.25, cos(_Time.y*0.5)*0.125);
	
    // Constructing the unit ray. 
	fixed3 rd = normalize(i.worldPos - _WorldSpaceCameraPos);

    // Rotating the ray about the XY plane, to simulate a rolling camera.
	fixed cs = cos(_Time.y*0.25), si = sin(_Time.y*0.25);
    // Apparently "r *= rM" can break in some older browsers.
	//rd.xy = rd.xy*fixed2x2(cs, -si, si, cs); 
	
	// Passing a unit ray multiple into the Voronoi layer function, which 
	// is nothing more than an fBm setup with some time dialation.
	fixed c = noiseLayers(rd*2.);
	
	// Optional: Adding a bit of random noise for a subtle dust effect. 
	c = max(c + dot(hash33(rd)*2.-1., fixed3(0.015,0.015,0.015)), 0.);

    // Coloring:
    
    // Nebula.
    c *= sqrt(c)*1.5; // Contrast.
    fixed3 col = firePalette(c); // Palettization.
    //col = lerp(col, col.zyx*0.1+c*0.9, clamp((1.+rd.x+rd.y)*0.45, 0., 1.)); // Color dispersion.
    col = lerp(col, col.zyx*0.15+c*0.85, min(pow(dot(rd.xy, rd.xy)*1.2, 1.5), 1.)); // Color dispersion.
    col = pow(col, fixed3(1.5,1.5,1.5));
    
    // The fire palette on its own. Perhaps a little too much fire color.
    //c = pow(c*1.33, 1.5);
    //fixed3 col =  firePalette(c);
   
    // Black and white, just to keep the art students happy. :)
	//c *= c*1.5;
	//fixed3 col = fixed3(c,c,c);
	
	// Done.
	return fixed4(sqrt(clamp(col, 0., 1.)), 1.);

	}
	ENDCG
	}
  }
}

