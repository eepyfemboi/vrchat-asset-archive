//Thanks DocMe for helping convert it from shadertoy

Shader "DocMe/ShaderToy/DrugEffect"{
	Properties{
	_Strength("Strength", Float) = 1
	_ScaleFBM("Scale FBM", Float) = 1
	_ScaleTM("Scale T", Float) = 1
	}
	SubShader{
		Tags { "Queue" = "Overlay+4002" }
	Cull Off ZWrite Off ZTest Always
		GrabPass{"_GrabP2ass12312"}
		Pass{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float4 screenCoord : TEXCOORD1;
			};

			v2f vert (appdata v){
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				o.screenCoord = ComputeGrabScreenPos(o.vertex);
				return o;
			}
			
			sampler2D _GrabP2ass12312;
				float3 mod289(float3 x) {
    return x - floor(x * (1.0 / 289.0)) * 289.0;
}

float4 mod289(float4 x) {
    return x - floor(x * (1.0 / 289.0)) * 289.0;
}

float4 permute(float4 x) {
    return mod289(((x*34.0)+1.0)*x);
}

float4 taylorInvSqrt(float4 r)
{
    return 1.79284291400159 - 0.85373472095314 * r;
}

float snoise(float3 v)
{ 
    const float2  C = float2(1.0/6.0, 1.0/3.0) ;
    const float4  D = float4(0.0, 0.5, 1.0, 2.0);

    // First corner
    float3 i  = floor(v + dot(v, C.yyy) );
    float3 x0 =   v - i + dot(i, C.xxx) ;

    // Other corners
    float3 g = step(x0.yzx, x0.xyz);
    float3 l = 1.0 - g;
    float3 i1 = min( g.xyz, l.zxy );
    float3 i2 = max( g.xyz, l.zxy );

    //   x0 = x0 - 0.0 + 0.0 * C.xxx;
    //   x1 = x0 - i1  + 1.0 * C.xxx;
    //   x2 = x0 - i2  + 2.0 * C.xxx;
    //   x3 = x0 - 1.0 + 3.0 * C.xxx;
    float3 x1 = x0 - i1 + C.xxx;
    float3 x2 = x0 - i2 + C.yyy; // 2.0*C.x = 1/3 = C.y
    float3 x3 = x0 - D.yyy;      // -1.0+3.0*C.x = -0.5 = -D.y

    // Permutations
    i = mod289(i); 
    float4 p = permute( permute( permute( 
        i.z + float4(0.0, i1.z, i2.z, 1.0 ))
                              + i.y + float4(0.0, i1.y, i2.y, 1.0 )) 
                     + i.x + float4(0.0, i1.x, i2.x, 1.0 ));

    // Gradients: 7x7 points over a square, mapped onto an octahedron.
    // The ring size 17*17 = 289 is close to a multiple of 49 (49*6 = 294)
    float n_ = 0.142857142857; // 1.0/7.0
    float3  ns = n_ * D.wyz - D.xzx;

    float4 j = p - 49.0 * floor(p * ns.z * ns.z);  //  mod(p,7*7)

    float4 x_ = floor(j * ns.z);
    float4 y_ = floor(j - 7.0 * x_ );    // mod(j,N)

    float4 x = x_ *ns.x + ns.yyyy;
    float4 y = y_ *ns.x + ns.yyyy;
    float4 h = 1.0 - abs(x) - abs(y);

    float4 b0 = float4( x.xy, y.xy );
    float4 b1 = float4( x.zw, y.zw );

    //float4 s0 = float4(lessThan(b0,0.0))*2.0 - 1.0;
    //float4 s1 = float4(lessThan(b1,0.0))*2.0 - 1.0;
    float4 s0 = floor(b0)*2.0 + 1.0;
    float4 s1 = floor(b1)*2.0 + 1.0;
    float4 sh = -step(h, (0.0));

    float4 a0 = b0.xzyw + s0.xzyw*sh.xxyy ;
    float4 a1 = b1.xzyw + s1.xzyw*sh.zzww ;

    float3 p0 = float3(a0.xy,h.x);
    float3 p1 = float3(a0.zw,h.y);
    float3 p2 = float3(a1.xy,h.z);
    float3 p3 = float3(a1.zw,h.w);

    //Normalise gradients
    float4 norm = taylorInvSqrt(float4(dot(p0,p0), dot(p1,p1), dot(p2, p2), dot(p3,p3)));
    p0 *= norm.x;
    p1 *= norm.y;
    p2 *= norm.z;
    p3 *= norm.w;

    // Mix final noise value
    float4 m = max(0.6 - float4(dot(x0,x0), dot(x1,x1), dot(x2,x2), dot(x3,x3)), 0.0);
    m = m * m;
    return 42.0 * dot( m*m, float4( dot(p0,x0), dot(p1,x1), 
                                 dot(p2,x2), dot(p3,x3) ) );
}

float fBm(float3 coords)
{
    const int octaves = 2;
    
    float smoothness = 2.0; // should be between 0.0 and 1.0?
    float lacunarity = 2.0;
    
    float result = 0.0;
    float totalAmplitude = 0.0;
    
    for (int o = 0; o != octaves; ++o)
    {
        float amplitude = pow(lacunarity, -smoothness * float(o));
        
        result += snoise(coords) * amplitude;
        totalAmplitude += amplitude;
        
        coords *= lacunarity;
    }
    
    return result / totalAmplitude;
}

float turbulence(float3 coords)
{
    const float f_low = 1.0;
    const int octaves = 8;
    
    float t = 0.0;
    
    for (int o = 0; o != octaves; ++o)
    {
        float f = f_low * pow(2.0, float(o));
        
        t += abs(snoise(coords)) / f;
        
        coords *= 2.0;
    }
    
    return t; // - 0.3;
}
uniform float _Strength,_ScaleTM, _ScaleFBM;
fixed4 frag (v2f i) : SV_Target{
    float time_scale = 0.5;
    float time = _Time.y * time_scale;
    
	float2 uv = i.screenCoord.xy /i.screenCoord.w;
    
    
    float2 fbm_scale = (1.0) *_ScaleFBM;
    float2 t_scale = (5.0) * _ScaleTM;
    
    float2 x_offset = float2(123.456, 0.0);
    float2 y_offset = float2(349.234, 1704.2);
    
    
    float2 x_coords = (uv + x_offset) * fbm_scale;
    float xo = fBm(float3(x_coords, time));
    
    float2 tx_coords = (uv + x_offset) * t_scale;
    float xt = turbulence(float3(tx_coords, time));
    
    float2 y_coords = (uv + y_offset) * fbm_scale;
    float yo = fBm(float3(y_coords, time));
    
    float2 ty_coords = (uv + y_offset) * t_scale;
    float yt = turbulence(float3(ty_coords, time));
    
    
    float2 po = (float2(xo + xt, yo + yt) * (0.01 * _Strength));
    
    float2 tc = uv;
    float3 bg = tex2D(_GrabP2ass12312, tc + po).rgb;
    
    
	return float4(float3(bg), 1.0);
}
				
			ENDCG
		}
	}
}
