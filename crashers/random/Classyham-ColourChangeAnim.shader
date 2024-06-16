// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Classyham/ColourChangeAnim"
{
	Properties
	{
		_EmissionValue("EmissionValue", Range( 0 , 1)) = 0
		_Value("Value", Range( 0 , 1)) = 0
		_Saturation("Saturation", Range( 0 , 1)) = 0
		_HueOffset("HueOffset", Range( 0 , 1)) = 0
		_Hue("Hue", Range( 0 , 1)) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma multi_compile_instancing
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			fixed filler;
		};

		UNITY_INSTANCING_CBUFFER_START(ClassyhamColourChangeAnim)
			UNITY_DEFINE_INSTANCED_PROP(float, _Hue)
			UNITY_DEFINE_INSTANCED_PROP(float, _HueOffset)
			UNITY_DEFINE_INSTANCED_PROP(float, _Saturation)
			UNITY_DEFINE_INSTANCED_PROP(float, _Value)
			UNITY_DEFINE_INSTANCED_PROP(float, _EmissionValue)
		UNITY_INSTANCING_CBUFFER_END


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float _Hue_Instance = UNITY_ACCESS_INSTANCED_PROP(_Hue);
			float _HueOffset_Instance = UNITY_ACCESS_INSTANCED_PROP(_HueOffset);
			float _Saturation_Instance = UNITY_ACCESS_INSTANCED_PROP(_Saturation);
			float _Value_Instance = UNITY_ACCESS_INSTANCED_PROP(_Value);
			float3 hsvTorgb1 = HSVToRGB( float3(( _Hue_Instance + _HueOffset_Instance ),_Saturation_Instance,_Value_Instance) );
			o.Albedo = hsvTorgb1;
			float _EmissionValue_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionValue);
			o.Emission = ( hsvTorgb1 * _EmissionValue_Instance );
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15001
7;29;1522;798;1686;317;1;True;True
Node;AmplifyShaderEditor.RangedFloatNode;4;-1280,2;Float;False;InstancedProperty;_Hue;Hue;4;0;Create;True;0;0;False;0;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1283,-87;Float;False;InstancedProperty;_HueOffset;HueOffset;3;0;Create;True;0;0;False;0;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;5;-1015,80;Float;False;InstancedProperty;_Saturation;Saturation;2;0;Create;True;0;0;False;0;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;8;-956,-40;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;6;-1015,150;Float;False;InstancedProperty;_Value;Value;1;0;Create;True;0;0;False;0;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;1;-638,-3;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;3;-631,144;Float;False;InstancedProperty;_EmissionValue;EmissionValue;0;0;Create;True;0;0;False;0;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2;-262,79;Float;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;Classyham/ColourChangeAnim;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;0;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;Zero;Zero;0;Zero;Zero;OFF;OFF;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;0;0;False;0;0;0;False;-1;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;8;0;4;0
WireConnection;8;1;7;0
WireConnection;1;0;8;0
WireConnection;1;1;5;0
WireConnection;1;2;6;0
WireConnection;2;0;1;0
WireConnection;2;1;3;0
WireConnection;0;0;1;0
WireConnection;0;2;2;0
ASEEND*/
//CHKSM=820A3BE1A177090E9E4FCAC8D2892C7B3CB5494C