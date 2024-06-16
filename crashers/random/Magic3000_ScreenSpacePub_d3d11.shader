Shader "Magic3000/ScreenSpacePub" {
Properties {
_DistortionNormalMap ("Distortion Normal Map", 2D) = "bump" { }
_ShakeNormalMap ("Shake Normal Map", 2D) = "bump" { }
_DistortionSpeed ("Distortion Speed", Range(0, 10)) = 0
_DistortionOffset ("Distortion Offset", Range(0, 1)) = 0
[Toggle] _StableDistortionOffset ("Stable Distortion Offset", Float) = 1
_ShakeSpeed ("Shake Speed", Range(0, 10)) = 0
_ShakeOffset ("Shake Offset", Range(0, 1)) = 0
[Toggle] _StableShakeOffset ("Stable Shake Offset", Float) = 1
_Skake3018SpeedX ("Skake 3018 Speed X", Range(0, 100)) = 0
_Skake3018OffsetX ("Skake 3018 Offset X", Range(-100, 100)) = 0
_Skake3018SpeedY ("Skake 3018 Speed Y", Range(0, 100)) = 0
_Skake3018OffsetY ("Skake 3018 Offset Y", Range(-100, 100)) = 0
_Float0 ("Girlscam Speed", Float) = 1
_GirlscamOffset ("Girlscam Offset", Range(0, 1)) = 0
[Toggle] _StableGirlscamOffset ("Stable Girlscam Offset", Float) = 1
_DesaturateOffset ("Desaturate Offset", Range(-10, 10)) = 0
_GrayscaleOffset ("Grayscale Offset", Range(-10, 10)) = 0
_GrayscaleLerp ("Grayscale Lerp", Color) = (1,1,1,1)
[Toggle] _RGB ("RGB", Float) = 0
_RedXOffset ("Red X Offset", Range(-0.1, 0.1)) = 0
_RedYOffset ("Red Y Offset", Range(-0.1, 0.1)) = 0
[Toggle] _StableRGBRedOffset ("Stable RGB Red Offset", Float) = 1
_GreenXOffset ("Green X Offset", Range(-0.1, 0.1)) = 0
_GreenYOffset ("Green Y Offset", Range(-0.1, 0.1)) = 0
[Toggle] _StableRGBGreenOffset ("Stable RGB Green Offset", Float) = 1
_BlueXOffset ("Blue X Offset", Range(-0.1, 0.1)) = 0
_BlueYOffset ("Blue Y Offset", Range(-0.1, 0.1)) = 0
[Toggle] _StableRGBBlueOffset ("Stable RGB Blue Offset", Float) = 1
[Toggle] _ChromaticAberration ("Chromatic Aberration", Float) = 0
_CASpeed ("CA Speed", Range(0, 100)) = 15
_CAOffset ("CA Offset", Range(-0.01, 0.01)) = 0.0015
[Toggle] _Blur ("Blur", Float) = 0
_BlurLerp ("Blur Lerp", Range(0, 1)) = 1
[Toggle] _BlurAuto ("Blur Auto", Float) = 0
_BlurSpeed ("Blur Speed", Range(0, 100)) = 5
_BlurOffset ("Blur Offset", Range(0, 1)) = 0
[Toggle] _StableBlurOffset ("Stable Blur Offset", Float) = 1
[Toggle] _RGBBlur ("RGB Blur", Float) = 0
_RGBBlurLerp ("RGB Blur Lerp", Range(0, 1)) = 1
[Toggle] _RGBBlurAuto ("RGB Blur Auto", Float) = 0
_RGBBlurSpeed ("RGB Blur Speed", Range(0, 100)) = 5
_RGBBlurOffset ("RGB Blur Offset", Range(0, 1)) = 0.1
_RGBBlurOffset2 ("RGB Blur Offset 2", Range(0, 2)) = 2
[Toggle] _StableRGBBlurOffset ("Stable RGB Blur Offset", Float) = 1
_Neon ("Neon", Range(0, 1)) = 0
_NeonOffset ("Neon Offset", Range(0, 0.01)) = 0.001
[Toggle] _StableNeonOffset ("Stable Neon Offset", Float) = 1
_NeonNormalize ("Neon Normalize", Range(0, 1)) = 0
_NormalizeColor ("Normalize Color", Color) = (0,0,0,1)
_NeonColor ("Neon Color", Color) = (0,0,0,1)
_Color ("Color", Color) = (1,1,1,1)
_ZoomOffset ("Zoom Offset", Range(-1, 1)) = 0
_ZoomDegree ("Zoom Degree", Range(0, 1)) = 0.75
_ZoomDirection ("Zoom Direction", Range(0, 1)) = 1
_Brightness ("Brightness", Range(0, 1)) = 1
_Pixelate ("Pixelate", Range(0.0001, 100)) = 0.0001
_GammaCorrection ("Gamma Correction", Range(0, 2)) = 0
[Toggle] _8bittextureemulating ("8-bit texture emulating", Float) = 0
_8bitOffset ("8-bit Offset", Range(1, 256)) = 1
_Negative ("Negative", Range(0, 1)) = 0
_NegativeOffset ("Negative Offset", Range(0, 1)) = 1
_HUE ("HUE", Range(0, 1)) = 0
_HUEOffset ("HUE Offset", Range(0, 1)) = 0
[Toggle] _AutoHUE ("Auto HUE", Float) = 0
_HUESpeed ("HUE Speed", Float) = 0.1
_Xflipscreen ("X flip-screen", Range(0, 1)) = 0
_Yflipscreen ("Y flip-screen", Range(0, 1)) = 0
_Screenrotate ("Screen rotate", Range(0, 1)) = 0
_Xrotatescreen ("X rotate-screen", Range(0, 1)) = 0
_Yrotatescreen ("Y rotate-screen", Range(0, 1)) = 0
_MinDistance ("Min Distance", Float) = 4
_MaxDistance ("Max Distance", Float) = 5
_VREffectsMultiply ("VR Effects Multiply", Float) = 0.5
_DesktopEffectsMultiply ("Desktop Effects Multiply", Float) = 1
_texcoord ("", 2D) = "white" { }
__dirty ("", Float) = 1
}
SubShader {
 Tags { "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "IsEmissive" = "true" "QUEUE" = "Overlay+0" "RenderType" = "Overlay" }
 GrabPass {
  "_MagicScreenSpace"
}
 Pass {
  Name "FORWARD"
  Tags { "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "IsEmissive" = "true" "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "Overlay+0" "RenderType" = "Overlay" }
  ZTest Always
  ZWrite Off
  Cull Front
  GpuProgramID 17679
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
}
}
}
CustomEditor "ASEMaterialInspector"
}