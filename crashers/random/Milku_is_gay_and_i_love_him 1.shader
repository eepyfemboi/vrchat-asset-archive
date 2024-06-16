Shader "Milky/Milku Shaders/HACCED"
{
    Properties
    {
        _MainTex ("Put A Lewd Pic Here", 2D) = "white" {}
		_Alpha ("See Throughness", Range (0.0, 1.0)) = 1
		_Range ("Bigness (from center)", Int) = 0.5
    }

    SubShader
    {
        Tags { "Queue"="Overlay+96001" "IgnoreProjector"="True" "RenderType"="Overlay" "PreviewType"="Plane" }
        // Aint Nobody Bloccin This Shit Bois
        
		LOD 100		
		ZWrite Off
		Cull Off
        ZTest Always
        Blend SrcAlpha OneMinusSrcAlpha

        Stencil
        {
           Ref 753
           Comp NotEqual
        }

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
 
            sampler2D _MainTex;
			fixed4 _MainTex_ST;
			float _Alpha, _Range;
			
			 struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 pos : SV_POSITION;
            };

            v2f vert(float4 pos : POSITION, float2 uv : TEXCOORD0)
            {
				 v2f o;
				 o.uv = TRANSFORM_TEX(uv, _MainTex);
				 float4 dist = distance(_WorldSpaceCameraPos, mul(unity_ObjectToWorld, float4(0,0,0,1)));
				 
				 #if UNITY_SINGLE_PASS_STEREO
				float offset = length(abs(unity_StereoWorldSpaceCameraPos[0] - unity_StereoWorldSpaceCameraPos[1]));
				float4 abspos = pos + half4((0.5-1*unity_StereoEyeIndex)*offset, 0, 0, 0);
				#else
				float4 abspos = pos;
				#endif
				abspos.z = -abspos.z;
				o.pos = mul(UNITY_MATRIX_P, abspos);
				o.pos = o.pos - o.pos*step(_Range, dist);
				
				return o;
            }
 
 
            fixed4 frag(v2f i) : SV_Target
            {
                fixed4 uvnew;
				uvnew = tex2D(_MainTex, i.uv);
				return uvnew*float4(1, 1, 1, _Alpha);
            }
            ENDCG
        }
    }
}