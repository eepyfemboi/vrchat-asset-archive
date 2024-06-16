// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:0,trmd:0,grmd:1,uamb:False,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:7,stfa:7,stfz:7,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8016,x:33391,y:32555,varname:node_8016,prsc:2|diff-3969-OUT,emission-5997-OUT,olwid-3843-OUT,olcol-2319-OUT,disp-6648-OUT,tess-5048-OUT;n:type:ShaderForge.SFN_Tex2d,id:1347,x:32407,y:32089,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_1347,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4929-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6197,x:32017,y:32089,varname:node_6197,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:9736,x:31835,y:32089,varname:node_9736,prsc:2;n:type:ShaderForge.SFN_Panner,id:4929,x:32231,y:32089,varname:node_4929,prsc:2,spu:1,spv:1|UVIN-6197-UVOUT,DIST-5311-OUT;n:type:ShaderForge.SFN_Slider,id:1730,x:31678,y:32279,ptovrint:False,ptlb:Texture Scroll Speed,ptin:_TextureScrollSpeed,varname:node_1730,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:0,max:100;n:type:ShaderForge.SFN_Color,id:9966,x:32861,y:33675,ptovrint:False,ptlb:Outline Color,ptin:_OutlineColor,varname:node_9966,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:2708,x:32598,y:33243,ptovrint:False,ptlb:Outline Wdith,ptin:_OutlineWdith,varname:node_2708,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5311,x:32017,y:32249,varname:node_5311,prsc:2|A-9736-TSL,B-1730-OUT;n:type:ShaderForge.SFN_Tex2d,id:3444,x:32861,y:33481,ptovrint:False,ptlb:Outline Texture,ptin:_OutlineTexture,varname:node_3444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3946-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2319,x:33031,y:33481,varname:node_2319,prsc:2|A-3444-RGB,B-9966-RGB;n:type:ShaderForge.SFN_Multiply,id:1147,x:32501,y:33633,varname:node_1147,prsc:2|A-4039-OUT,B-3962-TSL;n:type:ShaderForge.SFN_Panner,id:3946,x:32690,y:33481,varname:node_3946,prsc:2,spu:1,spv:1|UVIN-1664-UVOUT,DIST-1147-OUT;n:type:ShaderForge.SFN_TexCoord,id:1664,x:32501,y:33481,varname:node_1664,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:3962,x:32286,y:33647,varname:node_3962,prsc:2;n:type:ShaderForge.SFN_Slider,id:4039,x:32129,y:33524,ptovrint:False,ptlb:Outline Scroll Speed,ptin:_OutlineScrollSpeed,varname:_EmissionScrollSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:0,max:100;n:type:ShaderForge.SFN_Color,id:2889,x:32407,y:32277,ptovrint:False,ptlb:Texture Color,ptin:_TextureColor,varname:node_2889,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3969,x:32636,y:32089,varname:node_3969,prsc:2|A-1347-RGB,B-2889-RGB;n:type:ShaderForge.SFN_Divide,id:3843,x:32937,y:33247,varname:node_3843,prsc:2|A-2708-OUT,B-76-OUT;n:type:ShaderForge.SFN_Vector1,id:76,x:32755,y:33311,varname:node_76,prsc:2,v1:2000;n:type:ShaderForge.SFN_Tex2d,id:2805,x:32836,y:32934,varname:node_2805,prsc:2,ntxv:0,isnm:False|UVIN-8586-UVOUT,TEX-963-TEX;n:type:ShaderForge.SFN_Multiply,id:6648,x:33022,y:32915,varname:node_6648,prsc:2|A-7256-OUT,B-2805-RGB,C-9422-OUT;n:type:ShaderForge.SFN_Slider,id:9422,x:32706,y:33092,ptovrint:False,ptlb:Tesselation Height,ptin:_TesselationHeight,varname:node_9422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:0.1,max:100;n:type:ShaderForge.SFN_TexCoord,id:3497,x:32415,y:32830,varname:node_3497,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:4436,x:32245,y:32830,varname:node_4436,prsc:2;n:type:ShaderForge.SFN_Panner,id:8586,x:32581,y:32830,varname:node_8586,prsc:2,spu:1,spv:1|UVIN-3497-UVOUT,DIST-4475-OUT;n:type:ShaderForge.SFN_Slider,id:4942,x:32088,y:33007,ptovrint:False,ptlb:Tesselation Scroll Speed,ptin:_TesselationScrollSpeed,varname:_TextureScrollSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:0,max:100;n:type:ShaderForge.SFN_Multiply,id:4475,x:32415,y:32980,varname:node_4475,prsc:2|A-4436-TSL,B-4942-OUT;n:type:ShaderForge.SFN_NormalVector,id:7256,x:32836,y:32786,prsc:2,pt:True;n:type:ShaderForge.SFN_Tex2d,id:6787,x:32415,y:32462,ptovrint:False,ptlb:Overlay Texture,ptin:_OverlayTexture,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-9118-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8303,x:32025,y:32462,varname:node_8303,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:4700,x:31843,y:32462,varname:node_4700,prsc:2;n:type:ShaderForge.SFN_Panner,id:9118,x:32239,y:32462,varname:node_9118,prsc:2,spu:1,spv:1|UVIN-8303-UVOUT,DIST-7774-OUT;n:type:ShaderForge.SFN_Multiply,id:7774,x:32025,y:32622,varname:node_7774,prsc:2|A-4700-TSL,B-6663-OUT;n:type:ShaderForge.SFN_Color,id:1782,x:32415,y:32650,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:_TextureColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:74,x:32644,y:32462,varname:node_74,prsc:2|A-6787-RGB,B-1782-RGB;n:type:ShaderForge.SFN_Lerp,id:5997,x:33021,y:32577,varname:node_5997,prsc:2|A-3969-OUT,B-74-OUT,T-3058-OUT;n:type:ShaderForge.SFN_Slider,id:3058,x:32644,y:32695,ptovrint:False,ptlb:Blend,ptin:_Blend,varname:node_3058,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:963,x:32581,y:33012,ptovrint:False,ptlb:Height Map,ptin:_HeightMap,varname:node_963,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Slider,id:5048,x:33309,y:33130,ptovrint:False,ptlb:Tesselation Detail,ptin:_TesselationDetail,varname:node_5048,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:10,max:100;n:type:ShaderForge.SFN_Slider,id:6663,x:31655,y:32727,ptovrint:False,ptlb:Overlay Scroll Speed,ptin:_OverlayScrollSpeed,varname:node_6663,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-100,cur:0,max:100;n:type:ShaderForge.SFN_Max,id:3608,x:32235,y:33252,varname:node_3608,prsc:2;proporder:1347-1730-2889-6787-1782-6663-3058-3444-9966-4039-2708-963-4942-9422-5048;pass:END;sub:END;*/

Shader "Nabe/Elusive" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TextureScrollSpeed ("Texture Scroll Speed", Range(-100, 100)) = 0
        _TextureColor ("Texture Color", Color) = (1,1,1,1)
        _OverlayTexture ("Overlay Texture", 2D) = "black" {}
        _OverlayColor ("Overlay Color", Color) = (1,1,1,1)
        _OverlayScrollSpeed ("Overlay Scroll Speed", Range(-100, 100)) = 0
        _Blend ("Blend", Range(0, 1)) = 0.5
        _OutlineTexture ("Outline Texture", 2D) = "white" {}
        _OutlineColor ("Outline Color", Color) = (1,1,1,1)
        _OutlineScrollSpeed ("Outline Scroll Speed", Range(-100, 100)) = 0
        _OutlineWdith ("Outline Wdith", Range(-1, 1)) = 0
        _HeightMap ("Height Map", 2D) = "black" {}
        _TesselationScrollSpeed ("Tesselation Scroll Speed", Range(-100, 100)) = 0
        _TesselationHeight ("Tesselation Height", Range(-100, 100)) = 0.1
        _TesselationDetail ("Tesselation Detail", Range(-100, 100)) = 10
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _OutlineColor;
            uniform float _OutlineWdith;
            uniform sampler2D _OutlineTexture; uniform float4 _OutlineTexture_ST;
            uniform float _OutlineScrollSpeed;
            uniform float _TesselationHeight;
            uniform float _TesselationScrollSpeed;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _TesselationDetail;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*(_OutlineWdith/2000.0),1) );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_4436 = _Time;
                    float2 node_8586 = (v.texcoord0+(node_4436.r*_TesselationScrollSpeed)*float2(1,1));
                    float4 node_2805 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_8586, _HeightMap),0.0,0));
                    v.vertex.xyz += (v.normal*node_2805.rgb*_TesselationHeight);
                }
                float Tessellation(TessVertex v){
                    return _TesselationDetail;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_3962 = _Time;
                float2 node_3946 = (i.uv0+(_OutlineScrollSpeed*node_3962.r)*float2(1,1));
                float4 _OutlineTexture_var = tex2D(_OutlineTexture,TRANSFORM_TEX(node_3946, _OutlineTexture));
                return fixed4((_OutlineTexture_var.rgb*_OutlineColor.rgb),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _TextureScrollSpeed;
            uniform float4 _TextureColor;
            uniform float _TesselationHeight;
            uniform float _TesselationScrollSpeed;
            uniform sampler2D _OverlayTexture; uniform float4 _OverlayTexture_ST;
            uniform float4 _OverlayColor;
            uniform float _Blend;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _TesselationDetail;
            uniform float _OverlayScrollSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_4436 = _Time;
                    float2 node_8586 = (v.texcoord0+(node_4436.r*_TesselationScrollSpeed)*float2(1,1));
                    float4 node_2805 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_8586, _HeightMap),0.0,0));
                    v.vertex.xyz += (v.normal*node_2805.rgb*_TesselationHeight);
                }
                float Tessellation(TessVertex v){
                    return _TesselationDetail;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_9736 = _Time;
                float2 node_4929 = (i.uv0+(node_9736.r*_TextureScrollSpeed)*float2(1,1));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4929, _MainTex));
                float3 node_3969 = (_MainTex_var.rgb*_TextureColor.rgb);
                float4 node_4700 = _Time;
                float2 node_9118 = (i.uv0+(node_4700.r*_OverlayScrollSpeed)*float2(1,1));
                float4 _OverlayTexture_var = tex2D(_OverlayTexture,TRANSFORM_TEX(node_9118, _OverlayTexture));
                float3 emissive = lerp(node_3969,(_OverlayTexture_var.rgb*_OverlayColor.rgb),_Blend);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float _TesselationHeight;
            uniform float _TesselationScrollSpeed;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _TesselationDetail;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_4436 = _Time;
                    float2 node_8586 = (v.texcoord0+(node_4436.r*_TesselationScrollSpeed)*float2(1,1));
                    float4 node_2805 = tex2Dlod(_HeightMap,float4(TRANSFORM_TEX(node_8586, _HeightMap),0.0,0));
                    v.vertex.xyz += (v.normal*node_2805.rgb*_TesselationHeight);
                }
                float Tessellation(TessVertex v){
                    return _TesselationDetail;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Standard"
    CustomEditor "ShaderForgeMaterialInspector"
}
