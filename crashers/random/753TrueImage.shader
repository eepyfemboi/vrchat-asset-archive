Shader "753/TrueImage" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
		_Alpha ("Transparency", Range(0, 1)) = 1
		_Range ("Radius from center", Float) = 0.5
	}
	SubShader {
		LOD 100
		Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Overlay+12550" "RenderType" = "Overlay" }
		Pass {
			LOD 100
			Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Overlay+12550" "RenderType" = "Overlay" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			ZTest Always
			ZWrite Off
			Cull Off
			Stencil {
				Ref 753
				Comp NotEqual
				Pass Keep
				Fail Keep
				ZFail Keep
			}
			GpuProgramID 1159
			Program "vp" {
				SubProgram "d3d11 " {
					"!!DX11VertexSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// POSITION                 0   xyzw        0     NONE   float   xyzw
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// TEXCOORD                 0   xy          0     NONE   float   xy  
					// SV_POSITION              0   xyzw        1      POS   float   xyzw
					//
					vs_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_constantbuffer CB1[5], immediateIndexed
					dcl_constantbuffer CB2[4], immediateIndexed
					dcl_constantbuffer CB3[9], immediateIndexed
					dcl_input v0.xyzw
					dcl_input v1.xy
					dcl_output o0.xy
					dcl_output_siv o1.xyzw, position
					dcl_temps 2
					mad o0.xy, v1.xyxx, cb0[2].xyxx, cb0[2].zwzz
					add r0.xyz, cb1[4].xyzx, -cb2[3].xyzx
					dp3 r0.x, r0.xyzx, r0.xyzx
					sqrt r0.x, r0.x
					ge r0.x, r0.x, cb0[3].y
					and r0.x, r0.x, l(0x3f800000)
					mul r1.xyzw, v0.yyyy, cb3[6].xyzw
					mad r1.xyzw, cb3[5].xyzw, v0.xxxx, r1.xyzw
					mad r1.xyzw, cb3[7].xyzw, -v0.zzzz, r1.xyzw
					mad r1.xyzw, cb3[8].xyzw, v0.wwww, r1.xyzw
					mad o1.xyzw, -r1.xyzw, r0.xxxx, r1.xyzw
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_SINGLE_PASS_STEREO" }
					"!!DX11VertexSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// POSITION                 0   xyzw        0     NONE   float   xyzw
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// TEXCOORD                 0   xy          0     NONE   float   xy  
					// SV_POSITION              0   xyzw        1      POS   float   xyzw
					//
					vs_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_constantbuffer CB1[4], immediateIndexed
					dcl_constantbuffer CB2[66], dynamicIndexed
					dcl_constantbuffer CB3[1], immediateIndexed
					dcl_input v0.xyzw
					dcl_input v1.xy
					dcl_output o0.xy
					dcl_output_siv o1.xyzw, position
					dcl_temps 3
					mad o0.xy, v1.xyxx, cb0[2].xyxx, cb0[2].zwzz
					add r0.xyz, cb2[64].xyzx, -cb2[65].xyzx
					dp3 r0.x, |r0.xyzx|, |r0.xyzx|
					sqrt r0.x, r0.x
					itof r0.y, cb3[0].x
					add r0.y, -r0.y, l(0.500000)
					mul r0.x, r0.x, r0.y
					mov r0.yzw, l(0,0,0,0)
					add r0.xyzw, r0.xyzw, v0.xyzw
					ishl r1.x, cb3[0].x, l(2)
					mul r2.xyzw, r0.yyyy, cb2[r1.x + 1].xyzw
					mad r2.xyzw, cb2[r1.x + 0].xyzw, r0.xxxx, r2.xyzw
					mad r2.xyzw, cb2[r1.x + 2].xyzw, -r0.zzzz, r2.xyzw
					mad r0.xyzw, cb2[r1.x + 3].xyzw, r0.wwww, r2.xyzw
					mov r1.x, cb3[0].x
					add r1.xyz, -cb1[3].xyzx, cb2[r1.x + 64].xyzx
					dp3 r1.x, r1.xyzx, r1.xyzx
					sqrt r1.x, r1.x
					ge r1.x, r1.x, cb0[3].y
					and r1.x, r1.x, l(0x3f800000)
					mad o1.xyzw, -r0.xyzw, r1.xxxx, r0.xyzw
					ret 
					// Approximately 0 instruction slots used"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					"!!DX11PixelSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// TEXCOORD                 0   xy          0     NONE   float   xy  
					// SV_POSITION              0   xyzw        1      POS   float       
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v0.xy
					dcl_output o0.xyzw
					dcl_temps 1
					sample r0.xyzw, v0.xyxx, t0.xyzw, s0
					mov o0.xyz, r0.xyzx
					mul o0.w, r0.w, cb0[3].x
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_SINGLE_PASS_STEREO" }
					"!!DX11PixelSM40
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// TEXCOORD                 0   xy          0     NONE   float   xy  
					// SV_POSITION              0   xyzw        1      POS   float       
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v0.xy
					dcl_output o0.xyzw
					dcl_temps 1
					sample r0.xyzw, v0.xyxx, t0.xyzw, s0
					mov o0.xyz, r0.xyzx
					mul o0.w, r0.w, cb0[3].x
					ret 
					// Approximately 0 instruction slots used"
				}
			}
		}
	}
}