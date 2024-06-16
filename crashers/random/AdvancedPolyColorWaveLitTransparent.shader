// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Snail/Shaders/AdvancedPolyColorWaveLitTransparent" {
	
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
		_Palette ("Color Palette", 2D) = "white" {}
		_PaletteIntensity("Color intensity", Range(0,1)) = .5
		_FlashColor("Flash Color", Color) = (1,1,1,1)
		
		// Wave fronts come by every _Speed seconds.
		_Speed("Speed", Float) = .1

		// The slope controls propigation of the wave down the UVs
		_Slope("Slope", Float) = .1

		// Noise is added to the wave front. 0 = no noise, 1 = all noise
		_Noise("Wave Noise", Range(0,1)) = .1

		// Flash length is the percentage of the wave front spent on the flash.
		_FlashLength("Flash Length", Range(0,1)) = .0333

		[Header(Lighting)]
		[Toggle(EnableLighting)]
        _EnableLighting ("Enabled", Float) = 0
    }

    SubShader
    {
		Tags { "Queue" = "Transparent" } 
		
        LOD 100
        Cull Off
        ZWrite Off
        Blend SrcAlpha OneMinusSrcAlpha


        Pass
        {
			Tags { "LightMode" = "ForwardBase" }
			CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag  
            #pragma geometry geom
			#pragma multi_compile_fwdbase
			#pragma shader_feature EnableLighting
			#include "UnityCG.cginc"

			uniform float4 _FlashColor;
            uniform sampler2D _MainTex;
            uniform float4 _MainTex_ST;
            uniform sampler2D _Palette;
			uniform float _PaletteIntensity;
			uniform float _Speed;
			uniform float _FlashLength;
			uniform float _Noise;
			uniform float _Slope;

			float random (in float st) {
				return frac(cos(st * 12345.6543) * 43758.5453123);
			}
 
            struct v2g
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
				#ifdef EnableLighting
					float4 lighting : COLOR;
				#endif
            };
 
            struct g2f
            {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
                fixed4 col : COLOR;
				#ifdef EnableLighting
					float4 lighting : COLOR1;
				#endif
            };
			
			
            v2g vert (appdata_base v)
            {
                v2g o;
                o.vertex = v.vertex;
                o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
				
				#ifdef EnableLighting
					
					float3 normal = normalize(mul(unity_ObjectToWorld, float4(v.normal.xyz,0)));
					o.lighting.xyz = max(0,ShadeSH9(float4(normal, 1))) +
								   Shade4PointLights(unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
                                        unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
                                        unity_4LightAtten0, 
										normalize(mul(unity_ObjectToWorld, float4(v.vertex.xyz,1))),
										normal
										);

				#endif

                return o;
            }
			
            [maxvertexcount(3)]
            void geom(triangle v2g IN[3], uint id:SV_PrimitiveID, inout TriangleStream<g2f> tristream)
            {
				float2 mid = (IN[0].uv + IN[1].uv + IN[2].uv)/3;
				float hash = random(id);

				float time = _Time.y * _Speed + lerp(IN[0].uv.y, hash, _Noise) * _Slope;

				float colorId = floor(time);
				float percent = frac(time);

				float3 color = tex2Dlod(_Palette, float4(random(colorId), random(colorId*2), 0, 0));
				float flash = lerp(0, 1.0-percent/(_FlashLength+.00001), percent< _FlashLength);

				g2f o;
				
				for(int i = 0 ; i < 3 ; i ++) {
					o.pos = UnityObjectToClipPos(IN[i].vertex);
					o.uv = IN[i].uv;
					o.col.rgb = color;
					o.col.a = flash;
					
					#ifdef EnableLighting
						o.lighting = IN[i].lighting;
					#endif

                    tristream.Append(o);
				}
                tristream.RestartStrip();
			}
           
            fixed4 frag (g2f i) : SV_Target
            {
                fixed4 col = tex2D(_MainTex, i.uv);
				col.rgb *= lerp(1, i.col.rgb, _PaletteIntensity);
				return 
				lerp(col, _FlashColor, i.col.a * _FlashColor.a)
				#ifdef EnableLighting
					*i.lighting
				#endif
				;
            }

            ENDCG
        }
		
		UsePass "Legacy Shaders/VertexLit/SHADOWCASTER"
    }
}
