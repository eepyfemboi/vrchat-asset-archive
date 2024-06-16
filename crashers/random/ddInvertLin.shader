Shader "ddShaders/ddInvertLin" {
//ddInvertLin shader: Daniel DeEntremont
//Only works correctly in Linear Color space
//Apply this shader to a mesh and watch all pixels behind the mesh become inverted!
    Properties
        {
            _Color ("Tint Color", Color) = (1,1,1,1)
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
			Blend OneMinusDstColor OneMinusSrcAlpha //invert blending, so long as FG color is 1,1,1,1
			BlendOp Add
			SetTexture [_Color] 
			{
				constantColor [_Color]
				combine constant
			}
		}
		
		Pass //this and following Passes are used for gamma correction
	        {
			Blend Zero DstColor  //multiplies (newly created) bg by itself to simulate a de-gamma in linear color space
			BlendOp Add
			SetTexture [_Color] 
			{constantColor (1,1,1,1)
			combine constant}
		}
		Pass
	        {
			Blend Zero DstColor  //multiplies (newly created) bg by itself to simulate a de-gamma in linear color space
			BlendOp Add
			SetTexture [_Color] 
			{constantColor (1,1,1,1)
			combine constant}
		}
		
		
         }//end subshader
}//end shader