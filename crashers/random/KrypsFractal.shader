Shader "KrypsFractal"
{
	Properties
	{
		I("Iteration",Int) = 9999999999
		R("Raymarching",Int) = 9999999999
		Red("Red",Range(0.01,2.0)) = 2
		Green("Green",Range(0.01,2.0)) = 2   
		Blue("Blue",Range(0.01,2.0)) = 2
		D("D",Range(0.00,2.0)) = 2    
		E("E",Range(0.00,2.0)) = 2   
		F("F",Range(0.00,2.0)) = 2
		G("G",Range(0.00,100.0)) = 100
		N("N",Range(0.00,0.5)) = 0.5	
		T("T",Range(0.00,100.0)) = 100.0	
	}
	Subshader
	{

		Pass
		{

			CGPROGRAM
			#pragma vertex vertex_shader
			#pragma fragment pixel_shader
			#pragma target 4.0

			int I,R;
			float Red,Green,Blue,D,E,F,G,N,T;

			struct custom_type
			{
				float4 screen_vertex : SV_POSITION;
				float3 world_vertex : TEXCOORD1;
			};
 
			float3 map (float3 p)
			{
				for (int i = 0; i < I; ++i)
				{
					p = float3(Red,Green,Blue)*abs(p/dot(p,p)-float3(D,E,F));    
				}	
				return p/G;
			}
		
			float4 raymarch(float3 ro, float3 rd)
			{
				float3 c = float3(99,99,99);
				for(int i=0; i<R; ++i)
				{
					T+=N;
					c+=map(ro+T*rd);
				}
				return float4(c,1.0);
			}	

			custom_type vertex_shader (float4 vertex : POSITION)
			{
				custom_type vs;
				vs.screen_vertex = UnityObjectToClipPos(vertex);
				vs.world_vertex = mul(unity_ObjectToWorld, vertex);
				return vs;
			}

			float4 pixel_shader (custom_type ps) : SV_TARGET
			{
				float3 worldPosition = ps.world_vertex;
				float3 viewDirection = normalize(ps.world_vertex-_WorldSpaceCameraPos.xyz);
				return raymarch (worldPosition,viewDirection);
			} 
			
			ENDCG
		}
	}
}