// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-5805-OUT,clip-2914-OUT,voffset-243-OUT;n:type:ShaderForge.SFN_Tex2d,id:6959,x:32163,y:32519,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_6959,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3593-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:971,x:31907,y:32547,varname:node_971,prsc:2,ntxv:0,isnm:False|UVIN-4524-OUT,TEX-1294-TEX;n:type:ShaderForge.SFN_RemapRange,id:8022,x:32150,y:32902,varname:node_8022,prsc:2,frmn:0,frmx:0.5,tomn:-0.5,tomx:0.5|IN-265-OUT;n:type:ShaderForge.SFN_Add,id:265,x:32111,y:32713,varname:node_265,prsc:2|A-971-R,B-3909-OUT;n:type:ShaderForge.SFN_OneMinus,id:8336,x:32346,y:32902,varname:node_8336,prsc:2|IN-8022-OUT;n:type:ShaderForge.SFN_TexCoord,id:3593,x:31144,y:31929,varname:node_3593,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:7215,x:32358,y:31731,ptovrint:False,ptlb:Color 1,ptin:_Color1,varname:node_7215,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5805,x:32506,y:32568,varname:node_5805,prsc:2|A-6959-RGB,B-6566-OUT;n:type:ShaderForge.SFN_RemapRange,id:5426,x:32931,y:32712,varname:node_5426,prsc:2,frmn:0,frmx:1,tomn:-3,tomx:10|IN-2453-OUT;n:type:ShaderForge.SFN_Lerp,id:6566,x:32931,y:31866,varname:node_6566,prsc:2|A-7215-RGB,B-3734-OUT,T-4656-OUT;n:type:ShaderForge.SFN_Color,id:8777,x:32220,y:31884,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_8777,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:6069,x:31304,y:32803,ptovrint:False,ptlb:Xpos,ptin:_Xpos,varname:node_6069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:-3,max:3;n:type:ShaderForge.SFN_Slider,id:4947,x:31304,y:32887,ptovrint:False,ptlb:Y pos,ptin:_Ypos,varname:node_4947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Append,id:5139,x:31623,y:32835,varname:node_5139,prsc:2|A-6069-OUT,B-4947-OUT;n:type:ShaderForge.SFN_Multiply,id:1819,x:31566,y:32669,varname:node_1819,prsc:2|A-5139-OUT,B-8949-TSL;n:type:ShaderForge.SFN_Time,id:8949,x:31363,y:32669,varname:node_8949,prsc:2;n:type:ShaderForge.SFN_Add,id:4524,x:31681,y:32531,varname:node_4524,prsc:2|A-8391-OUT,B-1819-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1163,x:31257,y:32438,varname:node_1163,prsc:2;n:type:ShaderForge.SFN_Subtract,id:8391,x:31424,y:32551,varname:node_8391,prsc:2|A-1163-XYZ,B-1417-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:1417,x:31239,y:32587,varname:node_1417,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:4498,x:31499,y:31956,varname:node_4498,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5366-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6857,x:31734,y:31966,ptovrint:False,ptlb:horizontal/vertical,ptin:_horizontalvertical,varname:node_6857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-4498-OUT,B-3579-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3579,x:31585,y:31850,varname:node_3579,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8661-OUT;n:type:ShaderForge.SFN_Add,id:2914,x:32552,y:32780,varname:node_2914,prsc:2|A-8336-OUT,B-573-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1369,x:32124,y:32162,varname:node_1369,prsc:2|IN-3802-OUT,IMIN-2692-OUT,IMAX-2386-OUT,OMIN-2692-OUT,OMAX-9094-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4610,x:31872,y:31984,ptovrint:False,ptlb:Invert materialization dir?,ptin:_Invertmaterializationdir,varname:node_4610,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6857-OUT,B-7931-OUT;n:type:ShaderForge.SFN_OneMinus,id:7931,x:31872,y:31848,varname:node_7931,prsc:2|IN-6857-OUT;n:type:ShaderForge.SFN_Vector1,id:2692,x:31787,y:32100,varname:node_2692,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9094,x:31812,y:32184,varname:node_9094,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:1634,x:33099,y:33048,ptovrint:False,ptlb:Materialization amount,ptin:_Materializationamount,varname:node_1634,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6428286,max:1.2;n:type:ShaderForge.SFN_RemapRange,id:3802,x:32097,y:31984,varname:node_3802,prsc:2,frmn:0.19,frmx:0.191,tomn:0.009,tomx:0|IN-4610-OUT;n:type:ShaderForge.SFN_RemapRange,id:3395,x:31706,y:32353,varname:node_3395,prsc:2,frmn:0,frmx:1,tomn:0,tomx:25|IN-6813-OUT;n:type:ShaderForge.SFN_RemapRange,id:2453,x:31794,y:32651,varname:node_2453,prsc:2,frmn:0,frmx:1.2,tomn:0,tomx:1|IN-1634-OUT;n:type:ShaderForge.SFN_OneMinus,id:6813,x:31547,y:32478,varname:node_6813,prsc:2|IN-4035-OUT;n:type:ShaderForge.SFN_RemapRange,id:3909,x:31960,y:32759,varname:node_3909,prsc:2,frmn:0,frmx:1,tomn:0.5,tomx:1|IN-1634-OUT;n:type:ShaderForge.SFN_Add,id:573,x:32661,y:32474,varname:node_573,prsc:2|A-4962-OUT,B-3395-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8661,x:31371,y:31839,ptovrint:False,ptlb:World Pos Axis 1,ptin:_WorldPosAxis1,varname:node_8661,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3593-U,B-1057-R;n:type:ShaderForge.SFN_SwitchProperty,id:5366,x:31371,y:31929,ptovrint:False,ptlb:World Pos Axis 2,ptin:_WorldPosAxis2,varname:_WorldPosHorizontal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3593-V,B-1057-B;n:type:ShaderForge.SFN_FragmentPosition,id:8484,x:30485,y:31755,varname:node_8484,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:9974,x:30901,y:32482,ptovrint:False,ptlb:World Pos/ Local pos,ptin:_WorldPosLocalpos,varname:node_9974,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1780-OUT,B-2521-OUT;n:type:ShaderForge.SFN_Vector1,id:1780,x:30639,y:32489,varname:node_1780,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2521,x:30639,y:32570,varname:node_2521,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4035,x:31123,y:32389,varname:node_4035,prsc:2|A-1634-OUT,B-9974-OUT;n:type:ShaderForge.SFN_Slider,id:6542,x:31265,y:33155,ptovrint:False,ptlb:Axis 1 Offset,ptin:_Axis1Offset,varname:node_6542,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Transform,id:9026,x:31313,y:33319,varname:node_9026,prsc:2,tffrom:0,tfto:1|IN-8583-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4548,x:31422,y:33242,varname:node_4548,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-9026-XYZ;n:type:ShaderForge.SFN_Add,id:7190,x:31752,y:33271,varname:node_7190,prsc:2|A-4548-G,B-6542-OUT;n:type:ShaderForge.SFN_Append,id:243,x:32416,y:33248,varname:node_243,prsc:2|A-3568-OUT,B-3675-OUT,C-8967-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:6955,x:30990,y:33267,varname:node_6955,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:2273,x:30974,y:33431,varname:node_2273,prsc:2;n:type:ShaderForge.SFN_Add,id:139,x:31752,y:33130,varname:node_139,prsc:2|A-4548-R,B-1949-OUT;n:type:ShaderForge.SFN_Add,id:6055,x:31752,y:33404,varname:node_6055,prsc:2|A-4548-B,B-7535-OUT;n:type:ShaderForge.SFN_Slider,id:1949,x:31265,y:33052,ptovrint:False,ptlb:Axis 2 Offset,ptin:_Axis2Offset,varname:node_1949,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:7535,x:31282,y:33501,ptovrint:False,ptlb:Axis 3 Offset,ptin:_Axis3Offset,varname:node_7535,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Subtract,id:8583,x:31147,y:33370,varname:node_8583,prsc:2|A-6955-XYZ,B-2273-XYZ;n:type:ShaderForge.SFN_Lerp,id:3568,x:32037,y:33128,varname:node_3568,prsc:2|A-4548-R,B-139-OUT,T-560-OUT;n:type:ShaderForge.SFN_Lerp,id:3675,x:32037,y:33279,varname:node_3675,prsc:2|A-4548-G,B-7190-OUT,T-5126-OUT;n:type:ShaderForge.SFN_Lerp,id:8967,x:32037,y:33409,varname:node_8967,prsc:2|A-4548-B,B-6055-OUT,T-560-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9946,x:31650,y:34032,varname:node_9946,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-943-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:943,x:31335,y:33988,varname:node_943,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_OneMinus,id:9145,x:31885,y:34008,varname:node_9145,prsc:2|IN-9946-G;n:type:ShaderForge.SFN_RemapRange,id:974,x:32077,y:34008,varname:node_974,prsc:2,frmn:0.9,frmx:1,tomn:0,tomx:1|IN-9145-OUT;n:type:ShaderForge.SFN_Add,id:5126,x:31930,y:33832,varname:node_5126,prsc:2|A-974-OUT,B-1011-OUT;n:type:ShaderForge.SFN_RemapRange,id:1011,x:31726,y:33895,varname:node_1011,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:10|IN-3451-OUT;n:type:ShaderForge.SFN_Subtract,id:4303,x:30677,y:31844,varname:node_4303,prsc:2|A-8484-XYZ,B-2813-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:2813,x:30485,y:31893,varname:node_2813,prsc:2;n:type:ShaderForge.SFN_Transform,id:6233,x:30843,y:31888,varname:node_6233,prsc:2,tffrom:0,tfto:1|IN-4303-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1057,x:30983,y:31888,varname:node_1057,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-6233-XYZ;n:type:ShaderForge.SFN_Vector1,id:3451,x:31533,y:33858,varname:node_3451,prsc:2,v1:0;n:type:ShaderForge.SFN_OneMinus,id:7693,x:31533,y:33686,varname:node_7693,prsc:2|IN-9946-R;n:type:ShaderForge.SFN_RemapRange,id:8433,x:31729,y:33604,varname:node_8433,prsc:2,frmn:0.9,frmx:1,tomn:0,tomx:1|IN-7693-OUT;n:type:ShaderForge.SFN_RemapRange,id:3185,x:31840,y:33773,varname:node_3185,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:10|IN-3451-OUT;n:type:ShaderForge.SFN_Add,id:560,x:31828,y:33517,varname:node_560,prsc:2|A-8433-OUT,B-3185-OUT;n:type:ShaderForge.SFN_Vector1,id:2386,x:31876,y:32248,varname:node_2386,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:1294,x:31771,y:32514,ptovrint:False,ptlb:Disolve Noise,ptin:_DisolveNoise,varname:node_1294,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2848,x:32043,y:32307,varname:node_2848,prsc:2,ntxv:0,isnm:False|UVIN-8138-OUT,TEX-3975-TEX;n:type:ShaderForge.SFN_Lerp,id:4962,x:32325,y:32304,varname:node_4962,prsc:2|A-1369-OUT,B-2848-R,T-1369-OUT;n:type:ShaderForge.SFN_TexCoord,id:2765,x:31118,y:32059,varname:node_2765,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:4561,x:30912,y:32219,ptovrint:False,ptlb:Dissolve Edge U,ptin:_DissolveEdgeU,varname:node_4561,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:6861,x:30901,y:32308,ptovrint:False,ptlb:Disolve Edge V,ptin:_DisolveEdgeV,varname:_DissolveEdgex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Multiply,id:8903,x:31303,y:32313,varname:node_8903,prsc:2|A-6861-OUT,B-5616-TSL;n:type:ShaderForge.SFN_Multiply,id:8885,x:31286,y:32195,varname:node_8885,prsc:2|A-4561-OUT,B-5616-TSL;n:type:ShaderForge.SFN_Time,id:5616,x:30799,y:32114,varname:node_5616,prsc:2;n:type:ShaderForge.SFN_Append,id:8531,x:31454,y:32244,varname:node_8531,prsc:2|A-8885-OUT,B-8903-OUT;n:type:ShaderForge.SFN_Add,id:8138,x:31457,y:32108,varname:node_8138,prsc:2|A-2765-UVOUT,B-8531-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3975,x:31789,y:32320,ptovrint:False,ptlb:Disolve Edge Noise,ptin:_DisolveEdgeNoise,varname:_DisolveNoise_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:1585,x:32148,y:32414,varname:node_1585,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:7456,x:32619,y:32308,varname:node_7456,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5069-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5069,x:32445,y:32474,ptovrint:False,ptlb:Horizontal/Verticle Edge,ptin:_HorizontalVerticleEdge,varname:node_5069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1585-V,B-1585-U;n:type:ShaderForge.SFN_SwitchProperty,id:5741,x:32881,y:32199,ptovrint:False,ptlb:Invert Edge,ptin:_InvertEdge,varname:node_5741,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7456-OUT,B-1233-OUT;n:type:ShaderForge.SFN_OneMinus,id:1233,x:32742,y:32341,varname:node_1233,prsc:2|IN-7456-OUT;n:type:ShaderForge.SFN_Tex2d,id:7885,x:33198,y:32224,ptovrint:False,ptlb:Color Edge Noise,ptin:_ColorEdgeNoise,varname:node_7885,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:081d256aaba878f40b10ecd5459f4acd,ntxv:0,isnm:False|UVIN-5445-OUT;n:type:ShaderForge.SFN_Slider,id:7716,x:33404,y:32103,ptovrint:False,ptlb:Color Edge U,ptin:_ColorEdgeU,varname:node_7716,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Slider,id:4665,x:33415,y:32191,ptovrint:False,ptlb:Color Edge V,ptin:_ColorEdgeV,varname:_node_7716_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:5165,x:33775,y:32075,varname:node_5165,prsc:2|A-7716-OUT,B-5072-TSL;n:type:ShaderForge.SFN_Multiply,id:6327,x:33775,y:32185,varname:node_6327,prsc:2|A-4665-OUT,B-5072-TSL;n:type:ShaderForge.SFN_Time,id:5072,x:33494,y:32254,varname:node_5072,prsc:2;n:type:ShaderForge.SFN_Append,id:5836,x:34000,y:32114,varname:node_5836,prsc:2|A-5165-OUT,B-6327-OUT;n:type:ShaderForge.SFN_Add,id:5445,x:33890,y:31881,varname:node_5445,prsc:2|A-3685-UVOUT,B-5836-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9905,x:33238,y:32470,varname:node_9905,prsc:2|IN-5741-OUT,IMIN-7666-OUT,IMAX-2561-OUT,OMIN-5679-OUT,OMAX-5306-OUT;n:type:ShaderForge.SFN_Vector1,id:5679,x:33049,y:32616,varname:node_5679,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5306,x:33063,y:32530,varname:node_5306,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2561,x:33063,y:32420,varname:node_2561,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Vector1,id:7666,x:33075,y:32342,varname:node_7666,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Add,id:8715,x:33539,y:32656,varname:node_8715,prsc:2|A-2493-OUT,B-7163-OUT;n:type:ShaderForge.SFN_Clamp01,id:4656,x:33696,y:32528,varname:node_4656,prsc:2|IN-8715-OUT;n:type:ShaderForge.SFN_Add,id:7163,x:33311,y:32656,varname:node_7163,prsc:2|A-9905-OUT,B-5426-OUT;n:type:ShaderForge.SFN_Append,id:4802,x:33603,y:31868,varname:node_4802,prsc:2|A-6508-R,B-6508-G;n:type:ShaderForge.SFN_FragmentPosition,id:5331,x:33292,y:31707,varname:node_5331,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:8958,x:33292,y:31836,varname:node_8958,prsc:2;n:type:ShaderForge.SFN_Subtract,id:8142,x:33446,y:31707,varname:node_8142,prsc:2|A-5331-XYZ,B-8958-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:6508,x:33749,y:31658,varname:node_6508,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-7647-XYZ;n:type:ShaderForge.SFN_Transform,id:7647,x:33603,y:31690,varname:node_7647,prsc:2,tffrom:0,tfto:1|IN-8142-OUT;n:type:ShaderForge.SFN_OneMinus,id:2493,x:33386,y:32364,varname:node_2493,prsc:2|IN-7885-RGB;n:type:ShaderForge.SFN_TexCoord,id:3685,x:33446,y:31897,varname:node_3685,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:3734,x:32498,y:31924,varname:node_3734,prsc:2|A-8777-RGB,B-1328-OUT;n:type:ShaderForge.SFN_Slider,id:1328,x:32328,y:32065,ptovrint:False,ptlb:Dissolve Color Strength,ptin:_DissolveColorStrength,varname:node_1328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;proporder:6959-1294-7215-8777-6069-4947-1634-9974-6857-8661-5366-4610-6542-1949-7535-4561-6861-3975-5069-5741-7885-7716-4665-1328;pass:END;sub:END;*/

Shader "Bender's Shaders/Mesh FX/Materialize" {
    Properties {
        _Maintex ("Maintex", 2D) = "white" {}
        _DisolveNoise ("Disolve Noise", 2D) = "white" {}
        _Color1 ("Color 1", Color) = (1,1,1,1)
        _Color2 ("Color2", Color) = (1,0,0,1)
        _Xpos ("Xpos", Range(-3, 3)) = -3
        _Ypos ("Y pos", Range(-3, 3)) = 0
        _Materializationamount ("Materialization amount", Range(0, 1.2)) = 0.6428286
        [MaterialToggle] _WorldPosLocalpos ("World Pos/ Local pos", Float ) = 1
        [MaterialToggle] _horizontalvertical ("horizontal/vertical", Float ) = 0
        [MaterialToggle] _WorldPosAxis1 ("World Pos Axis 1", Float ) = 0
        [MaterialToggle] _WorldPosAxis2 ("World Pos Axis 2", Float ) = 0
        [MaterialToggle] _Invertmaterializationdir ("Invert materialization dir?", Float ) = 0
        _Axis1Offset ("Axis 1 Offset", Range(-3, 3)) = 0
        _Axis2Offset ("Axis 2 Offset", Range(-3, 3)) = 0
        _Axis3Offset ("Axis 3 Offset", Range(-3, 3)) = 0
        _DissolveEdgeU ("Dissolve Edge U", Range(-3, 3)) = 0
        _DisolveEdgeV ("Disolve Edge V", Range(-3, 3)) = 0
        _DisolveEdgeNoise ("Disolve Edge Noise", 2D) = "white" {}
        [MaterialToggle] _HorizontalVerticleEdge ("Horizontal/Verticle Edge", Float ) = 0
        [MaterialToggle] _InvertEdge ("Invert Edge", Float ) = 0
        _ColorEdgeNoise ("Color Edge Noise", 2D) = "white" {}
        _ColorEdgeU ("Color Edge U", Range(-5, 5)) = 0
        _ColorEdgeV ("Color Edge V", Range(-5, 5)) = 0
        _DissolveColorStrength ("Dissolve Color Strength", Range(0, 10)) = 10
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float _Xpos;
            uniform float _Ypos;
            uniform fixed _horizontalvertical;
            uniform fixed _Invertmaterializationdir;
            uniform float _Materializationamount;
            uniform fixed _WorldPosAxis1;
            uniform fixed _WorldPosAxis2;
            uniform fixed _WorldPosLocalpos;
            uniform float _Axis1Offset;
            uniform float _Axis2Offset;
            uniform float _Axis3Offset;
            uniform sampler2D _DisolveNoise; uniform float4 _DisolveNoise_ST;
            uniform float _DissolveEdgeU;
            uniform float _DisolveEdgeV;
            uniform sampler2D _DisolveEdgeNoise; uniform float4 _DisolveEdgeNoise_ST;
            uniform fixed _HorizontalVerticleEdge;
            uniform fixed _InvertEdge;
            uniform sampler2D _ColorEdgeNoise; uniform float4 _ColorEdgeNoise_ST;
            uniform float _ColorEdgeU;
            uniform float _ColorEdgeV;
            uniform float _DissolveColorStrength;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_4548 = mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rgb;
                float2 node_9946 = o.uv0.rg;
                float node_3451 = 0.0;
                float node_560 = (((1.0 - node_9946.r)*9.999998+-8.999998)+(node_3451*11.0+-1.0));
                v.vertex.xyz = float3(lerp(node_4548.r,(node_4548.r+_Axis2Offset),node_560),lerp(node_4548.g,(node_4548.g+_Axis1Offset),(((1.0 - node_9946.g)*9.999998+-8.999998)+(node_3451*11.0+-1.0))),lerp(node_4548.b,(node_4548.b+_Axis3Offset),node_560));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_8949 = _Time;
                float3 node_4524 = ((i.posWorld.rgb-objPos.rgb)+float3((float2(_Xpos,_Ypos)*node_8949.r),0.0));
                float4 node_971 = tex2D(_DisolveNoise,TRANSFORM_TEX(node_4524, _DisolveNoise));
                float3 node_1057 = mul( unity_WorldToObject, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb.rgb;
                float _horizontalvertical_var = lerp( lerp( i.uv0.g, node_1057.b, _WorldPosAxis2 ).r, lerp( i.uv0.r, node_1057.r, _WorldPosAxis1 ).r, _horizontalvertical );
                float node_2692 = 0.0;
                float node_1369 = (node_2692 + ( ((lerp( _horizontalvertical_var, (1.0 - _horizontalvertical_var), _Invertmaterializationdir )*-8.999981+1.718996) - node_2692) * (0.5 - node_2692) ) / (1.0 - node_2692));
                float4 node_5616 = _Time;
                float2 node_8138 = (i.uv0+float2((_DissolveEdgeU*node_5616.r),(_DisolveEdgeV*node_5616.r)));
                float4 node_2848 = tex2D(_DisolveEdgeNoise,TRANSFORM_TEX(node_8138, _DisolveEdgeNoise));
                clip(((1.0 - ((node_971.r+(_Materializationamount*0.5+0.5))*2.0+-0.5))+(lerp(node_1369,node_2848.r,node_1369)+((1.0 - (_Materializationamount*lerp( 1.0, 1.0, _WorldPosLocalpos )))*25.0+0.0))) - 0.5);
////// Lighting:
////// Emissive:
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float4 node_5072 = _Time;
                float2 node_5445 = (i.uv0+float2((_ColorEdgeU*node_5072.r),(_ColorEdgeV*node_5072.r)));
                float4 _ColorEdgeNoise_var = tex2D(_ColorEdgeNoise,TRANSFORM_TEX(node_5445, _ColorEdgeNoise));
                float node_7456 = lerp( i.uv0.g, i.uv0.r, _HorizontalVerticleEdge ).r;
                float node_7666 = 0.8;
                float node_5679 = 0.0;
                float3 emissive = (_Maintex_var.rgb*lerp(_Color1.rgb,(_Color2.rgb*_DissolveColorStrength),saturate(((1.0 - _ColorEdgeNoise_var.rgb)+((node_5679 + ( (lerp( node_7456, (1.0 - node_7456), _InvertEdge ) - node_7666) * (1.0 - node_5679) ) / (0.9 - node_7666))+((_Materializationamount*0.8333333+0.0)*13.0+-3.0))))));
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
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Xpos;
            uniform float _Ypos;
            uniform fixed _horizontalvertical;
            uniform fixed _Invertmaterializationdir;
            uniform float _Materializationamount;
            uniform fixed _WorldPosAxis1;
            uniform fixed _WorldPosAxis2;
            uniform fixed _WorldPosLocalpos;
            uniform float _Axis1Offset;
            uniform float _Axis2Offset;
            uniform float _Axis3Offset;
            uniform sampler2D _DisolveNoise; uniform float4 _DisolveNoise_ST;
            uniform float _DissolveEdgeU;
            uniform float _DisolveEdgeV;
            uniform sampler2D _DisolveEdgeNoise; uniform float4 _DisolveEdgeNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 node_4548 = mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rgb;
                float2 node_9946 = o.uv0.rg;
                float node_3451 = 0.0;
                float node_560 = (((1.0 - node_9946.r)*9.999998+-8.999998)+(node_3451*11.0+-1.0));
                v.vertex.xyz = float3(lerp(node_4548.r,(node_4548.r+_Axis2Offset),node_560),lerp(node_4548.g,(node_4548.g+_Axis1Offset),(((1.0 - node_9946.g)*9.999998+-8.999998)+(node_3451*11.0+-1.0))),lerp(node_4548.b,(node_4548.b+_Axis3Offset),node_560));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_8949 = _Time;
                float3 node_4524 = ((i.posWorld.rgb-objPos.rgb)+float3((float2(_Xpos,_Ypos)*node_8949.r),0.0));
                float4 node_971 = tex2D(_DisolveNoise,TRANSFORM_TEX(node_4524, _DisolveNoise));
                float3 node_1057 = mul( unity_WorldToObject, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb.rgb;
                float _horizontalvertical_var = lerp( lerp( i.uv0.g, node_1057.b, _WorldPosAxis2 ).r, lerp( i.uv0.r, node_1057.r, _WorldPosAxis1 ).r, _horizontalvertical );
                float node_2692 = 0.0;
                float node_1369 = (node_2692 + ( ((lerp( _horizontalvertical_var, (1.0 - _horizontalvertical_var), _Invertmaterializationdir )*-8.999981+1.718996) - node_2692) * (0.5 - node_2692) ) / (1.0 - node_2692));
                float4 node_5616 = _Time;
                float2 node_8138 = (i.uv0+float2((_DissolveEdgeU*node_5616.r),(_DisolveEdgeV*node_5616.r)));
                float4 node_2848 = tex2D(_DisolveEdgeNoise,TRANSFORM_TEX(node_8138, _DisolveEdgeNoise));
                clip(((1.0 - ((node_971.r+(_Materializationamount*0.5+0.5))*2.0+-0.5))+(lerp(node_1369,node_2848.r,node_1369)+((1.0 - (_Materializationamount*lerp( 1.0, 1.0, _WorldPosLocalpos )))*25.0+0.0))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
