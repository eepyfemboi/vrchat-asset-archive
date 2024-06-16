// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:4,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34876,y:32697,varname:node_3138,prsc:2|emission-4805-OUT,alpha-6269-R,clip-9954-OUT,refract-8053-OUT,voffset-9652-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31519,y:32520,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:6269,x:31888,y:32645,varname:node_6269,prsc:2,ntxv:0,isnm:False|TEX-2912-TEX;n:type:ShaderForge.SFN_Multiply,id:3936,x:32008,y:32526,varname:node_3936,prsc:2|A-7241-RGB,B-1839-OUT;n:type:ShaderForge.SFN_Multiply,id:8641,x:32130,y:32663,varname:node_8641,prsc:2|A-6269-RGB,B-3936-OUT;n:type:ShaderForge.SFN_Slider,id:1839,x:31519,y:32642,ptovrint:False,ptlb:Color Strength,ptin:_ColorStrength,varname:node_1839,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:2912,x:31653,y:32737,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_2912,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1705,x:31888,y:32445,varname:node_1705,prsc:2,ntxv:0,isnm:False|TEX-2912-TEX;n:type:ShaderForge.SFN_OneMinus,id:3932,x:32109,y:32448,varname:node_3932,prsc:2|IN-1705-R;n:type:ShaderForge.SFN_Color,id:9631,x:31880,y:32059,ptovrint:False,ptlb:Hex border color,ptin:_Hexbordercolor,varname:node_9631,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2058,x:32093,y:32126,varname:node_2058,prsc:2|A-9631-RGB,B-6433-OUT;n:type:ShaderForge.SFN_Slider,id:6433,x:31743,y:32233,ptovrint:False,ptlb:Hex Border color strength,ptin:_HexBordercolorstrength,varname:node_6433,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:3612,x:32342,y:32369,varname:node_3612,prsc:2|A-3932-OUT,B-2058-OUT;n:type:ShaderForge.SFN_Add,id:6416,x:32354,y:32642,varname:node_6416,prsc:2|A-3612-OUT,B-8641-OUT;n:type:ShaderForge.SFN_Subtract,id:7128,x:32032,y:33055,varname:node_7128,prsc:2|A-3832-OUT,B-6813-OUT;n:type:ShaderForge.SFN_Divide,id:2202,x:32032,y:33202,varname:node_2202,prsc:2|A-7128-OUT,B-7504-OUT;n:type:ShaderForge.SFN_Vector1,id:6813,x:31801,y:33153,varname:node_6813,prsc:2,v1:0.65;n:type:ShaderForge.SFN_Vector1,id:7504,x:31865,y:33217,varname:node_7504,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Abs,id:7690,x:32032,y:33329,varname:node_7690,prsc:2|IN-2202-OUT;n:type:ShaderForge.SFN_Length,id:6566,x:32195,y:33359,varname:node_6566,prsc:2|IN-7690-OUT;n:type:ShaderForge.SFN_OneMinus,id:926,x:32329,y:33334,varname:node_926,prsc:2|IN-6566-OUT;n:type:ShaderForge.SFN_RemapRange,id:6934,x:32487,y:33316,varname:node_6934,prsc:2,frmn:0.9,frmx:1,tomn:0.9,tomx:0.93|IN-926-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:9974,x:31490,y:33080,varname:node_9974,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:6729,x:31490,y:32947,varname:node_6729,prsc:2;n:type:ShaderForge.SFN_Subtract,id:3241,x:31654,y:33026,varname:node_3241,prsc:2|A-6729-XYZ,B-9974-XYZ;n:type:ShaderForge.SFN_Transform,id:2234,x:30969,y:32795,varname:node_2234,prsc:2,tffrom:0,tfto:1|IN-3241-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8794,x:31117,y:32784,varname:node_8794,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2234-XYZ;n:type:ShaderForge.SFN_Add,id:6598,x:31291,y:32874,varname:node_6598,prsc:2|A-8794-G,B-3561-OUT;n:type:ShaderForge.SFN_Add,id:2789,x:31291,y:32736,varname:node_2789,prsc:2|A-8310-OUT,B-8794-R;n:type:ShaderForge.SFN_Append,id:3832,x:31444,y:32801,varname:node_3832,prsc:2|A-2789-OUT,B-6598-OUT;n:type:ShaderForge.SFN_Vector1,id:8310,x:30801,y:32633,varname:node_8310,prsc:2,v1:-0.1;n:type:ShaderForge.SFN_Vector1,id:3561,x:31000,y:32976,varname:node_3561,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Lerp,id:6625,x:32640,y:32051,varname:node_6625,prsc:2|A-1295-OUT,B-6416-OUT,T-3464-OUT;n:type:ShaderForge.SFN_TexCoord,id:4969,x:32996,y:32315,varname:node_4969,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:9845,x:33148,y:32481,varname:node_9845,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4969-U;n:type:ShaderForge.SFN_Subtract,id:6339,x:33336,y:32522,varname:node_6339,prsc:2|A-9845-OUT,B-4017-OUT;n:type:ShaderForge.SFN_Vector1,id:4017,x:33129,y:32692,varname:node_4017,prsc:2,v1:10;n:type:ShaderForge.SFN_Clamp01,id:1295,x:33507,y:32522,varname:node_1295,prsc:2|IN-6339-OUT;n:type:ShaderForge.SFN_Subtract,id:4814,x:32922,y:33227,varname:node_4814,prsc:2|A-3832-OUT,B-2871-OUT;n:type:ShaderForge.SFN_Divide,id:976,x:32938,y:33410,varname:node_976,prsc:2|A-4814-OUT,B-2089-OUT;n:type:ShaderForge.SFN_Abs,id:6890,x:32938,y:33566,varname:node_6890,prsc:2|IN-976-OUT;n:type:ShaderForge.SFN_Length,id:896,x:33124,y:33566,varname:node_896,prsc:2|IN-6890-OUT;n:type:ShaderForge.SFN_Vector1,id:2871,x:32683,y:33698,varname:node_2871,prsc:2,v1:0.65;n:type:ShaderForge.SFN_Vector1,id:2089,x:32683,y:33757,varname:node_2089,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:3464,x:32126,y:32295,varname:node_3464,prsc:2|IN-334-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8614,x:33087,y:32976,varname:node_8614,prsc:2|IN-896-OUT,IMIN-7714-OUT,IMAX-7755-OUT,OMIN-2501-OUT,OMAX-7611-OUT;n:type:ShaderForge.SFN_Vector1,id:7755,x:32889,y:33028,varname:node_7755,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:7611,x:32899,y:33118,varname:node_7611,prsc:2,v1:-0.1;n:type:ShaderForge.SFN_Slider,id:7714,x:32884,y:32910,ptovrint:False,ptlb:Edge Brightness,ptin:_EdgeBrightness,varname:node_7714,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.6;n:type:ShaderForge.SFN_Slider,id:2501,x:33005,y:33164,ptovrint:False,ptlb:Edge Length,ptin:_EdgeLength,varname:node_2501,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.2,cur:-0.2,max:-5;n:type:ShaderForge.SFN_Add,id:334,x:33467,y:32861,varname:node_334,prsc:2|A-8614-OUT,B-3718-OUT;n:type:ShaderForge.SFN_Slider,id:3718,x:32986,y:32791,ptovrint:False,ptlb:Edge to Inside Ratio,ptin:_EdgetoInsideRatio,varname:node_3718,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3;n:type:ShaderForge.SFN_Lerp,id:6172,x:32432,y:31799,varname:node_6172,prsc:2|A-1295-OUT,B-6416-OUT,T-2224-OUT;n:type:ShaderForge.SFN_Lerp,id:7441,x:32892,y:31972,varname:node_7441,prsc:2|A-6625-OUT,B-19-OUT,T-6341-OUT;n:type:ShaderForge.SFN_Multiply,id:19,x:32690,y:31775,varname:node_19,prsc:2|A-6172-OUT,B-9139-OUT;n:type:ShaderForge.SFN_Slider,id:9139,x:32464,y:31681,ptovrint:False,ptlb:Pulse Brightness,ptin:_PulseBrightness,varname:node_9139,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:20;n:type:ShaderForge.SFN_TexCoord,id:2467,x:31966,y:31216,varname:node_2467,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:3210,x:32976,y:30547,varname:node_3210,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1574-OUT;n:type:ShaderForge.SFN_OneMinus,id:9526,x:32847,y:30759,varname:node_9526,prsc:2|IN-3210-OUT;n:type:ShaderForge.SFN_Min,id:7476,x:33002,y:30773,varname:node_7476,prsc:2|A-3210-OUT,B-9526-OUT;n:type:ShaderForge.SFN_Multiply,id:671,x:33379,y:30846,varname:node_671,prsc:2|A-7476-OUT,B-8442-OUT;n:type:ShaderForge.SFN_Slider,id:8442,x:32864,y:30942,ptovrint:False,ptlb:Pulse Strength,ptin:_PulseStrength,varname:node_8442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.5,cur:0.5,max:1.5;n:type:ShaderForge.SFN_Add,id:811,x:32249,y:31135,varname:node_811,prsc:2|A-2467-V,B-9355-OUT;n:type:ShaderForge.SFN_Slider,id:7969,x:31357,y:30999,ptovrint:False,ptlb:Pulse Speed,ptin:_PulseSpeed,varname:node_7969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Frac,id:2257,x:31897,y:31048,varname:node_2257,prsc:2|IN-9184-OUT;n:type:ShaderForge.SFN_RemapRange,id:9355,x:32045,y:31032,varname:node_9355,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2257-OUT;n:type:ShaderForge.SFN_Multiply,id:9184,x:31702,y:31014,varname:node_9184,prsc:2|A-2407-TSL,B-7969-OUT;n:type:ShaderForge.SFN_Time,id:2407,x:31435,y:31179,varname:node_2407,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:8436,x:33198,y:31148,varname:node_8436,prsc:2|IN-671-OUT;n:type:ShaderForge.SFN_RemapRange,id:1574,x:32804,y:30539,varname:node_1574,prsc:2,frmn:0.5,frmx:1,tomn:-1,tomx:1|IN-811-OUT;n:type:ShaderForge.SFN_LightColor,id:7975,x:32272,y:32095,varname:node_7975,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:4481,x:32451,y:32149,varname:node_4481,prsc:2,frmn:1,frmx:0,tomn:1,tomx:1.5|IN-7975-RGB;n:type:ShaderForge.SFN_Append,id:5812,x:32432,y:31219,varname:node_5812,prsc:2|A-7297-OUT,B-811-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9550,x:33157,y:31457,ptovrint:False,ptlb:Custom Pulse Gradient,ptin:_CustomPulseGradient,varname:node_9550,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8436-OUT,B-9279-R;n:type:ShaderForge.SFN_Length,id:6970,x:33213,y:31608,varname:node_6970,prsc:2|IN-9550-OUT;n:type:ShaderForge.SFN_Tex2d,id:9279,x:32647,y:31306,ptovrint:False,ptlb:Sheild Pulse tex,ptin:_SheildPulsetex,varname:node_9279,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5812-OUT;n:type:ShaderForge.SFN_Multiply,id:5552,x:32892,y:32204,varname:node_5552,prsc:2|A-7441-OUT,B-3289-OUT;n:type:ShaderForge.SFN_Multiply,id:6341,x:33226,y:31834,varname:node_6341,prsc:2|A-6970-OUT,B-6269-R;n:type:ShaderForge.SFN_Slider,id:6563,x:31405,y:31379,ptovrint:False,ptlb:Pulse Speed 2,ptin:_PulseSpeed2,varname:_PulseSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Frac,id:5772,x:31945,y:31428,varname:node_5772,prsc:2|IN-1539-OUT;n:type:ShaderForge.SFN_RemapRange,id:632,x:32093,y:31412,varname:node_632,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5772-OUT;n:type:ShaderForge.SFN_Multiply,id:1539,x:31750,y:31394,varname:node_1539,prsc:2|A-5669-TSL,B-6563-OUT;n:type:ShaderForge.SFN_Time,id:5669,x:31483,y:31559,varname:node_5669,prsc:2;n:type:ShaderForge.SFN_Add,id:7297,x:32262,y:31353,varname:node_7297,prsc:2|A-2467-U,B-632-OUT;n:type:ShaderForge.SFN_Lerp,id:4805,x:32975,y:32481,varname:node_4805,prsc:2|A-1295-OUT,B-5552-OUT,T-4925-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6647,x:33055,y:32110,varname:node_6647,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4969-V;n:type:ShaderForge.SFN_Vector1,id:6466,x:33250,y:32232,varname:node_6466,prsc:2,v1:0;n:type:ShaderForge.SFN_OneMinus,id:8788,x:33174,y:32005,varname:node_8788,prsc:2|IN-6647-OUT;n:type:ShaderForge.SFN_RemapRange,id:9708,x:33308,y:32016,varname:node_9708,prsc:2,frmn:0.5,frmx:0.8,tomn:-5,tomx:1|IN-6647-OUT;n:type:ShaderForge.SFN_Add,id:4330,x:33795,y:31856,varname:node_4330,prsc:2|A-9708-OUT,B-1980-OUT;n:type:ShaderForge.SFN_Slider,id:2921,x:33356,y:32185,ptovrint:False,ptlb:Color Form,ptin:_ColorForm,varname:node_2921,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:1980,x:33769,y:32128,varname:node_1980,prsc:2,frmn:0,frmx:1,tomn:-4,tomx:25|IN-5529-OUT;n:type:ShaderForge.SFN_Clamp01,id:2770,x:32575,y:32446,varname:node_2770,prsc:2|IN-4330-OUT;n:type:ShaderForge.SFN_Multiply,id:4925,x:32812,y:32559,varname:node_4925,prsc:2|A-2770-OUT,B-6025-R;n:type:ShaderForge.SFN_Tex2d,id:6025,x:32588,y:32600,ptovrint:False,ptlb:Materialize Tex (use Hex Typically),ptin:_MaterializeTexuseHexTypically,varname:node_6025,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:3780,x:32396,y:32799,varname:node_3780,prsc:2|A-1295-OUT,B-9027-OUT,T-2224-OUT;n:type:ShaderForge.SFN_Tex2d,id:2595,x:31530,y:33308,ptovrint:False,ptlb:Refract Tex,ptin:_RefractTex,varname:node_2595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False|UVIN-1016-OUT;n:type:ShaderForge.SFN_Multiply,id:8053,x:32217,y:32937,varname:node_8053,prsc:2|A-3780-OUT,B-4283-OUT;n:type:ShaderForge.SFN_Slider,id:4283,x:32338,y:33072,ptovrint:False,ptlb:Refraction Tex Strength,ptin:_RefractionTexStrength,varname:node_4283,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:9027,x:32095,y:32835,varname:node_9027,prsc:2|A-2595-R,B-2595-G;n:type:ShaderForge.SFN_Add,id:3289,x:32678,y:32226,varname:node_3289,prsc:2|A-4481-OUT,B-5899-OUT;n:type:ShaderForge.SFN_Slider,id:5899,x:32434,y:32349,ptovrint:False,ptlb:Lighting Strength,ptin:_LightingStrength,varname:node_5899,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:9582,x:30916,y:33529,varname:node_9582,prsc:2|A-1543-OUT,B-8909-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1016,x:31282,y:33308,ptovrint:False,ptlb:Animated Refraction,ptin:_AnimatedRefraction,varname:node_1016,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5526-UVOUT,B-9376-OUT;n:type:ShaderForge.SFN_TexCoord,id:5526,x:30744,y:33234,varname:node_5526,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:1543,x:30554,y:33475,ptovrint:False,ptlb:Refract U speed,ptin:_RefractUspeed,varname:node_1543,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Slider,id:8909,x:30554,y:33576,ptovrint:False,ptlb:Refract V speed,ptin:_RefractVspeed,varname:node_8909,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:8161,x:31075,y:33477,varname:node_8161,prsc:2|A-9582-OUT,B-1545-TSL;n:type:ShaderForge.SFN_Time,id:1545,x:30483,y:33326,varname:node_1545,prsc:2;n:type:ShaderForge.SFN_Add,id:9376,x:31061,y:33348,varname:node_9376,prsc:2|A-5526-UVOUT,B-8161-OUT;n:type:ShaderForge.SFN_TexCoord,id:8224,x:33759,y:32851,varname:node_8224,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:6292,x:34366,y:33086,varname:node_6292,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6285-OUT;n:type:ShaderForge.SFN_RemapRange,id:4412,x:34224,y:33293,varname:node_4412,prsc:2,frmn:0.99,frmx:1,tomn:-1,tomx:1|IN-6292-OUT;n:type:ShaderForge.SFN_Add,id:6285,x:34106,y:33134,varname:node_6285,prsc:2|A-8224-V,B-2300-OUT;n:type:ShaderForge.SFN_Slider,id:8197,x:33848,y:33705,ptovrint:False,ptlb:Warp Speed,ptin:_WarpSpeed,varname:node_8197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:2.259488,max:10;n:type:ShaderForge.SFN_Sin,id:3165,x:34569,y:33221,varname:node_3165,prsc:2|IN-6528-OUT;n:type:ShaderForge.SFN_Multiply,id:6528,x:34428,y:33293,varname:node_6528,prsc:2|A-4123-OUT,B-4412-OUT;n:type:ShaderForge.SFN_Slider,id:4123,x:34380,y:33478,ptovrint:False,ptlb:Waveform Amount,ptin:_WaveformAmount,varname:node_4123,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3056062,max:0.5;n:type:ShaderForge.SFN_Multiply,id:2300,x:34213,y:33549,varname:node_2300,prsc:2|A-9719-TSL,B-8197-OUT;n:type:ShaderForge.SFN_Time,id:9719,x:34005,y:33523,varname:node_9719,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3523,x:35002,y:33262,varname:node_3523,prsc:2|A-3165-OUT,B-9731-OUT;n:type:ShaderForge.SFN_Slider,id:5464,x:34484,y:33667,ptovrint:False,ptlb:Warp Strength,ptin:_WarpStrength,varname:node_5464,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:9731,x:35002,y:33493,ptovrint:False,ptlb:Amplify Warp Strength,ptin:_AmplifyWarpStrength,varname:node_9731,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-182-OUT,B-5464-OUT;n:type:ShaderForge.SFN_Divide,id:182,x:34791,y:33460,varname:node_182,prsc:2|A-5464-OUT,B-2484-OUT;n:type:ShaderForge.SFN_Vector1,id:2484,x:34617,y:33558,varname:node_2484,prsc:2,v1:10;n:type:ShaderForge.SFN_Subtract,id:3602,x:33588,y:32998,varname:node_3602,prsc:2|A-7478-OUT,B-1209-OUT;n:type:ShaderForge.SFN_Divide,id:8083,x:33588,y:33117,varname:node_8083,prsc:2|A-3602-OUT,B-6374-OUT;n:type:ShaderForge.SFN_Abs,id:4088,x:33588,y:33240,varname:node_4088,prsc:2|IN-8083-OUT;n:type:ShaderForge.SFN_Length,id:1493,x:33588,y:33364,varname:node_1493,prsc:2|IN-4088-OUT;n:type:ShaderForge.SFN_Vector1,id:1209,x:33389,y:33032,varname:node_1209,prsc:2,v1:0.65;n:type:ShaderForge.SFN_Vector1,id:6374,x:33389,y:33117,varname:node_6374,prsc:2,v1:0.5;n:type:ShaderForge.SFN_OneMinus,id:117,x:33588,y:33494,varname:node_117,prsc:2|IN-1493-OUT;n:type:ShaderForge.SFN_Multiply,id:9149,x:33588,y:33619,varname:node_9149,prsc:2|A-117-OUT,B-5375-OUT;n:type:ShaderForge.SFN_Vector1,id:5375,x:33372,y:33693,varname:node_5375,prsc:2,v1:10;n:type:ShaderForge.SFN_Min,id:6717,x:33588,y:33743,varname:node_6717,prsc:2|A-1493-OUT,B-9149-OUT;n:type:ShaderForge.SFN_Time,id:5054,x:34074,y:34176,varname:node_5054,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9024,x:34282,y:34202,varname:node_9024,prsc:2|A-5054-TSL,B-2239-OUT;n:type:ShaderForge.SFN_RemapRange,id:3833,x:34307,y:33946,varname:node_3833,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8594-OUT;n:type:ShaderForge.SFN_Add,id:6675,x:34175,y:33787,varname:node_6675,prsc:2|A-6717-OUT,B-9024-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8594,x:34435,y:33739,varname:node_8594,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6675-OUT;n:type:ShaderForge.SFN_Multiply,id:9502,x:34497,y:33946,varname:node_9502,prsc:2|A-4123-OUT,B-3833-OUT;n:type:ShaderForge.SFN_Sin,id:932,x:34638,y:33874,varname:node_932,prsc:2|IN-9502-OUT;n:type:ShaderForge.SFN_Multiply,id:232,x:35071,y:33915,varname:node_232,prsc:2|A-932-OUT,B-9731-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9652,x:35278,y:33467,ptovrint:False,ptlb:Center Based?,ptin:_CenterBased,varname:node_9652,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3523-OUT,B-232-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4105,x:33018,y:33944,varname:node_4105,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:9160,x:33026,y:34086,varname:node_9160,prsc:2;n:type:ShaderForge.SFN_Subtract,id:2497,x:33188,y:34006,varname:node_2497,prsc:2|A-4105-XYZ,B-9160-XYZ;n:type:ShaderForge.SFN_Transform,id:1264,x:33386,y:34067,varname:node_1264,prsc:2,tffrom:0,tfto:1|IN-2497-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7478,x:33615,y:34056,varname:node_7478,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1264-XYZ;n:type:ShaderForge.SFN_Multiply,id:2239,x:33989,y:34041,varname:node_2239,prsc:2|A-8197-OUT,B-6487-OUT;n:type:ShaderForge.SFN_Vector1,id:6487,x:33833,y:34164,varname:node_6487,prsc:2,v1:10;n:type:ShaderForge.SFN_SwitchProperty,id:2224,x:32637,y:33231,ptovrint:False,ptlb:Partial Shield,ptin:_PartialShield,varname:node_2224,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4396-OUT,B-6934-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5244,x:34453,y:32974,ptovrint:False,ptlb:Full Shield,ptin:_FullShield,varname:node_5244,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6934-OUT,B-2722-OUT;n:type:ShaderForge.SFN_Vector1,id:2722,x:32481,y:33640,varname:node_2722,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRange,id:4396,x:32360,y:33183,varname:node_4396,prsc:2,frmn:0,frmx:1,tomn:1,tomx:1|IN-6566-OUT;n:type:ShaderForge.SFN_Lerp,id:9954,x:34627,y:32874,varname:node_9954,prsc:2|A-1295-OUT,B-5244-OUT,T-3035-OUT;n:type:ShaderForge.SFN_TexCoord,id:4111,x:34211,y:32666,varname:node_4111,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:7598,x:34389,y:32666,varname:node_7598,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4111-V;n:type:ShaderForge.SFN_RemapRange,id:5801,x:34478,y:32469,varname:node_5801,prsc:2,frmn:0.7,frmx:0.8,tomn:-1,tomx:1|IN-7598-OUT;n:type:ShaderForge.SFN_Add,id:2010,x:34571,y:32557,varname:node_2010,prsc:2|A-5801-OUT,B-2228-OUT;n:type:ShaderForge.SFN_Slider,id:5529,x:34017,y:32858,ptovrint:False,ptlb:Materialization,ptin:_Materialization,varname:node_5529,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:2228,x:34366,y:32829,varname:node_2228,prsc:2,frmn:0,frmx:1,tomn:-4.5,tomx:17|IN-5529-OUT;n:type:ShaderForge.SFN_Clamp01,id:3035,x:34765,y:32606,varname:node_3035,prsc:2|IN-2010-OUT;proporder:7241-1839-2912-9631-6433-5899-7714-2501-3718-9139-8442-7969-9550-6563-9279-6025-2921-2595-4283-1016-1543-8909-8197-4123-5464-9731-9652-2224-5244-5529;pass:END;sub:END;*/

Shader "Bender's Shaders/Special FX/Holo Shield" {
    Properties {
        _Color ("Color", Color) = (0,0,0,1)
        _ColorStrength ("Color Strength", Range(0, 1)) = 0
        _Maintex ("Maintex", 2D) = "white" {}
        _Hexbordercolor ("Hex border color", Color) = (0,0,0,1)
        _HexBordercolorstrength ("Hex Border color strength", Range(0, 1)) = 0
        _LightingStrength ("Lighting Strength", Range(0, 1)) = 0
        _EdgeBrightness ("Edge Brightness", Range(0, 0.6)) = 0
        _EdgeLength ("Edge Length", Range(-0.2, -5)) = -0.2
        _EdgetoInsideRatio ("Edge to Inside Ratio", Range(0, 3)) = 0
        _PulseBrightness ("Pulse Brightness", Range(0, 20)) = 0
        _PulseStrength ("Pulse Strength", Range(0.5, 1.5)) = 0.5
        _PulseSpeed ("Pulse Speed", Range(0, 10)) = 0
        [MaterialToggle] _CustomPulseGradient ("Custom Pulse Gradient", Float ) = 0
        _PulseSpeed2 ("Pulse Speed 2", Range(0, 10)) = 0
        _SheildPulsetex ("Sheild Pulse tex", 2D) = "white" {}
        _MaterializeTexuseHexTypically ("Materialize Tex (use Hex Typically)", 2D) = "white" {}
        _ColorForm ("Color Form", Range(0, 1)) = 1
        _RefractTex ("Refract Tex", 2D) = "bump" {}
        _RefractionTexStrength ("Refraction Tex Strength", Range(0, 1)) = 0
        [MaterialToggle] _AnimatedRefraction ("Animated Refraction", Float ) = 0
        _RefractUspeed ("Refract U speed", Range(-5, 5)) = 0
        _RefractVspeed ("Refract V speed", Range(-5, 5)) = 0
        _WarpSpeed ("Warp Speed", Range(-10, 10)) = 2.259488
        _WaveformAmount ("Waveform Amount", Range(0, 0.5)) = 0.3056062
        _WarpStrength ("Warp Strength", Range(0, 1)) = 1
        [MaterialToggle] _AmplifyWarpStrength ("Amplify Warp Strength", Float ) = 0.1
        [MaterialToggle] _CenterBased ("Center Based?", Float ) = 0.0902454
        [MaterialToggle] _PartialShield ("Partial Shield", Float ) = 1
        [MaterialToggle] _FullShield ("Full Shield", Float ) = 0.4790007
        _Materialization ("Materialization", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Overlay"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _GrabTexture;
            uniform float4 _Color;
            uniform float _ColorStrength;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float4 _Hexbordercolor;
            uniform float _HexBordercolorstrength;
            uniform float _EdgeBrightness;
            uniform float _EdgeLength;
            uniform float _EdgetoInsideRatio;
            uniform float _PulseBrightness;
            uniform float _PulseStrength;
            uniform float _PulseSpeed;
            uniform fixed _CustomPulseGradient;
            uniform sampler2D _SheildPulsetex; uniform float4 _SheildPulsetex_ST;
            uniform float _PulseSpeed2;
            uniform sampler2D _MaterializeTexuseHexTypically; uniform float4 _MaterializeTexuseHexTypically_ST;
            uniform sampler2D _RefractTex; uniform float4 _RefractTex_ST;
            uniform float _RefractionTexStrength;
            uniform float _LightingStrength;
            uniform fixed _AnimatedRefraction;
            uniform float _RefractUspeed;
            uniform float _RefractVspeed;
            uniform float _WarpSpeed;
            uniform float _WaveformAmount;
            uniform float _WarpStrength;
            uniform fixed _AmplifyWarpStrength;
            uniform fixed _CenterBased;
            uniform fixed _PartialShield;
            uniform fixed _FullShield;
            uniform float _Materialization;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_9719 = _Time;
                float _AmplifyWarpStrength_var = lerp( (_WarpStrength/10.0), _WarpStrength, _AmplifyWarpStrength );
                float node_1493 = length(abs(((mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rg-0.65)/0.5)));
                float4 node_5054 = _Time;
                float node_9652 = lerp( (sin((_WaveformAmount*((o.uv0.g+(node_9719.r*_WarpSpeed)).r*200.0002+-199.0002)))*_AmplifyWarpStrength_var), (sin((_WaveformAmount*((min(node_1493,((1.0 - node_1493)*10.0))+(node_5054.r*(_WarpSpeed*10.0))).r*2.0+-1.0)))*_AmplifyWarpStrength_var), _CenterBased );
                v.vertex.xyz += float3(node_9652,node_9652,node_9652);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_1295 = saturate((i.uv0.r.r-10.0));
                float4 node_1545 = _Time;
                float2 _AnimatedRefraction_var = lerp( i.uv0, (i.uv0+(float2(_RefractUspeed,_RefractVspeed)*node_1545.r)), _AnimatedRefraction );
                float4 _RefractTex_var = tex2D(_RefractTex,TRANSFORM_TEX(_AnimatedRefraction_var, _RefractTex));
                float2 node_8794 = mul( unity_WorldToObject, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb.rg;
                float2 node_3832 = float2(((-0.1)+node_8794.r),(node_8794.g+0.6));
                float node_6566 = length(abs(((node_3832-0.65)/0.5)));
                float node_6934 = ((1.0 - node_6566)*0.3000003+0.6299998);
                float _PartialShield_var = lerp( (node_6566*0.0+1.0), node_6934, _PartialShield );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (lerp(float2(node_1295,node_1295),float2(_RefractTex_var.r,_RefractTex_var.g),_PartialShield_var)*_RefractionTexStrength);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                clip(lerp(node_1295,lerp( node_6934, 1.0, _FullShield ),saturate(((i.uv0.g.r*20.0+-15.0)+(_Materialization*21.5+-4.5)))) - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
////// Emissive:
                float4 node_1705 = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float4 node_6269 = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float3 node_6416 = (((1.0 - node_1705.r)*(_Hexbordercolor.rgb*_HexBordercolorstrength))+(node_6269.rgb*(_Color.rgb*_ColorStrength)));
                float4 node_2407 = _Time;
                float node_811 = (i.uv0.g+(frac((node_2407.r*_PulseSpeed))*2.0+-1.0));
                float node_3210 = (node_811*4.0+-3.0).r;
                float4 node_5669 = _Time;
                float2 node_5812 = float2((i.uv0.r+(frac((node_5669.r*_PulseSpeed2))*2.0+-1.0)),node_811);
                float4 _SheildPulsetex_var = tex2D(_SheildPulsetex,TRANSFORM_TEX(node_5812, _SheildPulsetex));
                float node_6647 = i.uv0.g.r;
                float4 _MaterializeTexuseHexTypically_var = tex2D(_MaterializeTexuseHexTypically,TRANSFORM_TEX(i.uv0, _MaterializeTexuseHexTypically));
                float3 emissive = lerp(float3(node_1295,node_1295,node_1295),(lerp(lerp(float3(node_1295,node_1295,node_1295),node_6416,saturate(((_EdgeLength + ( (length(abs(((node_3832-0.65)/0.5))) - _EdgeBrightness) * ((-0.1) - _EdgeLength) ) / (1.0 - _EdgeBrightness))+_EdgetoInsideRatio))),(lerp(float3(node_1295,node_1295,node_1295),node_6416,_PartialShield_var)*_PulseBrightness),(length(lerp( saturate((min(node_3210,(1.0 - node_3210))*_PulseStrength)), _SheildPulsetex_var.r, _CustomPulseGradient ))*node_6269.r))*((_LightColor0.rgb*-0.5+1.5)+_LightingStrength)),(saturate(((node_6647*20.0+-15.0)+(_Materialization*29.0+-4.0)))*_MaterializeTexuseHexTypically_var.r));
                float3 finalColor = emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,node_6269.r),1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _GrabTexture;
            uniform float4 _Color;
            uniform float _ColorStrength;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float4 _Hexbordercolor;
            uniform float _HexBordercolorstrength;
            uniform float _EdgeBrightness;
            uniform float _EdgeLength;
            uniform float _EdgetoInsideRatio;
            uniform float _PulseBrightness;
            uniform float _PulseStrength;
            uniform float _PulseSpeed;
            uniform fixed _CustomPulseGradient;
            uniform sampler2D _SheildPulsetex; uniform float4 _SheildPulsetex_ST;
            uniform float _PulseSpeed2;
            uniform sampler2D _MaterializeTexuseHexTypically; uniform float4 _MaterializeTexuseHexTypically_ST;
            uniform sampler2D _RefractTex; uniform float4 _RefractTex_ST;
            uniform float _RefractionTexStrength;
            uniform float _LightingStrength;
            uniform fixed _AnimatedRefraction;
            uniform float _RefractUspeed;
            uniform float _RefractVspeed;
            uniform float _WarpSpeed;
            uniform float _WaveformAmount;
            uniform float _WarpStrength;
            uniform fixed _AmplifyWarpStrength;
            uniform fixed _CenterBased;
            uniform fixed _PartialShield;
            uniform fixed _FullShield;
            uniform float _Materialization;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_9719 = _Time;
                float _AmplifyWarpStrength_var = lerp( (_WarpStrength/10.0), _WarpStrength, _AmplifyWarpStrength );
                float node_1493 = length(abs(((mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rg-0.65)/0.5)));
                float4 node_5054 = _Time;
                float node_9652 = lerp( (sin((_WaveformAmount*((o.uv0.g+(node_9719.r*_WarpSpeed)).r*200.0002+-199.0002)))*_AmplifyWarpStrength_var), (sin((_WaveformAmount*((min(node_1493,((1.0 - node_1493)*10.0))+(node_5054.r*(_WarpSpeed*10.0))).r*2.0+-1.0)))*_AmplifyWarpStrength_var), _CenterBased );
                v.vertex.xyz += float3(node_9652,node_9652,node_9652);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_1295 = saturate((i.uv0.r.r-10.0));
                float4 node_1545 = _Time;
                float2 _AnimatedRefraction_var = lerp( i.uv0, (i.uv0+(float2(_RefractUspeed,_RefractVspeed)*node_1545.r)), _AnimatedRefraction );
                float4 _RefractTex_var = tex2D(_RefractTex,TRANSFORM_TEX(_AnimatedRefraction_var, _RefractTex));
                float2 node_8794 = mul( unity_WorldToObject, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb.rg;
                float2 node_3832 = float2(((-0.1)+node_8794.r),(node_8794.g+0.6));
                float node_6566 = length(abs(((node_3832-0.65)/0.5)));
                float node_6934 = ((1.0 - node_6566)*0.3000003+0.6299998);
                float _PartialShield_var = lerp( (node_6566*0.0+1.0), node_6934, _PartialShield );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (lerp(float2(node_1295,node_1295),float2(_RefractTex_var.r,_RefractTex_var.g),_PartialShield_var)*_RefractionTexStrength);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                clip(lerp(node_1295,lerp( node_6934, 1.0, _FullShield ),saturate(((i.uv0.g.r*20.0+-15.0)+(_Materialization*21.5+-4.5)))) - 0.5);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float3 finalColor = 0;
                float4 node_6269 = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                return fixed4(finalColor * node_6269.r,0);
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
            uniform float _WarpSpeed;
            uniform float _WaveformAmount;
            uniform float _WarpStrength;
            uniform fixed _AmplifyWarpStrength;
            uniform fixed _CenterBased;
            uniform fixed _FullShield;
            uniform float _Materialization;
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
                float4 node_9719 = _Time;
                float _AmplifyWarpStrength_var = lerp( (_WarpStrength/10.0), _WarpStrength, _AmplifyWarpStrength );
                float node_1493 = length(abs(((mul( unity_WorldToObject, float4((mul(unity_ObjectToWorld, v.vertex).rgb-objPos.rgb),0) ).xyz.rgb.rg-0.65)/0.5)));
                float4 node_5054 = _Time;
                float node_9652 = lerp( (sin((_WaveformAmount*((o.uv0.g+(node_9719.r*_WarpSpeed)).r*200.0002+-199.0002)))*_AmplifyWarpStrength_var), (sin((_WaveformAmount*((min(node_1493,((1.0 - node_1493)*10.0))+(node_5054.r*(_WarpSpeed*10.0))).r*2.0+-1.0)))*_AmplifyWarpStrength_var), _CenterBased );
                v.vertex.xyz += float3(node_9652,node_9652,node_9652);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_1295 = saturate((i.uv0.r.r-10.0));
                float2 node_8794 = mul( unity_WorldToObject, float4((i.posWorld.rgb-objPos.rgb),0) ).xyz.rgb.rg;
                float2 node_3832 = float2(((-0.1)+node_8794.r),(node_8794.g+0.6));
                float node_6566 = length(abs(((node_3832-0.65)/0.5)));
                float node_6934 = ((1.0 - node_6566)*0.3000003+0.6299998);
                clip(lerp(node_1295,lerp( node_6934, 1.0, _FullShield ),saturate(((i.uv0.g.r*20.0+-15.0)+(_Materialization*21.5+-4.5)))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
