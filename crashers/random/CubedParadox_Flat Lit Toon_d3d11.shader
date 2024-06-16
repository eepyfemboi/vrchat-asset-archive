Shader "CubedParadox/Flat Lit Toon" {
Properties {
_MainTex ("MainTex", 2D) = "white" { }
_Color ("Color", Color) = (1,1,1,1)
_ColorMask ("ColorMask", 2D) = "black" { }
_Shadow ("Shadow", Range(0, 1)) = 0.4
_outline_width ("outline_width", Float) = 0.2
_outline_color ("outline_color", Color) = (0.5,0.5,0.5,1)
_outline_tint ("outline_tint", Range(0, 1)) = 0.5
_EmissionMap ("Emission Map", 2D) = "white" { }
_EmissionColor ("Emission Color", Color) = (0,0,0,1)
_BumpMap ("BumpMap", 2D) = "bump" { }
_Cutoff ("Alpha cutoff", Range(0, 1)) = 0.5
_Mode ("__mode", Float) = 0
_OutlineMode ("__outline_mode", Float) = 0
_SrcBlend ("__src", Float) = 1
_DstBlend ("__dst", Float) = 0
_ZWrite ("__zw", Float) = 1
}
SubShader {
 Tags { "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE" = "FORWARDBASE" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZClip Off
  ZWrite Off
  Cull Off
  GpuProgramID 62850
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
}
Program "gp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "FORWARD_DELTA"
  Tags { "LIGHTMODE" = "FORWARDADD" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZClip Off
  GpuProgramID 122366
Program "vp" {
SubProgram "d3d11 " {
Keywords { "POINT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "POINT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
}
Program "gp" {
SubProgram "d3d11 " {
Keywords { "POINT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" "NO_OUTLINE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "SHADOW_CASTER"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZClip Off
  GpuProgramID 139990
Program "vp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ALPHATEST_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Diffuse"
CustomEditor "FlatLitToonInspector"
}