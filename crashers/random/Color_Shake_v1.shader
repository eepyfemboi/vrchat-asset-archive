// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "NEK0/Screen/Color Shake v1"
{
	Properties
	{
		_Shake("Shake", Range( 0 , 100)) = 0.001
		_Light("Light", Range( -3 , 3)) = 0
		_Color("Color ", Color) = (0.5310345,0,1,0)
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Overlay+0" "IsEmissive" = "true"  }
		Cull Front
		ZTest Always
		GrabPass{ }
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Unlit keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float4 screenPos;
		};

		uniform sampler2D _GrabTexture;
		uniform float _Shake;
		uniform float _Light;
		uniform float4 _Color;


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


		inline fixed4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return fixed4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float mulTime32 = _Time.y * _Shake;
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( ase_screenPos );
			float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
			float4 screenColor10 = tex2Dproj( _GrabTexture, UNITY_PROJ_COORD( ( ( sin( mulTime32 ) / 100.0 ) + ase_grabScreenPosNorm ) ) );
			o.Emission = ( screenColor10 + ( screenColor10 + ( _Light + _Color ) ) ).rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15301
-244;167;1906;964;1246.267;329.9781;1;True;True
Node;AmplifyShaderEditor.RangedFloatNode;38;-1581.258,-23.66339;Float;True;Property;_Shake;Shake;1;0;Create;True;0;0;False;0;0.001;0;0;100;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;32;-1238.088,28.30293;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;33;-978.4749,76.94644;Float;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GrabScreenPosition;13;-806.8502,378.192;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleDivideOpNode;30;-798.0601,95.23053;Float;True;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;27;-583.1432,218.9481;Float;False;2;2;0;FLOAT;0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ColorNode;58;-1041.552,517.8649;Float;False;Property;_Color;Color ;3;0;Create;True;0;0;False;0;0.5310345,0,1,0;0.5310344,0,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;59;-887.7769,749.7184;Float;True;Property;_Light;Light;2;0;Create;True;0;0;False;0;0;0;-3;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenColorNode;10;-441.2032,30.90791;Float;False;Global;_GrabScreen0;Grab Screen 0;0;0;Create;True;0;0;False;0;Object;-1;False;True;1;0;FLOAT4;0,0,0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;60;-554.7697,741.0054;Float;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;48;-221.3777,733.7689;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;54;-162.2177,46.7066;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;5;-22,1;Float;False;True;2;Float;ASEMaterialInspector;0;0;Unlit;NEK0/Color Shake;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Front;0;False;-1;7;False;-1;False;0;0;False;0;Custom;0.5;True;True;0;True;Opaque;;Overlay;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;-1;False;-1;-1;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;0;0;False;0;0;0;False;-1;-1;0;False;-1;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;32;0;38;0
WireConnection;33;0;32;0
WireConnection;30;0;33;0
WireConnection;27;0;30;0
WireConnection;27;1;13;0
WireConnection;10;0;27;0
WireConnection;60;0;59;0
WireConnection;60;1;58;0
WireConnection;48;0;10;0
WireConnection;48;1;60;0
WireConnection;54;0;10;0
WireConnection;54;1;48;0
WireConnection;5;2;54;0
ASEEND*/
//CHKSM=FB5E00002FA8B1FBDEC3A07F44700B799205A26E