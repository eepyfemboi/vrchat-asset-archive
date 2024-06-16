Shader "Snail/Shaders/AdvancedPolyColorWave" {
	
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
		_Palette ("Color Palette", 2D) = "white" {}
		_FlashColor("Flash Color", Color) = (1,1,1,1)
		
		// Wave fronts come by every _Speed seconds.
		_Speed("Speed", Float) = .1

		// The slope controls propigation of the wave down the UVs
		_Slope("Slope", Float) = .1

		// Noise is added to the wave front. 0 = no noise, 1 = all noise
		_Noise("Wave Noise", Range(0,1)) = .1

		// Flash length is the percentage of the wave front spent on the flash.
		_FlashLength("Flash Length", Range(0,1)) = .0333

		[Header(Rendering)]
		[Enum(UnityEngine.Rendering.CullMode)] _Cull("Cull [Back]", Float) = 2
        [Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend("SrcBlend [One]", Float) = 1
        [Enum(UnityEngine.Rendering.BlendMode)] _DstBlend("DestBlend [Zero]", Float) = 0
        [Enum(UnityEngine.Rendering.CompareFunction)] _ZTest("ZTest [LessEqual]", Float) = 4
        [Enum(Off,0,On,1)] _ZWrite("ZWrite [On]", Float) = 1
    }

    SubShader
    {
		
        Tags { "RenderType" = "Opaque" }
		
        LOD 100
        Blend[_SrcBlend][_DstBlend]
        ZTest[_ZTest]
        ZWrite[_ZWrite]
        Cull[_Cull]


        Pass
        {
			CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag  
            #pragma geometry geom
			#pragma multi_compile_fwdbase
			#include "UnityCG.cginc"

			uniform float4 _FlashColor;
            uniform sampler2D _MainTex;
            uniform float4 _MainTex_ST;
            uniform sampler2D _Palette;
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
                float3 normal : NORMAL;
                float2 uv : TEXCOORD0;
            };
 
            struct g2f
            {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
                fixed4 col : COLOR;
            };
			
			
            v2g vert (appdata_base v)
            {
                v2g o;
                o.vertex = v.vertex;
                o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
                o.normal = v.normal;
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
                    tristream.Append(o);
				}
                tristream.RestartStrip();
			}
           
            fixed4 frag (g2f i) : SV_Target
            {
                fixed4 col = tex2D(_MainTex, i.uv);
				col.rgb *= i.col.rgb;
				return lerp(col, _FlashColor, i.col.a);
            }

            ENDCG
        }
		
		UsePass "Legacy Shaders/VertexLit/SHADOWCASTER"
    }
}
