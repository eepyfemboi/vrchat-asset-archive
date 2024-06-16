// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "NEK0/Screen/Cancer/Cancer v4"
{
	Properties
	{
		_WaveHigh("Wave High", Range( 0 , 0.5)) = 0
		_WaveSpeed("Wave Speed", Range( 0 , 50)) = 0
		_Background("Background ", Range( 0 , 50)) = 0
		_BkLight("Bk Light", Range( -3 , 3)) = 0
		_BKcolor("BK color", Range( -1 , 1)) = 0
		_BkColor2("Bk Color 2", Color) = (1,1,1,0)
		_Fadecolor(" Fade color ", Range( -1 , 1)) = 0
		_StartRainbow("Start Rainbow", Range( -1 , 1)) = 0
		_RainbowMove("Rainbow Move", Range( -1 , 1)) = 0
		_Fadespeed("Fade speed", Range( -1 , 1)) = 0
		_FadeLight2("Fade Light 2", Range( 0 , 5)) = 0
		_RgbBlue("Rgb Blue ", Range( 0 , 5)) = 5
		_RGBRed("RGB Red", Range( 0 , 5)) = 5
		_RgbGreen("Rgb Green", Range( 0 , 5)) = 5
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Overlay"  "Queue" = "Overlay+0" "IsEmissive" = "true"  }
		Cull Off
		ZWrite On
		ZTest Always
		Offset  5 , 20
		GrabPass{ }
		GrabPass{ "_GrabDaddy" }
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma multi_compile_instancing
		#pragma surface surf Unlit keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float4 screenPos;
		};

		uniform float _BKcolor;
		uniform half4 _BkColor2;
		uniform sampler2D _GrabTexture;
		uniform sampler2D _GrabDaddy;
		uniform float _WaveSpeed;
		uniform float _WaveHigh;
		uniform float _Fadespeed;
		uniform float _FadeLight2;
		uniform float _Fadecolor;
		uniform float _RgbGreen;
		uniform float _RGBRed;
		uniform float _RgbBlue;
		uniform float _StartRainbow;
		uniform float _RainbowMove;
		uniform float _Background;

		UNITY_INSTANCING_CBUFFER_START(NEK0ScreenCancerCancerv3)
			UNITY_DEFINE_INSTANCED_PROP(float, _BkLight)
		UNITY_INSTANCING_CBUFFER_END


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


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		float4 CalculateContrast( float contrastValue, float4 colorTarget )
		{
			float t = 0.5 * ( 1.0 - contrastValue );
			return mul( float4x4( contrastValue,0,0,t, 0,contrastValue,0,t, 0,0,contrastValue,t, 0,0,0,1 ), colorTarget );
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
			float4 lerpResult26 = lerp( ase_grabScreenPosNorm , ( _BKcolor + _BkColor2 ) , 1.0);
			float4 screenColor38 = tex2D( _GrabTexture, ase_grabScreenPosNorm.xy );
			float _BkLight_Instance = UNITY_ACCESS_INSTANCED_PROP(_BkLight);
			float4 temp_cast_2 = (_BkLight_Instance).xxxx;
			float3 break3_g7 = ase_grabScreenPosNorm.xyz;
			float mulTime4_g7 = _Time.y * 2.0;
			float3 appendResult11_g7 = (float3(break3_g7.x , ( break3_g7.y + ( sin( ( ( break3_g7.x * _WaveSpeed ) + mulTime4_g7 ) ) * _WaveHigh ) ) , break3_g7.z));
			float4 screenColor1 = tex2D( _GrabDaddy, appendResult11_g7.xy );
			float mulTime43 = _Time.y * _Fadespeed;
			float3 hsvTorgb37 = HSVToRGB( float3(mulTime43,_FadeLight2,_Fadecolor) );
			float4 screenColor32 = tex2D( _GrabTexture, ase_grabScreenPosNorm.xy );
			float4 blendOpSrc36 = float4( hsvTorgb37 , 0.0 );
			float4 blendOpDest36 = screenColor32;
			float mulTime47 = _Time.y * _RgbGreen;
			float4 screenColor50 = tex2D( _GrabTexture, ( ase_grabScreenPosNorm + ( sin( mulTime47 ) / 50.0 ) ).xy );
			float4 lerpResult45 = lerp( screenColor50 , float4( 0,0,0,0 ) , 0.0);
			float mulTime53 = _Time.y * _RGBRed;
			float4 screenColor55 = tex2D( _GrabTexture, ( ase_grabScreenPosNorm + ( sin( mulTime53 ) / 50.0 ) ).xy );
			float4 lerpResult56 = lerp( screenColor55 , float4( 0,0,0,0 ) , 0.0);
			float mulTime61 = _Time.y * _RgbBlue;
			float4 screenColor63 = tex2D( _GrabTexture, ( ase_grabScreenPosNorm + ( sin( mulTime61 ) / 50.0 ) ).xy );
			float lerpResult64 = lerp( screenColor63.b , 0.0 , 0.0);
			float4 appendResult44 = (float4(lerpResult45.r , lerpResult56.r , lerpResult64 , 0.0));
			float4 screenColor140 = tex2D( _GrabTexture, ase_grabScreenPosNorm.xy );
			float3 hsvTorgb3_g1 = HSVToRGB( float3(degrees( screenColor140 ).r,1.0,1.0) );
			float3 break3_g6 = hsvTorgb3_g1;
			float mulTime4_g6 = _Time.y * 2.0;
			float3 appendResult11_g6 = (float3(break3_g6.x , ( break3_g6.y + ( sin( ( ( break3_g6.x * 0.0 ) + mulTime4_g6 ) ) * _RainbowMove ) ) , break3_g6.z));
			float4 screenColor176 = tex2D( _GrabTexture, ase_grabScreenPosNorm.xy );
			float3 desaturateInitialColor174 = screenColor176.rgb;
			float desaturateDot174 = dot( desaturateInitialColor174, float3( 0.299, 0.587, 0.114 ));
			float3 desaturateVar174 = lerp( desaturateInitialColor174, desaturateDot174.xxx, _Background );
			o.Emission = ( ( ( 1.0 - lerpResult26 ) + ( 1.0 - pow( screenColor38 , temp_cast_2 ) ) ) + screenColor1 + ( saturate( (( blendOpDest36 > 0.5 ) ? ( 1.0 - ( 1.0 - 2.0 * ( blendOpDest36 - 0.5 ) ) * ( 1.0 - blendOpSrc36 ) ) : ( 2.0 * blendOpDest36 * blendOpSrc36 ) ) )) + appendResult44 + CalculateContrast(_StartRainbow,float4( appendResult11_g6 , 0.0 )) + float4( desaturateVar174 , 0.0 ) ).rgb;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15301
7;31;1906;1002;1539.241;978.7635;1;True;True
Node;AmplifyShaderEditor.RangedFloatNode;62;-2612.584,655.7806;Float;False;Property;_RgbBlue;Rgb Blue ;12;0;Create;True;0;0;False;0;5;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;46;-2104.468,71.91623;Float;False;Property;_RgbGreen;Rgb Green;14;0;Create;True;0;0;False;0;5;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;54;-2275.413,541.6296;Float;False;Property;_RGBRed;RGB Red;13;0;Create;True;0;0;False;0;5;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;53;-2186.198,350.0211;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;47;-1873.468,71.91623;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;61;-2440.584,656.7806;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;67;-2205.584,675.7806;Float;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GrabScreenPosition;139;-2195.461,-547.4827;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SinOpNode;59;-1951.198,369.0211;Float;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;48;-1638.468,90.91623;Float;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;49;-1473.468,94.91623;Float;True;2;0;FLOAT;0;False;1;FLOAT;50;False;1;FLOAT;0
Node;AmplifyShaderEditor.GrabScreenPosition;52;-1486.468,295.9162;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GrabScreenPosition;66;-2053.584,880.7811;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenColorNode;140;-1926.661,-510.683;Float;False;Global;_GrabScreen5;Grab Screen 5;12;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;30;-1116.432,-1294.722;Half;False;Property;_BkColor2;Bk Color 2;6;0;Create;True;0;0;False;0;1,1,1,0;1,1,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GrabScreenPosition;39;-911.3094,-1290.847;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleDivideOpNode;57;-1786.198,373.0211;Float;True;2;0;FLOAT;0;False;1;FLOAT;50;False;1;FLOAT;0
Node;AmplifyShaderEditor.GrabScreenPosition;58;-1799.198,574.0215;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleDivideOpNode;65;-2040.584,679.7806;Float;True;2;0;FLOAT;0;False;1;FLOAT;50;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;29;-1107.033,-1114.985;Float;False;Property;_BKcolor;BK color;5;0;Create;True;0;0;False;0;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;34;-1080.619,-1000.938;Float;False;InstancedProperty;_BkLight;Bk Light;4;0;Create;True;0;0;False;0;0;0;-3;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;40;-1012.271,-113.933;Float;False;Property;_Fadespeed;Fade speed;10;0;Create;True;0;0;False;0;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DegreesOpNode;143;-1353.66,-657.8824;Float;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;31;-811.5567,-1006.251;Float;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenColorNode;38;-686.9217,-1292.175;Float;False;Global;_GrabScreen1;Grab Screen 1;6;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;68;-1831.584,770.7806;Float;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;51;-1264.468,185.9162;Float;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;60;-1577.198,464.0215;Float;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;148;-1800.589,-340.6954;Float;False;Property;_RainbowMove;Rainbow Move;9;0;Create;True;0;0;False;0;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;144;-1676.589,-492.6954;Float;False;Simple HUE;-1;;1;32abb5f0db087604486c2db83a2e817a;0;1;1;COLOR;0,0,0,0;False;4;FLOAT3;6;FLOAT;7;FLOAT;5;FLOAT;8
Node;AmplifyShaderEditor.RangedFloatNode;41;-1008.271,-42.93304;Float;False;Property;_FadeLight2;Fade Light 2;11;0;Create;True;0;0;False;0;0;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;43;-743.2709,-109.933;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GrabScreenPosition;35;-975.3038,-278.0595;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PowerNode;25;-909.9722,-908.8524;Float;True;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenColorNode;50;-1149.468,358.9162;Float;False;Global;_GrabScreen2;Grab Screen 2;10;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;42;-1012.269,36.75056;Float;False;Property;_Fadecolor; Fade color ;7;0;Create;True;0;0;False;0;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenColorNode;63;-1716.584,943.7811;Float;False;Global;_GrabScreen4;Grab Screen 4;10;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;26;-836.5641,-1119.75;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.GrabScreenPosition;5;-864.7167,-636.4573;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenColorNode;55;-1462.198,637.0216;Float;False;Global;_GrabScreen3;Grab Screen 3;10;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GrabScreenPosition;175;-408.6667,-25.23658;Float;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;18;-904.7135,-475.8666;Float;False;Property;_WaveSpeed;Wave Speed;2;0;Create;True;0;0;False;0;0;0;0;50;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;19;-902.4125,-396.7601;Float;False;Property;_WaveHigh;Wave High;1;0;Create;True;0;0;False;0;0;0;0;0.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;23;-684.4777,-1121.262;Float;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;56;-1281.198,647.0216;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;141;-1792.062,-256.683;Float;False;Property;_StartRainbow;Start Rainbow;8;0;Create;True;0;0;False;0;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;177;-295.14,-164.6291;Float;False;Property;_Background;Background ;3;0;Create;True;0;0;False;0;0;0;0;50;0;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;37;-749.2437,-39.80074;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.FunctionNode;21;-637.678,-638.7132;Float;False;Waving Vertex;-1;;7;872b3757863bb794c96291ceeebfb188;0;3;1;FLOAT3;0,0,0;False;12;FLOAT;0;False;13;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScreenColorNode;32;-738.6388,-276.6822;Float;False;Global;_GrabScreen0;Grab Screen 0;3;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;45;-968.4681,368.9163;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;147;-1495.589,-443.6954;Float;False;Waving Vertex;-1;;6;872b3757863bb794c96291ceeebfb188;0;3;1;FLOAT3;0,0,0;False;12;FLOAT;0;False;13;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;24;-681.9725,-902.8524;Float;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;64;-1535.584,953.781;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenColorNode;176;-172.0017,-23.85926;Float;False;Global;_GrabScreen6;Grab Screen 6;3;0;Create;True;0;0;False;0;Object;-1;False;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;44;-746.7455,503.9433;Float;False;COLOR;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;36;-605.6357,-44.43042;Float;False;Overlay;True;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DesaturateOpNode;174;70.02751,-62.27533;Float;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;22;-497.9941,-1017.66;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenColorNode;1;-488.9196,-522.2682;Float;False;Global;_GrabDaddy;GrabDaddy;1;0;Create;True;0;0;False;0;Object;-1;True;False;1;0;FLOAT2;0,0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleContrastOpNode;137;-1242.756,-391.9234;Float;False;2;1;COLOR;0,0,0,0;False;0;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;27;-29.07058,-664.4648;Float;False;6;6;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;822.7403,-803.5238;Float;False;True;2;Float;ASEMaterialInspector;0;0;Unlit;NEK0/Screen/Cancer/Cancer v3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Off;1;False;-1;7;False;-1;True;5;20;False;0;Custom;0.5;True;True;0;True;Overlay;;Overlay;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;-1;False;-1;-1;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;0;0;False;0;0;0;False;-1;-1;0;False;-1;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;53;0;54;0
WireConnection;47;0;46;0
WireConnection;61;0;62;0
WireConnection;67;0;61;0
WireConnection;59;0;53;0
WireConnection;48;0;47;0
WireConnection;49;0;48;0
WireConnection;140;0;139;0
WireConnection;57;0;59;0
WireConnection;65;0;67;0
WireConnection;143;0;140;0
WireConnection;31;0;29;0
WireConnection;31;1;30;0
WireConnection;38;0;39;0
WireConnection;68;0;66;0
WireConnection;68;1;65;0
WireConnection;51;0;52;0
WireConnection;51;1;49;0
WireConnection;60;0;58;0
WireConnection;60;1;57;0
WireConnection;144;1;143;0
WireConnection;43;0;40;0
WireConnection;25;0;38;0
WireConnection;25;1;34;0
WireConnection;50;0;51;0
WireConnection;63;0;68;0
WireConnection;26;0;39;0
WireConnection;26;1;31;0
WireConnection;55;0;60;0
WireConnection;23;0;26;0
WireConnection;56;0;55;0
WireConnection;37;0;43;0
WireConnection;37;1;41;0
WireConnection;37;2;42;0
WireConnection;21;1;5;0
WireConnection;21;12;18;0
WireConnection;21;13;19;0
WireConnection;32;0;35;0
WireConnection;45;0;50;0
WireConnection;147;1;144;6
WireConnection;147;13;148;0
WireConnection;24;0;25;0
WireConnection;64;0;63;3
WireConnection;176;0;175;0
WireConnection;44;0;45;0
WireConnection;44;1;56;0
WireConnection;44;2;64;0
WireConnection;36;0;37;0
WireConnection;36;1;32;0
WireConnection;174;0;176;0
WireConnection;174;1;177;0
WireConnection;22;0;23;0
WireConnection;22;1;24;0
WireConnection;1;0;21;0
WireConnection;137;1;147;0
WireConnection;137;0;141;0
WireConnection;27;0;22;0
WireConnection;27;1;1;0
WireConnection;27;2;36;0
WireConnection;27;3;44;0
WireConnection;27;4;137;0
WireConnection;27;5;174;0
WireConnection;0;2;27;0
ASEEND*/
//CHKSM=86A89A9F922550077CC341754ABD1DCB7D2CE21F