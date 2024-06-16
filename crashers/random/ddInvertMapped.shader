//ddInvertMapped shader: Daniel DeEntremont
//Apply this shader to a mesh and watch all pixels behind the mesh become inverted!
//Now has a texture mask input. White will invert colors behind while black remains the same.
Shader "ddShaders/ddInvertMapped" {
    Properties
        {
            _Color ("Tint Color", Color) = (1,1,1,1)
            _MainTex("Main Texture", 2D) = "white"{}
        }
   
   
   
        SubShader
        {
            Tags { "Queue"="Transparent" }
     
            Pass
            {
               ZWrite On
               ColorMask 0
            }
       
       
       
            Pass
            {
                Blend OneMinusDstColor OneMinusSrcColor //invert blending, so long as FG color is 1,1,1,1
                BlendOp Add
                SetTexture [_MainTex]
                {
                    constantColor [_Color]
                    combine texture * constant
                }
            }
       
         }//end subshader
}//end shader