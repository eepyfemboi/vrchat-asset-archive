Shader "753/TrueImage" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_Alpha ("Transparency", Range(0, 1)) = 1
_Range ("Radius from center", Float) = 0.5
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Overlay+12550" "RenderType" = "Overlay" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Overlay+12550" "RenderType" = "Overlay" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1159
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "UNITY_SINGLE_PASS_STEREO" }
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
}
}
}
}