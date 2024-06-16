
Shader "ShaderMan/Greenscreen"
	{

	Properties{
	iChannel0 ("iChannel0", 2D) = "" {}
	iChannel1 ("iChannel1", 2D) = "" {}
	  iFrame ("iFrame", Range(0, 0.1)) = 0
	}

	 SubShader {
      
        GrabPass{"iChannel0" }

	


        Pass {


         
         Cull off



CGPROGRAM
			#pragma vertex vertex_shader
			#pragma fragment pixel_shader
			#pragma target 3.0


	//Variables
sampler2D iChannel1;
sampler2D iChannel0;
uniform int       iFrame;                // shader playback frame
	


	struct structure
			{
				float4 vertex:SV_POSITION;
				float2 uv : TEXCOORD0;
			};

	void vertex_shader(in float4 vertex:POSITION,in float2 uv:TEXCOORD0,out structure vs) 
			{
				vs.vertex = float4(uv.x-0.5,.5-uv.y, 0.01, .5*vertex.w);
				vs.uv = uv; 
			}

			void pixel_shader(in structure ps, out float4 fragColor:SV_Target0) 
			{	
	fixed2 uv =  ps.uv.xy/1;
	fixed3 col = tex2D(iChannel0, uv).rgb;
    float g = length(col - fixed3(0.,1.,0.));
    fixed2 uv2 = uv - 0.5;
    uv2 *= 0.9995;
    uv2 = uv2 + 0.5;
    fixed3 old = tex2D(iChannel1, uv2).rgb;
    if(g < 0.65 && iFrame > 5){
        fragColor = fixed4(old,1.);
    }else{
        float g2 = g*0.8;
        col.g *= max(0.,min(1.,g2));
        fragColor = fixed4(col,1.);
    }
}
	ENDCG
	}
  }
}

