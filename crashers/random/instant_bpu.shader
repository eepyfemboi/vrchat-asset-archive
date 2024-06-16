
Shader "instant bpu only for nigs"
	{

	Properties{
	iChannel0 ("iChannel0", 2D) = "" {}

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




static const float time;
static const fixed2 mouse;
static const fixed2 resolution;

// from https://www.shadertoy.com/view/MtdBzN
// fingerbob3d -> 3d cock-field(tm)
// added displacement + animated forskin.

//------------------------------------------------------------------------
// Camera
//------------------------------------------------------------------------
void doCamera( out fixed3 camPos, out fixed3 camTar, in float time)
{
    fixed2 mouse2 = mouse;	//fixed2(0.0);
    float an = 10.0*mouse2.x;
    mouse2.y *= 4.0;
	camPos = fixed3(5.5*sin(an),0.0+mouse2.y*2.0,5.5*cos(an));
    camTar = fixed3(0.0,0.0,0.0);
}


    
//------------------------------------------------------------------------
// Modelling 
//------------------------------------------------------------------------

float sdSphere( fixed3 p, float s )
{
    return length(p)-s;
}

float sdPlane( fixed3 p )
{
	return p.y;
}

float sdEllipsoid(const in  fixed3 p, const in fixed3 r) {
  return (length(p / r) - 1.0) * min(min(r.x, r.y), r.z);
}

float sdBox( fixed3 p, fixed3 b )
{
    fixed3 d = abs(p) - b;
    return min(max(d.x,max(d.y,d.z)),0.0) + length(max(d,0.0));
}


float fakeEllipsoid( fixed3 p, fixed3 s ) {
	fixed3 lp = p / s;
	fixed3 ep = normalize(lp) * s;
	return length(p - ep) * sign(length(lp) - 1.0);
}

float cylinder( fixed3 p, fixed2 rh )
{
	fixed2 cp = fixed2( length(p.xz), p.y );
	return length( max(abs(cp) - rh, 0.0) );
}

float smin( float a, float b, float k )
{
    float h = clamp( 0.5+0.5*(b-a)/k, 0.0, 1.0 );
    return lerp( b, a, h ) - k*h*(1.0-h);
}

fixed2 opUnionRound(const in fixed2 a, const in fixed2 b, const in float r)
{
    fixed2 res = fixed2(smin(a.x,b.x,r),(a.x<b.x) ? a.y : b.y);
    return res;
}
float opS( float d1, float d2 )
{
    return max(-d2,d1);
}


fixed3 rotateX(fixed3 p, float a)
{
  float sa = sin(a);
  float ca = cos(a);
  return fixed3(p.x, ca * p.y - sa * p.z, sa * p.y + ca * p.z);
}
fixed3 rotateY(fixed3 p, float a)
{
  float sa = sin(a);
  float ca = cos(a);
  return fixed3(ca * p.x + sa * p.z, p.y, -sa * p.x + ca * p.z);
}
fixed3 rotateZ(fixed3 p, float a)
{
  float sa = sin(a);
  float ca = cos(a);
  return fixed3(ca * p.x - sa * p.y, sa * p.x + ca * p.y, p.z);
}

// http://mercury.sexy/hg_sdf/
// Repeat space along one axis. Use like this to repeat along the x axis:
// <float cell = pMod1(p.x,5);> - using the return value is optional.
float pMod1(inout float p, float size)
{
	float halfsize = size*0.5;
	float c = floor((p + halfsize)/size);
	p = fmod(p + halfsize, size) - halfsize;
	return c;
}


#define PI 3.1415926
#define DEG2RAD ((PI * 2.0) / 360.0)


// model

    // Return 2x2 rotation matrix
    // With fixedtor swizzle/mask can use as a 3x3 xform
    // For y, you need to invert 
    // angle in radians
    // ========================================
    fixed2x2 Rot2(float a ) {
        float c = cos( a );
        float s = sin( a );
        return fixed2x2( c, -s, s, c );
    }


    // ========================================
    float sdCappedCylinder( fixed3 p, fixed2 h ) {
        fixed2 d = abs(fixed2(length(p.xz),p.y)) - h;
        return min(max(d.x,d.y),0.0) + length(max(d,0.0));
    }

    // iq's bend X
    // ========================================
    fixed3 opCheapBend( fixed3 p, float angle ) {
        fixed2x2  m = Rot2( angle * p.y );
        fixed3  q = fixed3( mul(m,p.yx), p.z );
        return q;
    }


fixed3 CalcBend(fixed3 bodyp)
{
    float ang = sin(time) * 8.;
    ang += sin(time*0.31) * 4.;
    //float flp = sign(ang);
    //ang=abs(ang);
    
    bodyp.y += 2.0;
	bodyp = opCheapBend(bodyp,(ang)*DEG2RAD);
    //bodyp.z -= 1.0;
    bodyp = rotateZ(bodyp,90.0*DEG2RAD);
    bodyp.y -= 2.0;
    return bodyp;
    
}

float smin( float a, float b )
{
    float k = 3.0;
    float res = exp( -k*a ) + exp( -k*b );
    return -log( res )/k;
}


float displacement_t1(fixed3 p)
{
    float height = 0.05;
    float zn = smoothstep(0.0,1.0,p.z);
    float yn = smoothstep(-0.1,0.5,p.y);
    float _x = clamp(p.x,-0.05,0.05);
    float xn = (_x + 0.05) * 10.0;			// normalize band
    xn = sin(xn*(PI));
    xn *= zn;
    xn *= yn;
    return -height*xn;
}


fixed2 doModel( fixed3 p )
{
	
    float d2 = sdPlane(p-fixed3(0.0,-1.8,0.0));		// checkered floor distance...

    float c = pMod1(p.z,8.5);
    p.x += 4.75*c;				// fucked because of mirroring
    pMod1(p.x,16.5);
	

    fixed2 res = fixed2(0.0,0.0);			// distance,material index
    //p.z += 0.8;
    
    fixed3 bodyp = p;
    bodyp = CalcBend(bodyp);
    float dome = sdEllipsoid(bodyp-fixed3(0.0,1.5,0.0),fixed3(0.70,0.75,0.70));
    dome += displacement_t1(bodyp-fixed3(0.0,1.4,0.0));
	float box5 = sdEllipsoid(bodyp-fixed3(0.0,1.5,0.0),fixed3(0.04,1.2,0.125));    
    
    float box1 = sdBox(bodyp-fixed3(0.0,0.5,0.1),fixed3(5.0,0.5,5.0));

    dome = opS(dome,box5);
    dome = opS(dome,box1);
    
    float _h = 1.5;
    
    static const float yo = (0.5+sin(time*3.63)*0.5)*0.125;
    
    float d1 = sdCappedCylinder(bodyp+fixed3(0.0,yo,0.0),fixed2(0.75,_h));
    float d6 = sdSphere(bodyp-fixed3(0.7,-2.5,0.0),1.4);
    float d7 = sdSphere(bodyp-fixed3(-0.7,-2.5,0.0),1.4);
    
    
    d1 = smin(d1,d6,0.27);		// nut
    d1 = smin(d1,d7,0.27);		// nut

    res = fixed2(d1,2.0);
    res = opUnionRound(res,fixed2(d2,1.0),0.1);
    res = opUnionRound(res,fixed2(dome,3.0),0.425);
    //res = opUnionRound(res,fixed2(box5,4.0),0.03);
    return res;
}



fixed2x2 rotate(float a)
{
    float sa = sin(a), ca = cos(a);
	return fixed2x2(ca, -sa, sa, ca);
}

float circle(fixed2 p, float radius)
{
	return length(p) - radius;
}


//------------------------------------------------------------------------
// Material 
//
// Defines the material (colors, shading, pattern, texturing) of the model
// at every point based on its position and normal.
//------------------------------------------------------------------------
// c = colour index (added by del for some materials)
// c.a == specular val fudged in...
fixed4 doMaterial( in fixed3 pos, in fixed3 nor,float c )
{
    if (c<=1.0)
    {
        // checker floor
        float f = fmod( floor(0.25*pos.z) + floor(0.25*pos.x), 2.0);
        f+=0.5;
        fixed4 col = f*fixed4(0.3,0.3,0.1,0.0);
	    return col;
    }
    else if (c<=2.0)
    {
        float b = 1.0;
	return fixed4(0.5*b,0.09*b,0.15*b,0.7);
    }
    else if (c<=3.0)
    {
        float b = 0.45;
	return fixed4(0.5*b,0.09*b,0.15*b,0.7);
    }
    //else if (c<=4.0)
    //{
    //   float b = 0.4;
	//return fixed4(0.5*b,0.09*b,0.15*b,0.1);
    //}

	return fixed4(1.0, 1.0, 1.0,2.0);
}

//------------------------------------------------------------------------
// Lighting
//------------------------------------------------------------------------
float calcSoftshadow( in fixed3 ro, in fixed3 rd );

fixed3 doLighting( in fixed3 pos, in fixed3 nor, in fixed3 rd, in float dis, in fixed4 mat )
{
    
    fixed3 lin = fixed3(0.0,0,0);

    // key light
    //-----------------------------
    fixed3  lig = normalize(fixed3(0.7,0.875,0.89));		// dir
    float dif = max(dot(nor,lig),0.0);
    float sha = 0.0;
    if( dif>0.01 )
        sha=calcSoftshadow( pos+0.01*nor, lig );
    lin += dif*fixed3(4.00,4.00,4.00)*sha;

	float spec = pow(dif, 160.0) *mat.a;
    
    
    // ambient light
    //-----------------------------
    lin += fixed3(0.50,0.50,0.50);

    
    // surface-light interacion
    //-----------------------------
    fixed3 col = mat.xyz*lin;
    col+=spec;

    
    // fog    
    //-----------------------------
	col *= exp(-0.002*dis*dis);

    return col;
}

fixed2 calcIntersection( in fixed3 ro, in fixed3 rd )
{
	static const float maxd = 50.0;           // max trace distance
	static const float precis = 0.001;        // precission of the intersection
    float h = precis*2.0;
    float t = 0.0;
	//float res = -1.0;
    fixed2 res = fixed2(-1.0,0.0);
    float c = 0.0;
    
    for( int i=0; i<120; i++ )          // max number of raymarching iterations is 90
    {
        if( h<precis||t>maxd ) break;
        fixed2 res2 = doModel( ro+rd*t );
	    h = res2.x;
        c = res2.y;
        
        t += h*0.75;		// hack * for extreme bend
    }

    if( t<maxd )
    {
        res.x = t;
        res.y = c;
    }
    return res;
}

fixed3 calcNormal( in fixed3 pos )
{
   static const float eps = 0.002;             // precision of the normal computation

   static const fixed3 v1 = fixed3( 1.0,-1.0,-1.0);
  static  const fixed3 v2 = fixed3(-1.0,-1.0, 1.0);
   static const fixed3 v3 = fixed3(-1.0, 1.0,-1.0);
   static const fixed3 v4 = fixed3( 1.0, 1.0, 1.0);

	return normalize( v1*doModel( pos + v1*eps ).x + 
					  v2*doModel( pos + v2*eps ).x + 
					  v3*doModel( pos + v3*eps ).x + 
					  v4*doModel( pos + v4*eps ).x );
}

float calcSoftshadow( in fixed3 ro, in fixed3 rd )
{
    float res = 1.0;
    float t = 0.0005;                 // selfintersection avoidance distance
	float h = 1.0;
    for( int i=0; i<40; i++ )         // 40 is the max numnber of raymarching steps
    {
        h = doModel(ro + rd*t).x;
        res = min( res, 64.0*h/t );   // 64 is the hardness of the shadows
		t += clamp( h, 0.02, 2.0 );   // limit the max and min stepping distances
    }
    return clamp(res,0.0,1.0);
}

fixed3x3 calcLookAtMatrix( in fixed3 ro, in fixed3 ta, in float roll )
{
    fixed3 ww = normalize( ta - ro );
    fixed3 uu = normalize( cross(ww,fixed3(sin(roll),cos(roll),0.0) ) );
    fixed3 vv = normalize( cross(uu,ww));
    return fixed3x3( uu, vv, ww );
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

    fixed2 st = 1;
    fixed2 p = 1;

    //-----------------------------------------------------
    // camera
    //-----------------------------------------------------
    
    // camera movement
    fixed3 ro, ta;
    doCamera( ro, ta, time);

    // camera matrix
    fixed3x3 camMat = calcLookAtMatrix( ro, ta, 0.0 );  // 0.0 is the camera roll
    
	// create view ray
	fixed3 rd =  normalize(i.worldSpaceView);// 2.0 is the lens length

    //-----------------------------------------------------
	// render
    //-----------------------------------------------------
  	fixed3 col = lerp( fixed3(0.2, 0.2, 0.5), fixed3(0.5, 0.7, 1.0), 1 / 1 );

	// raymarch
    fixed2 res = calcIntersection( ro, rd ); 
    float t = res.x;
    if( t>-0.5 )
    {
        // geometry
        fixed3 pos = ro + t*rd;
        fixed3 nor = calcNormal(pos);

        // materials
        fixed4 mat = doMaterial( pos, nor, res.y );

        col = doLighting( pos, nor, rd, t, mat );
	}

	//-----------------------------------------------------
	// postprocessing
    //-----------------------------------------------------
    // gamma
	col = pow( clamp(col,0.0,1.0), fixed3(0.4545,0.4545,0.4545) );
	   
    return fixed4( col, 1.0 );
}
	ENDCG
	}
  }
}

