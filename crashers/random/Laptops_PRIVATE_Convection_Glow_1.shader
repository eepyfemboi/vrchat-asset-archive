Shader "Laptop's Convection Glow" 
  {
    Properties 
    {
     _MainColor ("Main Color", Color) = (1,1,1,1)
     _MainTex ("Texture", 2D) = "white" {}
     _BumpMap ("Bumpmap", 2D) = "bump" {}
     _GlowColor ("Glow Color", Color) = (1,0.58,0,1)
     _GlowPower ("Glow Power", Range(10,0.5)) = 10
     _Albedo ("Albedo", Range(0,1)) = 0
     _Emission("Emission", Range(1,2)) = 1.3
	 _OcclusionPower ("Occlusion power", Range(0, 3)) = 0.4
     _Occlusion ("Occlusion", 2D) = "white" {}
    }
    
    SubShader 
    {
     Tags 
     { 
     	"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"
     }
     		
     
     CGPROGRAM
      #pragma surface surf Lambert
      struct Input {
          float2 uv_MainTex;
          float2 uv_BumpMap;
          float2 uv_Occlusion;
          float3 viewDir;
      };

      float4 _MainColor;
      float _Albedo;
      float _Emission;
      sampler2D _MainTex;
      sampler2D _BumpMap;
      float4 _GlowColor;
      float _GlowPower;
      uniform sampler2D _Occlusion;
      float _OcclusionPower;
     
      void surf (Input IN, inout SurfaceOutput o) {      
		  half4 occ = tex2D(_Occlusion, IN.uv_Occlusion);
      	  float4 texture0 = tex2D (_MainTex, IN.uv_MainTex) * _MainColor.rgba;
      	  float4 texture1 = tex2D (_MainTex, IN.uv_MainTex).rgba * _Albedo + texture0.rgba;
          o.Albedo = lerp(texture1.rgb, texture1.rgb * occ.rgb, _OcclusionPower);
          o.Normal = UnpackNormal (tex2D (_BumpMap, IN.uv_BumpMap));
          half rimLight = _Emission - saturate(dot (normalize(IN.viewDir), o.Normal));
          o.Emission = _GlowColor.rgb * pow (rimLight, _GlowPower);
          o.Alpha = texture0.a + o.Emission.rgb;
      }
      ENDCG
     
    } 
  Fallback "Diffuse"
} 