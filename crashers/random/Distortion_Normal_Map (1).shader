// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Zer0/Distortion (Normal Map)"
{
	Properties
	{
		_NormalMap("Normal Map", 2D) = "bump" {}
		_DistortionStrength("Distortion Strength", Range( -100 , 100)) = 0
		_Xoffst("X offst", Float) = 0
		_yoffset("y offset", Float) = 0
		[Toggle]_EnableDebug("Enable Debug", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Pass
		{
			ColorMask 0
			ZTest Greater
			ZWrite On
		}

		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Off
		ZWrite On
		ZTest Always
		Offset  10 , 1
		Blend SrcAlpha OneMinusSrcAlpha
		GrabPass{ }
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Unlit keepalpha noshadow noambient novertexlights nolightmap  nodynlightmap nodirlightmap nofog nometa noforwardadd 
		struct Input
		{
			float4 screenPos;
			float2 uv_texcoord;
		};

		uniform float _EnableDebug;
		uniform sampler2D _GrabTexture;
		uniform float _DistortionStrength;
		uniform sampler2D _NormalMap;
		uniform float _Xoffst;
		uniform float _yoffset;


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
			float4 appendResult132 = (float4(_Xoffst , _yoffset , 0 , 0));
			float2 uv_TexCoord112 = i.uv_texcoord * float2( 1,1 ) + float2( 0,0 );
			float2 panner111 = ( uv_TexCoord112 + _Time.y * appendResult132.xy);
			float4 temp_output_114_0 = ( ase_grabScreenPosNorm + float4( UnpackScaleNormal( tex2D( _NormalMap, panner111 ) ,_DistortionStrength ) , 0.0 ) );
			float4 screenColor86 = tex2D( _GrabTexture, temp_output_114_0.xy );
			o.Emission = lerp(screenColor86,temp_output_114_0,_EnableDebug).xyz;
			o.Alpha = 1;
		}

		ENDCG
	}
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15001
7;29;1906;1004;1112.002;226.0542;1;True;True
Node;AmplifyShaderEditor.RangedFloatNode;122;-869.26,218.0037;Float;False;Constant;_Float0;Float 0;4;0;Create;True;0;0;False;0;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;134;-817.0517,81.55481;Float;False;Property;_yoffset;y offset;4;0;Create;True;0;0;False;0;0;0.27;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;133;-837.8525,9.554827;Float;False;Property;_Xoffst;X offst;3;0;Create;True;0;0;False;0;0;0.09;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;112;-700.5482,-88.38585;Float;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleTimeNode;117;-666.4081,192.3594;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;132;-623.4525,35.15484;Float;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;123;-524.1124,300.9399;Float;False;Property;_DistortionStrength;Distortion Strength;2;0;Create;True;0;0;False;0;0;1;-100;100;0;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;111;-437.5121,-6.060726;Float;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;110;-200.6967,167.5023;Float;True;Property;_NormalMap;Normal Map;0;0;Create;True;0;0;False;0;None;f7f322ea849ea7d41adb6fa8a7d8a3e6;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GrabScreenPosition;109;-157.642,-55.33569;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;114;83.62415,50.64978;Float;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenColorNode;86;289.8894,55.57853;Float;False;Global;_GrabScreen0;Grab Screen 0;1;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;131;606.4496,183.0997;Float;False;Property;_EnableDebug;Enable Debug;5;0;Create;True;0;0;False;0;0;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;129;969.3545,201.0171;Float;False;True;2;Float;ASEMaterialInspector;0;0;Unlit;Zer0/Distortion (Normal Map);False;False;False;False;True;True;True;True;True;True;True;True;False;False;True;False;False;False;False;Off;1;False;-1;7;False;-1;True;10;1;True;2;Custom;0.5;True;False;0;True;Transparent;;Transparent;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;False;2;SrcAlpha;OneMinusSrcAlpha;0;Zero;Zero;OFF;OFF;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;1;-1;-1;-1;0;0;0;False;0;0;0;False;-1;-1;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;117;0;122;0
WireConnection;132;0;133;0
WireConnection;132;1;134;0
WireConnection;111;0;112;0
WireConnection;111;2;132;0
WireConnection;111;1;117;0
WireConnection;110;1;111;0
WireConnection;110;5;123;0
WireConnection;114;0;109;0
WireConnection;114;1;110;0
WireConnection;86;0;114;0
WireConnection;131;0;86;0
WireConnection;131;1;114;0
WireConnection;129;2;131;0
ASEEND*/
//CHKSM=ED0599FA49CAE593B894B3A80A089F03D1E126DE