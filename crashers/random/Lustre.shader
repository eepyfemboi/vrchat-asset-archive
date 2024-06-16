
Shader "ShaderMan/Lustre"
	{

	Properties{
	iChannel1 ("iChannel1", 2D) = "" {}
	iChannel0 ("iChannel0", 2D) = "" {}
	}

	SubShader {
      
        GrabPass{ "iChannel0"}
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }

            cull front
        

	CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"


	//Variables
sampler2D iChannel1;
sampler2D iChannel0;

	



 struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {

    fixed2 px = 2.5 / fixed2(640.0,360.0);
	fixed2 uv = (i.projPos.xy / i.projPos.w);
    fixed4 tx = tex2D(iChannel1,uv);
    float dist = distance(tx,tex2D(iChannel1,uv+px));
    px.y *= -1.0;
    dist += distance(tx,tex2D(iChannel1,uv+px));
    px.x *= -1.0;
    dist += distance(tx,tex2D(iChannel1,uv+px));
    px.y *= -1.0;
    dist += distance(tx,tex2D(iChannel1,uv+px));
    uv =mul(uv, fixed2x2(0.999,0.001,-0.001,0.999));
	return tex2D(iChannel0,uv*0.995+0.0025)*fixed4(0.93,0.91,0.0,0.0)+
        fixed4(smoothstep(0.05,1.3,dist),smoothstep(0.1,2.8,dist),0.0,1.0)*.245;
}
	ENDCG
	}
  }
}

