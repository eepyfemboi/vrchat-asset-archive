 
Shader "Odds/FlatLit Silhouette"

//Shader made by Odds
//Discord: odds#4147
//If you got this from someone other than me or the DeSync server please contact me.

{

    Properties {

        _MainTex ("Texture", 2D) = "white" {}
        _OccludedColor("Silhouette Color", Color) = (1,1,1,1)
		_Cutoff("Alpha cutoff", Range(0,1)) = 0

		// Blending state
		[HideInInspector] _Mode ("__mode", Float) = 0.0
		[HideInInspector] _OutlineMode("__outline_mode", Float) = 0.0
		[HideInInspector] _SrcBlend ("__src", Float) = 1.0
		[HideInInspector] _DstBlend ("__dst", Float) = 0.0
		[HideInInspector] _ZWrite ("__zw", Float) = 1.0

    }

    SubShader {

 

        Pass

        {

            Tags { "Queue"="Geometry+7530" }

            ZTest Greater

            ZWrite Off
			
			Cull Off

 

            CGPROGRAM

            #pragma vertex vert          

            #pragma fragment frag

            #pragma fragmentoption ARB_precision_hint_fastest

 

            half4 _OccludedColor;

 

            float4 vert(float4 pos : POSITION) : SV_POSITION

            {

                float4 viewPos = UnityObjectToClipPos(pos);

                return viewPos;

            }

 

                half4 frag(float4 pos : SV_POSITION) : COLOR

            {

                return _OccludedColor;

            }

 

            ENDCG

        }



        Pass

        {

 

        Tags { "RenderType"="Opaque" "Queue"="Geometry+7530"}

        LOD 200

        ZWrite On

        ZTest LEqual
		
		Cull Off

     

        CGPROGRAM

            #pragma vertex vert

            #pragma fragment frag




            struct appdata

            {

                float4 vertex : POSITION;

                float2 uv : TEXCOORD0;

            };




            struct v2f

            {

                float2 uv : TEXCOORD0; // texture coordinate

                float4 vertex : SV_POSITION; // clip space position

            };



            // vertex shader

            v2f vert (appdata v)

            {

                v2f o;

                o.vertex = UnityObjectToClipPos(v.vertex);

                o.uv = v.uv;

                return o;

            }

          


            sampler2D _MainTex;





            fixed4 frag (v2f i) : SV_Target

            {


                fixed4 col = tex2D(_MainTex, i.uv);

                return col;

            }

            ENDCG

        }

    }

    FallBack "Diffuse"

}