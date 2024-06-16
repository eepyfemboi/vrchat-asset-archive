// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Classyham/OverlayTS"
{
	Properties
	{
		_TextureSample0("Texture Sample 0", 2D) = "white" {}
		_Columns("Columns", Float) = 10
		_Rows("Rows", Float) = 17
		_FPS("FPS", Float) = 30
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Overlay+0" "IsEmissive" = "true"  }
		Cull Off
		ZTest Always
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows noambient novertexlights nolightmap  nodynlightmap nodirlightmap nofog nometa noforwardadd 
		struct Input
		{
			float4 screenPos;
		};

		uniform sampler2D _TextureSample0;
		uniform float _Columns;
		uniform float _Rows;
		uniform float _FPS;


		inline float4 ASE_ComputeGrabScreenPos( float4 pos )
		{
			#if UNITY_UV_STARTS_AT_TOP
			float scale = -1.0;
			#else
			float scale = 1.0;
			#endif
			float4 o = pos;
			o.y = pos.w * 0.5f;
			o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
			return o;
		}


		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( ase_screenPos );
			float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
			float mulTime7 = _Time.y * 1;
			// *** BEGIN Flipbook UV Animation vars ***
			// Total tiles of Flipbook Texture
			float fbtotaltiles4 = _Columns * _Rows;
			// Offsets for cols and rows of Flipbook Texture
			float fbcolsoffset4 = 1.0f / _Columns;
			float fbrowsoffset4 = 1.0f / _Rows;
			// Speed of animation
			float fbspeed4 = mulTime7 * _FPS;
			// UV Tiling (col and row offset)
			float2 fbtiling4 = float2(fbcolsoffset4, fbrowsoffset4);
			// UV Offset - calculate current tile linear index, and convert it to (X * coloffset, Y * rowoffset)
			// Calculate current tile linear index
			float fbcurrenttileindex4 = round( fmod( fbspeed4 + 0, fbtotaltiles4) );
			fbcurrenttileindex4 += ( fbcurrenttileindex4 < 0) ? fbtotaltiles4 : 0;
			// Obtain Offset X coordinate from current tile linear index
			float fblinearindextox4 = round ( fmod ( fbcurrenttileindex4, _Columns ) );
			// Multiply Offset X by coloffset
			float fboffsetx4 = fblinearindextox4 * fbcolsoffset4;
			// Obtain Offset Y coordinate from current tile linear index
			float fblinearindextoy4 = round( fmod( ( fbcurrenttileindex4 - fblinearindextox4 ) / _Columns, _Rows ) );
			// Reverse Y to get tiles from Top to Bottom
			fblinearindextoy4 = (int)(_Rows-1) - fblinearindextoy4;
			// Multiply Offset Y by rowoffset
			float fboffsety4 = fblinearindextoy4 * fbrowsoffset4;
			// UV Offset
			float2 fboffset4 = float2(fboffsetx4, fboffsety4);
			// Flipbook UV
			half2 fbuv4 = ase_grabScreenPosNorm.xy * fbtiling4 + fboffset4;
			// *** END Flipbook UV Animation vars ***
			o.Emission = tex2D( _TextureSample0, fbuv4 ).rgb;
			float temp_output_20_0 = 0.0;
			o.Metallic = temp_output_20_0;
			o.Smoothness = temp_output_20_0;
			o.Alpha = 1;
			float4((unity_StereoWorldSpaceCameraPos[0] + unity_StereoWorldSpaceCameraPos[1])*0.5, 1);
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15001
2101;203;1906;1014;1759;602;1;True;True
Node;AmplifyShaderEditor.RangedFloatNode;6;-1151,53;Float;False;Property;_Rows;Rows;3;0;Create;True;0;0;False;0;17;17;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;7;-1145,248;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;5;-1145,-26;Float;False;Property;_Columns;Columns;2;0;Create;True;0;0;False;0;10;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GrabScreenPosition;22;-1259,-208;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;8;-1158,138;Float;False;Property;_FPS;FPS;4;0;Create;True;0;0;False;0;30;30;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCFlipBookUVAnimation;4;-879,-55;Float;False;0;0;6;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;20;-231,251;Float;False;Constant;_Float3;Float 3;2;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;2;-579,43;Float;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;False;0;None;404a2210706b8be42b487fa620bae083;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;32,0;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;Classyham/OverlayTS;False;False;False;False;True;True;True;True;True;True;True;True;False;False;False;False;False;False;False;Off;0;False;-1;7;False;-1;False;0;0;False;0;Custom;0.5;True;True;0;True;Opaque;;Overlay;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;Zero;Zero;0;Zero;Zero;OFF;OFF;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Absolute;0;;0;-1;-1;-1;0;0;0;False;0;0;0;False;-1;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;4;0;22;0
WireConnection;4;1;5;0
WireConnection;4;2;6;0
WireConnection;4;3;8;0
WireConnection;4;5;7;0
WireConnection;2;1;4;0
WireConnection;0;2;2;0
WireConnection;0;3;20;0
WireConnection;0;4;20;0
ASEEND*/
//CHKSM=BD1D0FE9AE9FB76836BE87CF0089B793FBAB3CC2