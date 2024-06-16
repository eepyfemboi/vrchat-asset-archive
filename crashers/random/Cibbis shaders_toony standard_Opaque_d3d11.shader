Shader "Cibbis shaders/toony standard/Opaque" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
_MainTex ("Albedo (RGB)", 2D) = "white" { }
_BumpMap ("Normal Map", 2D) = "bump" { }
_BumpScale ("Normal Scale", Float) = 1
_EmissionMap ("Emission Map", 2D) = "white" { }
_EmissionColor ("Emission Color", Color) = (0,0,0,1)
_Ramp ("Ramp Texture", 2D) = "white" { }
_RampColor ("Ramp Color", Color) = (1,1,1,1)
_ShadowIntensity ("Shadow Intensity", Range(0, 1)) = 0.4
_RampOffset ("Ramp Offset", Range(-1, 1)) = 0
_FakeLightColor ("Fake Light Color", Color) = (1,1,1,1)
_FakeLightX ("Fake Light X", Range(-1, 1)) = 1
_FakeLightY ("Fake Light Y", Range(-1, 1)) = 0.7
_FakeLightZ ("Fake Light Z", Range(-1, 1)) = 0
_RimStrength ("Rim Strength", Range(0, 1)) = 0
_RimSharpness ("Rim Sharpness", Range(0, 1)) = 0
_RimIntensity ("Rim Intensity", Range(-1, 1)) = 0
_Metallic ("Metallic", Range(0, 1)) = 0
_MetallicMap ("Metallic Map", 2D) = "white" { }
_Glossiness ("Smoothness", Range(0, 1)) = 0
_GlossinessMap ("Smoothness Map", 2D) = "white" { }
_Matcap ("Matcap", 2D) = "white" { }
_Cubemap ("Cubemap", Cube) = "" { }
_HighlightPattern ("Highlight Pattern", 2D) = "white" { }
_HighlightRamp ("Highlight Ramp Texture", 2D) = "white" { }
_HighlightRampColor ("Highlight Ramp Color", Color) = (1,1,1,1)
_HighlightRampOffset ("Highlight Ramp Offset", Range(-1, 1)) = 0
_HighlightIntensity ("Highlight Intensity", Range(0, 10)) = 1
_DetailMask ("Detail Mask", 2D) = "white" { }
_DetailTexture ("Albedo (RGB)", 2D) = "white" { }
_DetailColor ("Color", Color) = (1,1,1,1)
_DetailBumpMap ("Detail Normal Map", 2D) = "bump" { }
_DetailBumpScale ("Detail Normal Scale", Float) = 1
_Cutoff ("Alpha cutoff", Range(0, 1)) = 0.5
[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull Mode", Float) = 2
_Mode ("__mode", Float) = 0
_IndirectSpecular ("__IndirectSpecular", Float) = 0
_Workflow ("__Workflow", Float) = 0
_SrcBlend ("__src", Float) = 1
_DstBlend ("__dst", Float) = 0
_ZWrite ("__zw", Float) = 1
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
 Pass {
  Name "FORWARD"
  LOD 100
  Tags { "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "Geometry" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  Cull Off
  GpuProgramID 43983
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "FORWARD"
  LOD 100
  Tags { "LIGHTMODE" = "FORWARDADD" "QUEUE" = "Geometry" "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  ZWrite Off
  Cull Off
  GpuProgramID 83025
Program "vp" {
SubProgram "d3d11 " {
Keywords { "POINT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "POINT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "META"
  LOD 100
  Tags { "LIGHTMODE" = "META" "QUEUE" = "Geometry" "RenderType" = "Opaque" }
  Cull Off
  GpuProgramID 142819
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" "_ENABLE_SPECULAR" "_METALLIC_WORKFLOW" "_TOONY_HIGHLIGHTS" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Standard"
CustomEditor "ToonyStandard"
}