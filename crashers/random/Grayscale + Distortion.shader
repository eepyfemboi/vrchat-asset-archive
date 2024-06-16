// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Zer0/Grayscale + Distortion"
{
	Properties
	{
		_Color("Color", Color) = (0,0,0,0)
		_NormalMap("Normal Map", 2D) = "bump" {}
		_Speed("Speed", Vector) = (0,0,0,0)
		_DistortionStrength("Distortion Strength", Range( -100 , 100)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Overlay+0" "ForceNoShadowCasting" = "True" "IsEmissive" = "true"  }
		Cull Off
		ZWrite On
		ZTest Always
		GrabPass{ }
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#pragma target 3.5
		#pragma surface surf Unlit keepalpha addshadow fullforwardshadows noambient novertexlights nolightmap  nodynlightmap nodirlightmap nofog nometa noforwardadd 
		struct Input
		{
			float4 screenPos;
			float2 uv_texcoord;
		};

		uniform sampler2D _GrabTexture;
		uniform float _DistortionStrength;
		uniform sampler2D _NormalMap;
		uniform float2 _Speed;
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
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( ase_screenPos );
			float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
			float2 uv_TexCoord112 = i.uv_texcoord * float2( 1,1 ) + float2( 0,0 );
			float2 panner111 = ( uv_TexCoord112 + _Time.y * _Speed);
			float4 screenColor86 = tex2D( _GrabTexture, ( ase_grabScreenPosNorm + float4( UnpackScaleNormal( tex2D( _NormalMap, panner111 ) ,_DistortionStrength ) , 0.0 ) ).xy );
			float grayscale108 = Luminance(screenColor86.rgb);
			o.Emission = ( grayscale108 * _Color ).rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15001
2113;69;1302;1000;1650.137;395.1097;2.167439;True;True
Node;AmplifyShaderEditor.RangedFloatNode;122;-869.26,218.0037;Float;False;Constant;_Float0;Float 0;4;0;Create;True;0;0;False;0;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;113;-646.3888,37.71843;Float;False;Property;_Speed;Speed;3;0;Create;True;0;0;False;0;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TextureCoordinatesNode;112;-700.5482,-88.38585;Float;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleTimeNode;117;-666.4081,192.3594;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;111;-437.5121,-6.060726;Float;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;123;-498.5125,286.5399;Float;False;Property;_DistortionStrength;Distortion Strength;4;0;Create;True;0;0;False;0;0;0.1;-100;100;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;110;-208.6967,143.5022;Float;True;Property;_NormalMap;Normal Map;2;0;Create;True;0;0;False;0;None;8178c5ce4aa3d5341804ce7d0ff18428;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GrabScreenPosition;109;-157.642,-55.33569;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;114;83.62415,50.64978;Float;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenColorNode;86;240.2892,49.17854;Float;False;Global;_GrabScreen0;Grab Screen 0;1;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;104;447.8106,125.7823;Float;False;Property;_Color;Color;1;0;Create;True;0;0;False;0;0,0,0,0;1,1,1,1;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TFHCGrayscale;108;444.6939,52.58963;Float;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;107;675.2105,91.5818;Float;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;10;969.3545,201.0171;Float;False;True;3;Float;ASEMaterialInspector;0;0;Unlit;Zer0/Grayscale + Distortion;False;False;False;False;True;True;True;True;True;True;True;True;False;False;False;True;False;False;False;Off;1;False;-1;7;False;-1;False;1;0;False;7;Custom;0.5;True;True;0;True;Opaque;;Overlay;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;Zero;Zero;0;Zero;Zero;OFF;OFF;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;0;0;False;0;0;0;False;-1;-1;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;117;0;122;0
WireConnection;111;0;112;0
WireConnection;111;2;113;0
WireConnection;111;1;117;0
WireConnection;110;1;111;0
WireConnection;110;5;123;0
WireConnection;114;0;109;0
WireConnection;114;1;110;0
WireConnection;86;0;114;0
WireConnection;108;0;86;0
WireConnection;107;0;108;0
WireConnection;107;1;104;0
WireConnection;10;2;107;0
ASEEND*/
//CHKSM=61086685A945A63DD84D670E1A951BB7479FD46C