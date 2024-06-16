Shader "Lexicon/Shake" {
Properties {
_Intensity ("Intensity", Range(0, 50)) = 0
_Speed ("Speed", Range(0, 50)) = 1
_ColorTintR (" Red Tint", Range(0, 1)) = 0
_ColorTintB (" Blue Tint", Range(0, 1)) = 0
_ColorTintG (" Green Tint", Range(0, 1)) = 0
[Toggle(_Dark)] _Dark ("Bright/Dark", Float) = 0
}
SubShader {
 Tags { "QUEUE" = "Overlay" "RenderType" = "Overlay" }
 GrabPass {
  "_GrabTexture"
}
 Pass {
  Tags { "QUEUE" = "Overlay" "RenderType" = "Overlay" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 221
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_Dark" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "_Dark" }
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
Keywords { "_Dark" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "_Dark" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Diffuse"
}