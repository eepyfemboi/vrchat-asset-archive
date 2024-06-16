Shader "F A P O / FixedScreenShake" {
	Properties {
		_Noise ("_Noise", 2D) = "grey" {}
		_Speed ("_Speed", Float) = 10
		_Amplitude ("_Amplitude", Range(0, 1)) = 0.05
		_AmplitudeFadeDistanceMax ("_AmplitudeFadeDistanceMax", Range(1, 1E+09)) = 1E+09
		_AmplitudeFadeDistanceMin ("_AmplitudeFadeDistanceMin", Range(1, 1E+09)) = 5E+08
	}
	Subshader {
		LOD 300
		Tags { "DisableBatching" = "true" "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+8269" "RenderType" = "Overlay" }
		GrabPass {
			"_BackgroundTexture"
		}
		Pass {
			LOD 300
			Tags { "DisableBatching" = "true" "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "QUEUE" = "Overlay+8269" "RenderType" = "Overlay" }
			ZClip Off
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 63804
			Program "vp" {
				SubProgram "d3d11 " {
					"!!DX11VertexSM40
					/*Can't export program data DX11VertexSM40 as a text*/"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_SINGLE_PASS_STEREO" }
					"!!DX11VertexSM40
					/*Can't export program data DX11VertexSM40 as a text*/"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					"!!DX11PixelSM40
					/*Can't export program data DX11PixelSM40 as a text*/"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_SINGLE_PASS_STEREO" }
					"!!DX11PixelSM40
					/*Can't export program data DX11PixelSM40 as a text*/"
				}
			}
		}
	}
}