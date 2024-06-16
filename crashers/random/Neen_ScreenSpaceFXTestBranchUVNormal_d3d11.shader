Shader "Neen/ScreenSpaceFXTestBranchUVNormal" {
Properties {
[Header(Screen Shift)] _intensity ("Vertical Shift", Range(-50, 50)) = 0
_intensity2 ("Horizontal Shift", Range(-50, 50)) = 0
_yper ("Y-period", Range(-200, 200)) = 1
_xper ("X-period", Range(-200, 200)) = 1
[Space(20)] [Header(Magnification)] [Space(5)] [Toggle(MAGNIFIED_ON)] _MG ("Magnified Toggle", Float) = 0
[Space(5)] _mag ("Magnification", Range(1, 200)) = 8
[Space(20)] [Header(Normal UV Distort)] [Space(5)] _normTex ("Normal map", 2D) = "black" { }
_normstr ("Distortion", Float) = 10
_normscroll ("Distort Direction Speed (XY)", Vector) = (0,0,0,0)
[Space(20)] [Toggle(INVERT_VIEW)] _INV ("Invert View Toggle", Float) = 0
[Space(20)] [Header(Blur)] [Space(5)] [Toggle(BLUR_ENABLED)] _BLUR ("Blur Toggle", Float) = 0
[Toggle(BLUR_FALLOFF)] _BLURFO ("Blur Falloff Toggle", Float) = 0
[Space(5)] _blurfactor ("Blur Factor", Range(0, 5)) = 1
[Space(20)] [Header(Falloff)] [Space(5)] _max ("Max Range", Range(0, 20)) = 3
_min ("Minimum Range", Range(0, 20)) = 0
[Space(20)] [Header(Color Tint)] [Space(5)] _redvalue ("Red Tint", Range(0, 25)) = 0.3
_greenvalue ("Green Tint", Range(0, 25)) = 0
_bluevalue ("Blue Tint", Range(0, 25)) = 0
[Toggle(COLOR_BLACK_OUT)] _blackout ("Color Fade", Float) = 0
_blackvalue ("Black Tint", Range(0, 1)) = 0
[Space(10)] [Header(Hue and Saturation)] [Space(5)] _hueshift ("Hue Shift", Float) = 0
_sat ("Saturation", Float) = 1
_val ("Value", Float) = 1
[Toggle(HUE_FALLOFF)] _HSVFO ("HSV Falloff", Float) = 0
[Space (20)] [Toggle(COLOR_INVERT)] _CINV ("Invert Colors", Float) = 0
[Toggle(COLIN_FO)] _CIFO ("Inversin Falloff Toggle", Float) = 0
_redinv ("Red Invert Value", Range(0, 25)) = 1
_greeninv ("Green Invert Value", Range(0, 25)) = 1
_blueinv ("Blue Invert Value", Range(0, 25)) = 1
[Space(20)] [Header(Displacement)] [Space(5)] _noisetex ("Noise", 2D) = "white" { }
_disp ("Displacement Intensity", Float) = 0.2
_dispfreq ("Displacement Frequency", Float) = 0.1
[Header(Ignore me OwO)] _slider ("Slider ", Range(0, 100)) = 3
}
SubShader {
 Tags { "QUEUE" = "Overlay+4001" "RenderType" = "Transparent" }
 GrabPass {
  "_GP2"
}
 Pass {
  Tags { "QUEUE" = "Overlay+4001" "RenderType" = "Transparent" }
  ZClip Off
  ZTest Off
  Cull Off
  GpuProgramID 62833
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BLUR_ENABLED" "BLUR_FALLOFF" "MAGNIFIED_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "BLUR_ENABLED" "BLUR_FALLOFF" "MAGNIFIED_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BLUR_ENABLED" "BLUR_FALLOFF" "MAGNIFIED_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "BLUR_ENABLED" "BLUR_FALLOFF" "MAGNIFIED_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Diffuse"
}