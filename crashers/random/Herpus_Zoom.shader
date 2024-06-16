Shader "Herpu/Zoom" {



//milku is a dumb nigger lol
//so is anyone else who dl'd this



	Properties {
		_Color ("Color", Color) =(1.0,1.0,1.0,1.0)
	}
	SubShader {
		Pass {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			uniform float4 _Color;
			struct vertexInput{
				float4 vertex : POSITION;
			};
			struct vertexOutput{
				float4 pos : SV_POSITION;
			};
			vertexOutput vert(vertexInput v){
				vertexOutput o;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}
			float4 frag(vertexOutput i) : COLOR
			{
				return _Color;
			}
			ENDCG
		}
	}
}