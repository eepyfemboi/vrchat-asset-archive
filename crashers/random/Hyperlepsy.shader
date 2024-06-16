
Shader "ShaderMan/Hyperlepsy"
	{

	Properties{
	iChannel0 ("iChannel0", 2D) = "" {}
	}

	SubShader
	{
	cull off

	Pass
	{


	CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"


	//Variables
float4 _iMouse;
sampler2D iChannel2;
sampler2D iChannel1;
sampler2D iChannel0;

//Hyperlepsy by nimitz (twitter: @stormoid)

/*
	Mostly about Volumetric field/geometry interaction.
	Tried to provide links for the other individual 
	techniques being used whenever possible.

	Runs a bit slower than what I like to go for, but
	I wasn't willing to compromise too much on the look.

	No idea if the VR is working properly, let me know.
*/

//30 Steps looks good here
#define VOLSTEPS 25

//#define SIMPLE_PRIMITIVE

#define ITR 100
#define FAR 20.
//#define time _Time.y


float time;

static const fixed3 luma = fixed3(0.2126, 0.7152, 0.0722);  //BT.709

fixed3 rotx(fixed3 p, float a){
    float s = sin(a), c = cos(a);
    return fixed3(p.x, c*p.y - s*p.z, s*p.y + c*p.z);
}
fixed3 roty(fixed3 p, float a){
    float s = sin(a), c = cos(a);
    return fixed3(c*p.x + s*p.z, p.y, -s*p.x + c*p.z);
}
fixed3 rotz(fixed3 p, float a){
    float s = sin(a), c = cos(a);
    return fixed3(c*p.x - s*p.y, s*p.x + c*p.y, p.z);
}

//You can actually make a cheaper tetrahedron using 3 dot products,
//but the alignments isn't ideal..
float tetr(fixed3 p)
{
   static const fixed2 e = fixed2(0.57735, -.57735);
    float d =  dot(p, e.yxx);
    d = max(d, dot(p, e.yyy));
    d = max(d, dot(p, e.xxy));
    d = max(d, dot(p, e.xyx));
    return d;
}

//Some displacement functions
static const float tri(in float x){return abs(frac(x)-0.5)-.25;}
static const float trids(in fixed3 p)
{   
    return max(tri(p.z),min(tri(p.x),tri(p.y)))*.1;
}

float trids2(in fixed3 p)
{   
    return tri((p.x*1.+1.5*tri(p.z+tri(p.y))) )*.02;
}

//See unlisted shader: https://www.shadertoy.com/view/ltBGDD
float expOut(in float t, in float n) 
{
	float a = 1. + 1./(exp2(n) - 1.);
	float b = log2(a);
	return a - exp2(-n*t + b);
}

//----------------------------------------------------------------------------------------------------
//Knots from knighty
//http://www.fractalforums.com/new-theories-and-research/not-fractal-but-funny-trefoil-knot-routine/
//----------------------------------------------------------------------------------------------------
#define tau 6.2831853
static const float groupRadius = .74;
static const float objectRadius = 1.1;
static const float RotNumeratorX = 3.;
static const float RotNumeratorY = 3.;
static const float RotDenominator = 2.;

float twist(in fixed3 p)
{
	fixed3 q=  p;
    float ra = p.z*RotNumeratorX/RotDenominator;
	float raz = p.z*RotNumeratorY/RotDenominator;
	
    p.xy -= fixed2(groupRadius*cos(ra)+objectRadius, groupRadius*sin(raz)+objectRadius);
    p.z += time*2.5;
    
    float ctau = 1.5;
    float id = floor(p.z*ctau);
    p.z = frac(p.z*ctau)/ctau-0.33;
    p = rotx(p,id*2.+time*8.);
    float prm = tetr(p);
    float d = prm-0.1;
    d = max(-d, prm-0.2);
    
    return d+trids(p)*2.4  + trids2(p*6.)*0.25;
}

//----------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------
float map(fixed3 p)
{
    p = rotx(p,expOut(sin(time*1.8),1.1));
    p = roty(p,-expOut(sin(-time*1.5),1.));
    
    #ifndef SIMPLE_PRIMITIVE
    float r = length(p.xz);
    float a = atan2(p.x,p.z);
	float d = 10.;
	for(int i=0;i<2;i++)
    
    
    p *= .85;
    p = rotz(p,2.+time*1.7);
    r = length(p.xz);
    a = atan2(p.x,p.z);
    a += 1.2;
    for(int i=0;i<2;i++)
   
    
    return d;
    #else
    p = rotx(p,time*2.);
    return (length(p)-2.)+trids(p*1.)*4. + trids2(p*3.)*0.3;
    #endif
}

float march(in fixed3 ro, in fixed3 rd)
{
	float precis = 0.001;
    float h=precis*2.0;
    float d = 0.;
    for( int i=0; i<ITR; i++ )
    {
        if( abs(h)<precis || d>FAR ) break;
        d += h;
	    float res = map(ro+rd*d);
        h = res;
    }
	return d;
}

//iq's ubiquitous 3d noise
float noise(in fixed3 p)
{
	fixed3 ip = floor(p);
    fixed3 f = frac(p);
	f = f*f*(3.0-2.0*f);
	
	fixed2 uv = (ip.xy+fixed2(37.0,17.0)*ip.z) + f.xy;
	fixed2 rg = tex2D( iChannel0, (uv+ 0.5)/256.0 ).yx;
	return lerp(rg.x, rg.y, f.z);
}

float fbm3(in fixed3 p)
{
    p*=5.;
    p.x *= .18;
   	p.x += time*7.7;
    float a = 0.0;
    float z = .5;
	fixed3 d = fixed3(0.,0.,0.);
    for( int i=0; i<3; i++ )
    {
        float n = noise(p);
        a += (n-.5)*z;
        z *= .47;
        p *= 2.9;
    }
    return a;
}

float mapV(in fixed3 p)
{
    float mp = map(p);
   	p = lerp(p, p/(-(mp+1.4)),.4+(sin(time*2.+sin(time))*0.15));
    return fbm3(p)*clamp(2.3-mp*2.2, 0.65, 1.7);
}

fixed4 vmarch(in fixed3 ro, in fixed3 rd, in float sceneDist)
{
    sceneDist = min(sceneDist, 15.);
	fixed4 rz = fixed4(0,0,0,0);
	static const float smt = 3.;
	float t = 6.;
	for(int i=0; i<VOLSTEPS; i++)
	{
        if(rz.a > 0.99 || t > sceneDist)break;

		fixed3 pos = ro + t*rd;
        float den = mapV(pos);
        fixed3 lcol = lerp(fixed3(.5,1,.9),fixed3(.5,.7,1.),noise(pos*1.));
        fixed4 col = fixed4(lcol*den, den);
        col.a *= 1.1;
		col.rgb *= col.a;
        col *= smoothstep(t-smt, t + smt, sceneDist); //Blend with scene geometry
		rz = rz + col*(1. - rz.a); //front to back blending
        
        t += clamp(.15 - den*0.1, 0.15 ,5.);
	}
    rz = clamp(rz,0.,1.);
    return rz*rz;
}

 fixed3 lgt = normalize( fixed3(.5, 0.8, 0.2) );

//see: https://www.shadertoy.com/view/Xts3WM
fixed3 norcurv(in fixed3 p, out float curv)
{
    fixed2 e = fixed2(-1., 1.)*0.009;   
    float t1 = map(p + e.yxx), t2 = map(p + e.xxy);
    float t3 = map(p + e.xyx), t4 = map(p + e.yyy);

    curv = clamp(.002/(e.x*e.x) *(t1 + t2 + t3 + t4 - 4. * map(p)),0.,1.);
    return normalize(e.yxx*t1 + e.xxy*t2 + e.xyx*t3 + e.yyy*t4);
}

struct mtl{float rough; fixed3 alb; fixed3 f0;};
    
//http://blog.selfshadow.com/publications/s2013-shading-course/karis/s2013_pbs_epic_notes_v2.pdf
fixed3 shade(in fixed3 pos, in fixed3 rd)
{
    float crv;
    fixed3 nor = norcurv(pos, crv);
    mtl m;
    m.alb = fixed3(.1,0.8,0.8);
    m.rough = 0.3;
    m.f0 = fixed3(.95, 1., 1.);
    
	float nl = clamp(dot(nor,lgt), 0., 1.);
	fixed3 col = fixed3(0.,0.,0.);
    
    fixed3 lcol = lerp(fixed3(.5,1,1),fixed3(.5,.8,1.),noise(pos*2.));
    
    if (nl > 0.)
    {
        fixed3 haf = normalize(lgt - rd);
        float nh = clamp(dot(nor, haf), 0., 1.); 
        float nv = clamp(dot(nor, -rd), 0., 1.);
        float lh = clamp(dot(lgt, haf), 0., 1.);
        float a = m.rough*m.rough;
        float a2 = a*a;
        float dnm = nh*nh*(a2 - 1.) + 1.;
        float D = a2/(3.14159*dnm*dnm);
        float k = pow(m.rough + 1., 2.)/8.; //hotness reducing
		float G = (1./(nl*(1. - k) + k))*(1./(nv*(1. - k) + k));
        fixed3 F = m.f0 + (1. - m.f0) * exp2((-5.55473*lh - 6.98316) * lh); //"optimization"
        fixed3 spec = nl*D*F*G;
        col = lcol*nl*(spec*((crv*fixed3(0.1,.5,.8))+0.05) + m.alb*(1. - dot(m.f0,luma)));
    }

    return col;
}

fixed3 render(in fixed3 ro, in fixed3 rd)
{   
    float fadeIn = smoothstep(1.,17.,_Time.y);
    fixed4 mTex = tex2D(iChannel1, fixed2(0.5,0.5));
    time = (_Time.y - fadeIn*5. + (mTex.w-0.05)*.7);
  
    //float w = textureLod(iChannel3, fixed2(0.9,0.5), 0.).x;
    
    fixed3 bgcol = lerp(fixed3(.1,1,.8),fixed3(.1,.8,1.),noise(rd*2.+time*.7));
    fixed3 col = .004/clamp(fbm3(rd*3.*fixed3(.5,1.,.3))+.31,0.,1.)*bgcol; //bg
    float rz = march(ro,rd); //march
    
    if ( rz < FAR ) col = shade(ro +rd*rz, rd);
    
	col = pow(clamp(col,0.,1.), fixed3(0.416667,0.416667,0.416667))*1.055 - 0.055; //gamma
    
    fixed4 rez = vmarch(ro,rd,rz); //volumetric stepping
    rez.rgb *= (mTex.z-0.1)*3.;
    col.rgb += rez.rgb;
    
    col *= sin(1*350.+time)*0.09+1.;//Scanlines
    col *= sin(1*350.+time)*0.09+1.;
    
    col *= smoothstep(1.4,0.85,length((1/_ScreenParams.xy*2.-1.)*fixed2(.85,1.)));
    
    
    col = clamp(col,0.,1.);
    //Fade in
    col *= fadeIn;
    
    return col*1.;
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

	fixed2 p = 1;
	p.x*=_ScreenParams.x/_ScreenParams.y;
	fixed2 mo = _iMouse.xy / _ScreenParams.xy-.5;
    mo = (mo==fixed2(-.5,-.5))?mo=fixed2(0.,0.):mo;
	mo.x *= _ScreenParams.x/_ScreenParams.y;
    mo*=2.;
	
    //shake (only fpor non-vr)
    float dsp = tex2D(iChannel0,fixed2(_Time.y*.1,_Time.y*.1)).x-0.5;
    mo.y += _Time.y*0.2 + dsp*.2;
    mo.x += sin(_Time.y*0.2)*0.5;
    
    //camera
	fixed3 ro = fixed3(0.,0.,11.+dsp*.5);
    fixed3 rd = normalize(i.worldSpaceView);
    rd = rotz(rd,-0.5);
    ro = rotx(ro,mo.y), rd = rotx(rd,mo.y);
    ro = roty(ro,mo.x), rd = roty(rd,mo.x);
    
    fixed3 col = render(ro, rd);
	
	return fixed4( col, 1.0 );
}


	ENDCG
	}
  }
}

