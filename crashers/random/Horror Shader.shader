// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Zer0/horror-distort"
{
	Properties
	{
		_offset1x("offset 1 x", Float) = 0
		_offset1y("offset 1 y", Float) = 0
		_offset2x("offset 2 x", Float) = 0
		_offset2y("offset 2 y", Float) = 0
		_offset3x("offset 3 x", Float) = 0
		_offset3y("offset 3 y", Float) = 0
		_intensity("intensity", Float) = 0
		_Fade("Fade", Float) = 0
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
		#pragma target 3.0
		#pragma surface surf Unlit keepalpha noshadow noambient novertexlights nolightmap  nodynlightmap nodirlightmap nofog nometa noforwardadd 
		struct Input
		{
			float4 screenPos;
		};

		uniform sampler2D _GrabTexture;
		uniform float _offset1x;
		uniform float _offset1y;
		uniform float _offset2x;
		uniform float _offset2y;
		uniform float _offset3y;
		uniform float _offset3x;
		uniform float _intensity;
		uniform float _Fade;


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
			float4 appendResult192 = (float4(_offset1x , _offset1y , 0 , 0));
			float4 screenColor86 = tex2D( _GrabTexture, ( ase_grabScreenPosNorm + appendResult192 ).xy );
			float4 appendResult203 = (float4(_offset2x , _offset2y , 0 , 0));
			float4 screenColor175 = tex2D( _GrabTexture, ( ase_grabScreenPosNorm + appendResult203 ).xy );
			float4 appendResult197 = (float4(_offset3y , _offset3x , 0 , 0));
			float4 screenColor164 = tex2D( _GrabTexture, ( ase_grabScreenPosNorm + appendResult197 ).xy );
			float4 appendResult161 = (float4(screenColor86.r , screenColor175.r , screenColor164.rg));
			float grayscale209 = (appendResult161.xyz.r + appendResult161.xyz.g + appendResult161.xyz.b) / 3;
			float4 temp_cast_7 = (pow( grayscale209 , _intensity )).xxxx;
			float4 screenColor210 = tex2Dproj( _GrabTexture, UNITY_PROJ_COORD( ase_grabScreenPos ) );
			float4 lerpResult211 = lerp( temp_cast_7 , screenColor210 , _Fade);
			o.Emission = lerpResult211.rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15001
7;29;1906;1004;441.3243;206.6888;1.360199;True;True
Node;AmplifyShaderEditor.RangedFloatNode;196;-578.0846,723.6261;Float;False;Property;_offset3x;offset 3 x;4;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;195;-579.4454,821.5596;Float;False;Property;_offset3y;offset 3 y;5;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;202;-606.6489,461.1078;Float;False;Property;_offset2y;offset 2 y;3;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;201;-591.687,350.9313;Float;False;Property;_offset2x;offset 2 x;2;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;194;-656.9766,46.24677;Float;False;Property;_offset1y;offset 1 y;1;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;193;-595.7677,-58.48856;Float;False;Property;_offset1x;offset 1 x;0;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;192;-242.225,-50.38061;Float;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GrabScreenPosition;109;-329.8127,-217.8844;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GrabScreenPosition;173;-351.0928,165.7155;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;197;-272.0311,706.6262;Float;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;203;-259.0298,336.1277;Float;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GrabScreenPosition;162;-351.5538,537.9246;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;114;-68.7735,-122.7889;Float;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;163;-88.91451,629.8187;Float;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;174;-75.65381,283.211;Float;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenColorNode;164;313.1642,466.6295;Float;False;Global;_GrabScreen1;Grab Screen 1;1;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenColorNode;175;301.0091,199.1024;Float;False;Global;_GrabScreen2;Grab Screen 2;1;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenColorNode;86;251.9895,-174.8383;Float;False;Global;_GrabScreen0;Grab Screen 0;1;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;161;706.3094,191.219;Float;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;207;986.1459,360.4527;Float;False;Property;_intensity;intensity;6;0;Create;True;0;0;False;0;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;209;941.5552,182.5636;Float;False;2;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;212;1024.97,711.4455;Float;False;Property;_Fade;Fade;8;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;206;1195.236,219.7268;Float;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenColorNode;210;935.1973,507.4153;Float;False;Global;_GrabScreen3;Grab Screen 3;1;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;211;1295.65,391.7987;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;129;1468.552,191.417;Float;False;True;2;Float;ASEMaterialInspector;0;0;Unlit;Zer0/horror-distort;False;False;False;False;True;True;True;True;True;True;True;True;False;False;True;False;False;False;False;Off;1;False;-1;7;False;-1;True;10;1;True;2;Custom;0.5;True;False;0;True;Transparent;;Transparent;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;False;2;SrcAlpha;OneMinusSrcAlpha;0;Zero;Zero;OFF;OFF;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;7;-1;-1;-1;0;0;0;False;0;0;0;False;-1;-1;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;192;0;193;0
WireConnection;192;1;194;0
WireConnection;197;0;195;0
WireConnection;197;1;196;0
WireConnection;203;0;201;0
WireConnection;203;1;202;0
WireConnection;114;0;109;0
WireConnection;114;1;192;0
WireConnection;163;0;162;0
WireConnection;163;1;197;0
WireConnection;174;0;173;0
WireConnection;174;1;203;0
WireConnection;164;0;163;0
WireConnection;175;0;174;0
WireConnection;86;0;114;0
WireConnection;161;0;86;0
WireConnection;161;1;175;0
WireConnection;161;2;164;0
WireConnection;209;0;161;0
WireConnection;206;0;209;0
WireConnection;206;1;207;0
WireConnection;211;0;206;0
WireConnection;211;1;210;0
WireConnection;211;2;212;0
WireConnection;129;2;211;0
ASEEND*/
//CHKSM=33921DEA05D371C9FDC2B3401DDA42C6567CEF3C