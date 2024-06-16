// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Classyham/Screen/Glitch"
{
	Properties
	{
		_XPixels("X Pixels", Float) = 32
		_YPixels("Y Pixels", Float) = 18
		_PixelDensity("Pixel Density", Range( 0 , 1)) = 0
		_OffsetR("Offset R", Range( -0.1 , 0.1)) = 0
		_OffsetG("Offset G", Range( -0.1 , 0.1)) = 0
		_OffsetB("Offset B", Range( -0.1 , 0.1)) = 0
		_TimeScale("TimeScale", Float) = 0
		_SpeedX("SpeedX", Float) = 0
		_SpeedY("SpeedY", Float) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Overlay+2147479647" "IsEmissive" = "true"  }
		Cull Off
		ZTest Always
		GrabPass{ "_CHGlitchPass" }
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Unlit keepalpha noshadow 
		struct Input
		{
			float4 screenPos;
		};

		uniform sampler2D _CHGlitchPass;
		uniform float _TimeScale;
		uniform float _SpeedX;
		uniform float _SpeedY;
		uniform float _XPixels;
		uniform float _YPixels;
		uniform float _PixelDensity;
		uniform float _OffsetR;
		uniform float _OffsetG;
		uniform float _OffsetB;


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


		float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

		float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }

		float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }

		float snoise( float2 v )
		{
			const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
			float2 i = floor( v + dot( v, C.yy ) );
			float2 x0 = v - i + dot( i, C.xx );
			float2 i1;
			i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
			float4 x12 = x0.xyxy + C.xxzz;
			x12.xy -= i1;
			i = mod2D289( i );
			float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
			float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
			m = m * m;
			m = m * m;
			float3 x = 2.0 * frac( p * C.www ) - 1.0;
			float3 h = abs( x ) - 0.5;
			float3 ox = floor( x + 0.5 );
			float3 a0 = x - ox;
			m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
			float3 g;
			g.x = a0.x * x0.x + h.x * x0.y;
			g.yz = a0.yz * x12.xz + h.yz * x12.yw;
			return 130.0 * dot( m, g );
		}


		inline half4 LightingUnlit( SurfaceOutput s, half3 lightDir, half atten )
		{
			return half4 ( 0, 0, 0, s.Alpha );
		}

		void surf( Input i , inout SurfaceOutput o )
		{
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( ase_screenPos );
			float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
			float4 ScreenPos138 = ase_grabScreenPosNorm;
			float4 break141 = ScreenPos138;
			float TimeScale162 = _TimeScale;
			float mulTime147 = _Time.y * TimeScale162;
			float SpeedX165 = _SpeedX;
			float SpeedY166 = _SpeedY;
			float2 appendResult150 = (float2(SpeedX165 , SpeedY166));
			float2 appendResult18 = (float2(ase_grabScreenPosNorm.r , ase_grabScreenPosNorm.g));
			float XPixels21 = _XPixels;
			float YPixels22 = _YPixels;
			float pixelWidth16 =  1.0f / XPixels21;
			float pixelHeight16 = 1.0f / YPixels22;
			half2 pixelateduv16 = half2((int)(appendResult18.x / pixelWidth16) * pixelWidth16, (int)(appendResult18.y / pixelHeight16) * pixelHeight16);
			float2 panner146 = ( mulTime147 * appendResult150 + ( pixelateduv16 * float2( 10,10 ) ));
			float simplePerlin2D31 = snoise( panner146 );
			float temp_output_69_0 = (0.5 + (_PixelDensity - 0.0) * (0.82 - 0.5) / (1.0 - 0.0));
			float lerpResult67 = lerp( simplePerlin2D31 , 1.0 , temp_output_69_0);
			float Pixels71 = round( ( lerpResult67 * temp_output_69_0 ) );
			float temp_output_127_0 = ( 1.0 - ( Pixels71 * _OffsetR ) );
			float2 appendResult94 = (float2(( break141.x * temp_output_127_0 ) , ( break141.y * temp_output_127_0 )));
			float4 screenColor76 = tex2D( _CHGlitchPass, appendResult94 );
			float4 break143 = ScreenPos138;
			float temp_output_132_0 = ( 1.0 - ( Pixels71 * _OffsetG ) );
			float2 appendResult136 = (float2(( break143.x * temp_output_132_0 ) , ( break143.y * temp_output_132_0 )));
			float4 screenColor137 = tex2D( _CHGlitchPass, appendResult136 );
			float4 break145 = ScreenPos138;
			float temp_output_129_0 = ( 1.0 - ( Pixels71 * _OffsetB ) );
			float2 appendResult124 = (float2(( break145.x * temp_output_129_0 ) , ( break145.y * temp_output_129_0 )));
			float4 screenColor125 = tex2D( _CHGlitchPass, appendResult124 );
			float3 appendResult86 = (float3(screenColor76.r , screenColor137.g , screenColor125.b));
			float3 PixelSplit156 = appendResult86;
			o.Emission = PixelSplit156;
			o.Alpha = 1;
		}

		ENDCG
	}
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15405
-5;39;1906;1014;1443.585;1309.933;1.715375;True;False
Node;AmplifyShaderEditor.CommentaryNode;70;-1466.67,-818.6089;Float;False;490.5985;642.1006;Get Variables;12;138;73;22;21;19;20;151;162;149;148;165;166;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;72;-1467.763,-1304.789;Float;False;2919.164;436.0987;Pixels;21;71;58;64;67;31;69;60;41;16;18;24;23;1;146;147;150;153;154;163;167;168;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GrabScreenPosition;1;-1417.763,-1253.665;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;20;-1416.67,-693.2089;Float;False;Property;_YPixels;Y Pixels;2;0;Create;True;0;0;False;0;18;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;19;-1416.67,-768.6089;Float;False;Property;_XPixels;X Pixels;1;0;Create;True;0;0;False;0;32;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;23;-1414.555,-1074.083;Float;False;21;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;18;-1161.657,-1252.184;Float;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;22;-1258.071,-691.9082;Float;False;YPixels;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21;-1259.372,-768.6082;Float;False;XPixels;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;148;-1419.198,-510.1644;Float;False;Property;_SpeedX;SpeedX;8;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;24;-1414.556,-998.6828;Float;False;22;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;151;-1418.939,-595.3641;Float;False;Property;_TimeScale;TimeScale;7;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;149;-1422.198,-430.1644;Float;False;Property;_SpeedY;SpeedY;9;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;166;-1271.703,-432.874;Float;False;SpeedY;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;165;-1268.703,-509.874;Float;False;SpeedX;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;168;-732.2274,-1053.283;Float;False;166;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;162;-1266.382,-598.0633;Float;False;TimeScale;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;163;-776.7063,-982.9725;Float;False;162;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;167;-731.2274,-1124.283;Float;False;165;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCPixelate;16;-968.9878,-1252.367;Float;True;3;0;FLOAT2;0,0;False;1;FLOAT;16;False;2;FLOAT;9;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;41;-710.5342,-1254.789;Float;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;10,10;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;60;-335.8058,-1031.925;Float;False;Property;_PixelDensity;Pixel Density;3;0;Create;True;0;0;False;0;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;150;-557.7231,-1111.574;Float;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode;147;-556.0624,-986.5732;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;146;-370.2053,-1255.59;Float;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TFHCRemapNode;69;-39.40228,-1104.724;Float;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0.5;False;4;FLOAT;0.82;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;153;138.592,-1050.937;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;31;-89.52858,-1256.986;Float;False;Simplex2D;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;154;350.592,-1058.937;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;67;139.9972,-1259.423;Float;True;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;64;420.4953,-1251.124;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RoundOpNode;58;571.3011,-1251.292;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;155;-884.3049,-820.0281;Float;False;1675.215;1188.383;Pixel RGB Split;32;86;125;76;137;94;136;124;135;93;123;134;90;122;132;143;129;127;145;141;131;139;91;120;142;144;118;126;130;74;92;119;156;;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;74;-758.674,-568.4245;Float;False;71;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;119;-731.1881,148.6388;Float;False;71;0;1;FLOAT;0
Node;AmplifyShaderEditor.GrabScreenPosition;73;-1433.499,-346.8404;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;126;-822.412,267.864;Float;False;Property;_OffsetB;Offset B;6;0;Create;True;0;0;False;0;0;0;-0.1;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;71;735.7999,-1255.182;Float;False;Pixels;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;130;-760.066,-240.2314;Float;False;71;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;118;-834.3049,-148.9452;Float;False;Property;_OffsetG;Offset G;5;0;Create;True;0;0;False;0;0;0;-0.1;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;92;-826.9049,-486.8267;Float;False;Property;_OffsetR;Offset R;4;0;Create;True;0;0;False;0;0;0;-0.1;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;91;-539.9044,-542.8269;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;139;-722.9078,-770.028;Float;False;138;0;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;144;-721.9078,-33.02815;Float;False;138;0;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;142;-710.9078,-402.028;Float;False;138;0;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;131;-541.2964,-214.6338;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;120;-535.4124,191.8643;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;138;-1205.883,-337.1202;Float;False;ScreenPos;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.BreakToComponentsNode;143;-508.9085,-394.028;Float;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.OneMinusNode;129;-383.0875,200.046;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;132;-375.4722,-207.7608;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;145;-519.9086,-25.02815;Float;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.BreakToComponentsNode;141;-520.9086,-762.028;Float;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.OneMinusNode;127;-374.0801,-535.9539;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;90;-185.6988,-765.2977;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;93;-186.6988,-664.2978;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;122;-201.8331,-29.31746;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;134;-188.0911,-336.1046;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;123;-202.8331,71.68257;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;135;-187.0911,-437.1045;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;94;-44.69858,-745.2977;Float;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;124;-60.83285,-9.317472;Float;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;136;-46.09092,-417.1046;Float;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScreenColorNode;76;100.0221,-754.2162;Float;False;Global;_CHGlitchPass;CHGlitchPass;3;0;Create;True;0;0;False;0;Object;-1;True;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenColorNode;137;80.55364,-427.1484;Float;False;Global;_GrabScreen1;Grab Screen 1;3;0;Create;True;0;0;False;0;Instance;76;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenColorNode;125;65.8117,-19.3613;Float;False;Global;_GrabScreen2;Grab Screen 2;3;0;Create;True;0;0;False;0;Instance;76;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;86;396.9455,-668.3416;Float;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;230;886.4411,-831.7808;Float;False;595.7064;482;Output;2;184;79;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;156;537.1952,-663.8174;Float;False;PixelSplit;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;184;936.4411,-737.7366;Float;False;156;0;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;79;1219.148,-781.7808;Float;False;True;2;Float;ASEMaterialInspector;0;0;Unlit;Classyham/Screen/Glitch;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Off;0;False;-1;7;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.5;True;False;2147479647;True;Transparent;;Overlay;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;False;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;18;0;1;1
WireConnection;18;1;1;2
WireConnection;22;0;20;0
WireConnection;21;0;19;0
WireConnection;166;0;149;0
WireConnection;165;0;148;0
WireConnection;162;0;151;0
WireConnection;16;0;18;0
WireConnection;16;1;23;0
WireConnection;16;2;24;0
WireConnection;41;0;16;0
WireConnection;150;0;167;0
WireConnection;150;1;168;0
WireConnection;147;0;163;0
WireConnection;146;0;41;0
WireConnection;146;2;150;0
WireConnection;146;1;147;0
WireConnection;69;0;60;0
WireConnection;153;0;69;0
WireConnection;31;0;146;0
WireConnection;154;0;153;0
WireConnection;67;0;31;0
WireConnection;67;2;69;0
WireConnection;64;0;67;0
WireConnection;64;1;154;0
WireConnection;58;0;64;0
WireConnection;71;0;58;0
WireConnection;91;0;74;0
WireConnection;91;1;92;0
WireConnection;131;0;130;0
WireConnection;131;1;118;0
WireConnection;120;0;119;0
WireConnection;120;1;126;0
WireConnection;138;0;73;0
WireConnection;143;0;142;0
WireConnection;129;0;120;0
WireConnection;132;0;131;0
WireConnection;145;0;144;0
WireConnection;141;0;139;0
WireConnection;127;0;91;0
WireConnection;90;0;141;0
WireConnection;90;1;127;0
WireConnection;93;0;141;1
WireConnection;93;1;127;0
WireConnection;122;0;145;0
WireConnection;122;1;129;0
WireConnection;134;0;143;1
WireConnection;134;1;132;0
WireConnection;123;0;145;1
WireConnection;123;1;129;0
WireConnection;135;0;143;0
WireConnection;135;1;132;0
WireConnection;94;0;90;0
WireConnection;94;1;93;0
WireConnection;124;0;122;0
WireConnection;124;1;123;0
WireConnection;136;0;135;0
WireConnection;136;1;134;0
WireConnection;76;0;94;0
WireConnection;137;0;136;0
WireConnection;125;0;124;0
WireConnection;86;0;76;1
WireConnection;86;1;137;2
WireConnection;86;2;125;3
WireConnection;156;0;86;0
WireConnection;79;2;184;0
ASEEND*/
//CHKSM=1272285F3EFE846335896F56B54575281F8B89E9