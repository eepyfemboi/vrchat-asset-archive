// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:1,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:4,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:35768,y:33203,varname:node_1873,prsc:2|emission-676-OUT,alpha-9540-OUT;n:type:ShaderForge.SFN_Multiply,id:1086,x:35242,y:33215,cmnt:RGB,varname:node_1086,prsc:2|A-1007-OUT,B-6708-OUT;n:type:ShaderForge.SFN_Rotator,id:6732,x:34031,y:33098,varname:node_6732,prsc:2|UVIN-8703-OUT,ANG-4008-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6101,x:33215,y:33131,ptovrint:False,ptlb:Saturation,ptin:_Saturation,varname:node_6101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4063,x:33215,y:33196,ptovrint:False,ptlb:Fuckey Zoom,ptin:_FuckeyZoom,varname:_node_6101_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5715,x:33215,y:33261,ptovrint:False,ptlb:Rotation Angle,ptin:_RotationAngle,varname:_node_6101_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector1,id:3091,x:33932,y:33052,varname:node_3091,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Parallax,id:4077,x:34131,y:33098,varname:node_4077,prsc:2|UVIN-6732-UVOUT,HEI-3091-OUT,DEP-4063-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9798,x:33215,y:33385,ptovrint:False,ptlb:Panner,ptin:_Panner,varname:_y_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:1083,x:33215,y:33322,ptovrint:False,ptlb:Reflect,ptin:_Reflect,varname:_x_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Desaturate,id:6708,x:35141,y:33215,varname:node_6708,prsc:2|COL-8663-OUT,DES-6101-OUT;n:type:ShaderForge.SFN_Reflect,id:8186,x:34231,y:33098,varname:node_8186,prsc:2|A-4077-UVOUT,B-1083-OUT;n:type:ShaderForge.SFN_Panner,id:2822,x:34331,y:33098,varname:node_2822,prsc:2,spu:1,spv:1|UVIN-8186-OUT,DIST-9798-OUT;n:type:ShaderForge.SFN_Color,id:8750,x:35141,y:33336,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:node_8750,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1498,x:35346,y:33350,ptovrint:False,ptlb:Screen Overlay Texture,ptin:_ScreenOverlayTexture,varname:node_1498,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5463-UVOUT;n:type:ShaderForge.SFN_Multiply,id:676,x:35346,y:33215,cmnt:RGB,varname:node_676,prsc:2|A-1498-RGB,B-1086-OUT;n:type:ShaderForge.SFN_Slider,id:9540,x:35189,y:33490,ptovrint:False,ptlb:Overall Alpha,ptin:_OverallAlpha,varname:node_9540,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_If,id:9327,x:34735,y:33215,varname:node_9327,prsc:2|A-5225-OUT,B-3091-OUT,GT-6602-OUT,EQ-3504-OUT,LT-3504-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:5225,x:33319,y:33196,ptovrint:False,ptlb:despacito 2,ptin:_despacito2,varname:node_5225,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_VectorProjection,id:6602,x:34735,y:33336,varname:node_6602,prsc:2|A-9406-OUT,B-3504-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3622,x:33319,y:33512,ptovrint:False,ptlb:Y Offset,ptin:_YOffset,varname:_tiley_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9140,x:33215,y:33512,ptovrint:False,ptlb:X Offset,ptin:_XOffset,varname:_tilex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:4266,x:33728,y:33098,varname:node_4266,prsc:2|A-2620-OUT,B-9140-OUT,C-4551-OUT;n:type:ShaderForge.SFN_Add,id:8729,x:33887,y:33098,varname:node_8729,prsc:2|A-5392-V,B-3622-OUT,C-3859-OUT;n:type:ShaderForge.SFN_Multiply,id:1007,x:35242,y:33336,cmnt:RGB,varname:node_1007,prsc:2|A-8750-RGB,B-8750-A;n:type:ShaderForge.SFN_Add,id:2620,x:33627,y:33098,varname:node_2620,prsc:2|A-5392-U,B-3401-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7062,x:33319,y:33131,ptovrint:False,ptlb:Aberration,ptin:_Aberration,varname:node_7062,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:9529,x:33522,y:33336,varname:node_9529,prsc:2|A-3401-OUT,B-5950-OUT;n:type:ShaderForge.SFN_Vector1,id:5950,x:33422,y:33588,varname:node_5950,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:8317,x:33422,y:33098,varname:node_8317,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Add,id:7761,x:33626,y:33336,varname:node_7761,prsc:2|A-5392-U,B-9529-OUT;n:type:ShaderForge.SFN_SceneColor,id:5991,x:34535,y:33098,varname:node_5991,prsc:2|UVIN-2398-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:5392,x:33422,y:33230,varname:node_5392,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:9130,x:34535,y:33215,varname:node_9130,prsc:2|UVIN-4065-UVOUT;n:type:ShaderForge.SFN_SceneColor,id:2441,x:34535,y:33336,varname:node_2441,prsc:2|UVIN-7920-UVOUT;n:type:ShaderForge.SFN_Append,id:7382,x:33783,y:33837,varname:node_7382,prsc:2|A-8780-OUT,B-6380-OUT;n:type:ShaderForge.SFN_Append,id:8048,x:33783,y:33947,varname:node_8048,prsc:2|A-616-OUT,B-2691-OUT;n:type:ShaderForge.SFN_Append,id:3504,x:34636,y:33215,varname:node_3504,prsc:2|A-5991-R,B-9130-G,C-2441-B,D-9130-A;n:type:ShaderForge.SFN_Multiply,id:3401,x:33522,y:33098,varname:node_3401,prsc:2|A-7062-OUT,B-8317-OUT;n:type:ShaderForge.SFN_Add,id:8780,x:33887,y:33215,varname:node_8780,prsc:2|A-5392-U,B-9140-OUT,C-4551-OUT;n:type:ShaderForge.SFN_Add,id:6380,x:33728,y:33215,varname:node_6380,prsc:2|A-5392-V,B-3622-OUT,C-3859-OUT;n:type:ShaderForge.SFN_Add,id:616,x:33726,y:33336,varname:node_616,prsc:2|A-7761-OUT,B-9140-OUT,C-4551-OUT;n:type:ShaderForge.SFN_Add,id:2691,x:33887,y:33336,varname:node_2691,prsc:2|A-5392-V,B-3622-OUT,C-3859-OUT;n:type:ShaderForge.SFN_Append,id:547,x:33783,y:33727,varname:node_547,prsc:2|A-4266-OUT,B-8729-OUT;n:type:ShaderForge.SFN_Panner,id:5463,x:34331,y:33215,varname:node_5463,prsc:2,spu:1,spv:1|UVIN-6527-OUT,DIST-9798-OUT;n:type:ShaderForge.SFN_Rotator,id:7916,x:34030,y:33215,varname:node_7916,prsc:2|UVIN-2686-OUT,ANG-4008-OUT;n:type:ShaderForge.SFN_Parallax,id:5925,x:34130,y:33215,varname:node_5925,prsc:2|UVIN-7916-UVOUT,HEI-3091-OUT,DEP-4063-OUT;n:type:ShaderForge.SFN_Reflect,id:6527,x:34231,y:33215,varname:node_6527,prsc:2|A-5925-UVOUT,B-1083-OUT;n:type:ShaderForge.SFN_Panner,id:9357,x:34331,y:33336,varname:node_9357,prsc:2,spu:1,spv:1|UVIN-3935-OUT,DIST-9798-OUT;n:type:ShaderForge.SFN_Rotator,id:8337,x:34028,y:33336,varname:node_8337,prsc:2|UVIN-7885-OUT,ANG-4008-OUT;n:type:ShaderForge.SFN_Parallax,id:4611,x:34130,y:33336,varname:node_4611,prsc:2|UVIN-8337-UVOUT,HEI-3091-OUT,DEP-4063-OUT;n:type:ShaderForge.SFN_Reflect,id:3935,x:34230,y:33336,varname:node_3935,prsc:2|A-4611-UVOUT,B-1083-OUT;n:type:ShaderForge.SFN_UVTile,id:7920,x:34432,y:33336,varname:node_7920,prsc:2|UVIN-9357-UVOUT,WDT-4962-OUT,HGT-4962-OUT,TILE-953-OUT;n:type:ShaderForge.SFN_ValueProperty,id:953,x:33215,y:33450,ptovrint:False,ptlb:Zoom,ptin:_Zoom,varname:_Zoom_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_UVTile,id:4065,x:34432,y:33215,varname:node_4065,prsc:2|UVIN-5463-UVOUT,WDT-4962-OUT,HGT-4962-OUT,TILE-953-OUT;n:type:ShaderForge.SFN_UVTile,id:2398,x:34432,y:33098,varname:node_2398,prsc:2|UVIN-2822-UVOUT,WDT-4962-OUT,HGT-4962-OUT,TILE-953-OUT;n:type:ShaderForge.SFN_Add,id:4962,x:34231,y:32968,varname:node_4962,prsc:2|A-953-OUT,B-2202-OUT;n:type:ShaderForge.SFN_Vector1,id:2202,x:34130,y:33052,varname:node_2202,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4551,x:33522,y:33215,varname:node_4551,prsc:2|A-953-OUT,B-3962-OUT;n:type:ShaderForge.SFN_Vector1,id:3962,x:33422,y:33132,varname:node_3962,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Multiply,id:3859,x:33626,y:33215,varname:node_3859,prsc:2|A-953-OUT,B-3691-OUT;n:type:ShaderForge.SFN_Vector1,id:3691,x:33422,y:33170,varname:node_3691,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Divide,id:2817,x:33422,y:33450,varname:node_2817,prsc:2|A-5715-OUT,B-5606-OUT;n:type:ShaderForge.SFN_Pi,id:5606,x:33455,y:33354,varname:node_5606,prsc:2;n:type:ShaderForge.SFN_Divide,id:9050,x:33522,y:33450,varname:node_9050,prsc:2|A-2817-OUT,B-8116-OUT;n:type:ShaderForge.SFN_Vector1,id:8116,x:33522,y:33588,varname:node_8116,prsc:2,v1:5;n:type:ShaderForge.SFN_Vector1,id:5169,x:33624,y:33588,varname:node_5169,prsc:2,v1:24.675;n:type:ShaderForge.SFN_Multiply,id:9681,x:33624,y:33450,varname:node_9681,prsc:2|A-9050-OUT,B-5169-OUT;n:type:ShaderForge.SFN_Vector1,id:9802,x:33826,y:33588,varname:node_9802,prsc:2,v1:4;n:type:ShaderForge.SFN_Divide,id:9614,x:33725,y:33450,varname:node_9614,prsc:2|A-9681-OUT,B-6182-OUT;n:type:ShaderForge.SFN_Vector1,id:6182,x:33725,y:33588,varname:node_6182,prsc:2,v1:360;n:type:ShaderForge.SFN_Multiply,id:4008,x:33826,y:33450,varname:node_4008,prsc:2|A-9614-OUT,B-9802-OUT;n:type:ShaderForge.SFN_Append,id:9406,x:34636,y:33336,varname:node_9406,prsc:2|A-5991-G,B-9130-B,C-2441-R;n:type:ShaderForge.SFN_If,id:6647,x:34837,y:33215,varname:node_6647,prsc:2|A-9061-OUT,B-3091-OUT,GT-4553-OUT,EQ-9327-OUT,LT-9327-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:9061,x:33319,y:33261,ptovrint:False,ptlb:despacito 3,ptin:_despacito3,varname:_gheyify_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_DDXY,id:4553,x:34837,y:33336,varname:node_4553,prsc:2|IN-9327-OUT;n:type:ShaderForge.SFN_If,id:6768,x:34938,y:33215,varname:node_6768,prsc:2|A-2705-OUT,B-3091-OUT,GT-7993-OUT,EQ-6647-OUT,LT-6647-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:2705,x:33319,y:33322,ptovrint:False,ptlb:despacito 4,ptin:_despacito4,varname:_gheyifythesequel_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_If,id:8663,x:35041,y:33215,varname:node_8663,prsc:2|A-2037-OUT,B-3091-OUT,GT-9264-OUT,EQ-6768-OUT,LT-6768-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:2037,x:33319,y:33385,ptovrint:False,ptlb:despacito 5,ptin:_despacito5,varname:_gheyifytheprequel_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_RemapRange,id:9264,x:35041,y:33336,varname:node_9264,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-6768-OUT;n:type:ShaderForge.SFN_Power,id:7993,x:34938,y:33336,varname:node_7993,prsc:2|VAL-6647-OUT,EXP-5221-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5221,x:33319,y:33450,ptovrint:False,ptlb:nigger values,ptin:_niggervalues,varname:_Aberration_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_UVTile,id:9132,x:34024,y:33947,varname:node_9132,prsc:2|UVIN-8048-OUT,WDT-6918-OUT,HGT-4552-OUT,TILE-4736-OUT;n:type:ShaderForge.SFN_Vector1,id:4552,x:33670,y:34123,varname:node_4552,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6918,x:33670,y:34073,varname:node_6918,prsc:2,v1:1;n:type:ShaderForge.SFN_UVTile,id:2679,x:34024,y:33837,varname:node_2679,prsc:2|UVIN-7382-OUT,WDT-6918-OUT,HGT-4552-OUT,TILE-4736-OUT;n:type:ShaderForge.SFN_UVTile,id:6655,x:34024,y:33727,varname:node_6655,prsc:2|UVIN-547-OUT,WDT-6918-OUT,HGT-4552-OUT,TILE-4736-OUT;n:type:ShaderForge.SFN_Relay,id:7885,x:35309,y:33895,varname:node_7885,prsc:2|IN-3425-OUT;n:type:ShaderForge.SFN_Relay,id:2686,x:35309,y:33848,varname:node_2686,prsc:2|IN-7403-OUT;n:type:ShaderForge.SFN_Relay,id:8703,x:35309,y:33797,varname:node_8703,prsc:2|IN-2759-OUT;n:type:ShaderForge.SFN_Vector1,id:4736,x:33670,y:34164,varname:node_4736,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:1986,x:33513,y:34238,varname:node_1986,prsc:2|A-4266-OUT,B-8873-OUT;n:type:ShaderForge.SFN_Append,id:2892,x:33782,y:34232,varname:node_2892,prsc:2|A-1986-OUT,B-8729-OUT;n:type:ShaderForge.SFN_Append,id:6264,x:33782,y:34342,varname:node_6264,prsc:2|A-351-OUT,B-6380-OUT;n:type:ShaderForge.SFN_Append,id:5324,x:33782,y:34452,varname:node_5324,prsc:2|A-1880-OUT,B-2691-OUT;n:type:ShaderForge.SFN_UVTile,id:6598,x:34023,y:34232,varname:node_6598,prsc:2|UVIN-2892-OUT,WDT-6918-OUT,HGT-4552-OUT,TILE-4688-OUT;n:type:ShaderForge.SFN_UVTile,id:6371,x:34023,y:34342,varname:node_6371,prsc:2|UVIN-6264-OUT,WDT-6918-OUT,HGT-4552-OUT,TILE-4688-OUT;n:type:ShaderForge.SFN_UVTile,id:1020,x:34023,y:34452,varname:node_1020,prsc:2|UVIN-5324-OUT,WDT-6918-OUT,HGT-4552-OUT,TILE-4688-OUT;n:type:ShaderForge.SFN_Add,id:351,x:33513,y:34349,varname:node_351,prsc:2|A-8780-OUT,B-8873-OUT;n:type:ShaderForge.SFN_Add,id:1880,x:33513,y:34456,varname:node_1880,prsc:2|A-616-OUT,B-8873-OUT;n:type:ShaderForge.SFN_Vector1,id:8873,x:33166,y:34356,varname:node_8873,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4688,x:33636,y:34554,varname:node_4688,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:4896,x:34367,y:33721,varname:node_4896,prsc:2|A-6655-UVOUT,B-6598-UVOUT;n:type:ShaderForge.SFN_Append,id:8995,x:34367,y:33830,varname:node_8995,prsc:2|A-2679-UVOUT,B-6371-UVOUT;n:type:ShaderForge.SFN_Append,id:5409,x:34367,y:33929,varname:node_5409,prsc:2|A-9132-UVOUT,B-1020-UVOUT;n:type:ShaderForge.SFN_Blend,id:8414,x:34661,y:33740,varname:node_8414,prsc:2,blmd:10,clmp:True|SRC-6655-UVOUT,DST-851-OUT;n:type:ShaderForge.SFN_Blend,id:7522,x:34661,y:33895,varname:node_7522,prsc:2,blmd:10,clmp:True|SRC-2679-UVOUT,DST-810-OUT;n:type:ShaderForge.SFN_Blend,id:8114,x:34661,y:34042,varname:node_8114,prsc:2,blmd:10,clmp:True|SRC-9132-UVOUT,DST-4341-OUT;n:type:ShaderForge.SFN_If,id:2759,x:35058,y:33873,varname:node_2759,prsc:2|A-3427-OUT,B-9361-OUT,GT-547-OUT,EQ-8414-OUT,LT-547-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:3427,x:34711,y:34239,ptovrint:False,ptlb:High FOV boiye,ptin:_HighFOVboiye,varname:node_3427,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_If,id:7403,x:35058,y:33985,varname:node_7403,prsc:2|A-3427-OUT,B-9361-OUT,GT-7382-OUT,EQ-7522-OUT,LT-7382-OUT;n:type:ShaderForge.SFN_If,id:3425,x:35058,y:34095,varname:node_3425,prsc:2|A-3427-OUT,B-9361-OUT,GT-8048-OUT,EQ-8114-OUT,LT-8048-OUT;n:type:ShaderForge.SFN_Vector1,id:9361,x:34563,y:34174,varname:node_9361,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4341,x:34501,y:34086,varname:node_4341,prsc:2|A-1020-UVOUT,B-9691-OUT;n:type:ShaderForge.SFN_Vector1,id:9691,x:34480,y:34255,varname:node_9691,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:810,x:34501,y:33950,varname:node_810,prsc:2|A-6371-UVOUT,B-9691-OUT;n:type:ShaderForge.SFN_Multiply,id:851,x:34501,y:33757,varname:node_851,prsc:2|A-6598-UVOUT,B-9691-OUT;proporder:1498-8750-9540-6101-3622-9140-5715-953-4063-1083-9798-7062-5225-9061-2705-2037-5221-3427;pass:END;sub:END;*/

Shader "Herpu/Screen fuckery" {
    Properties {
        _ScreenOverlayTexture ("Screen Overlay Texture", 2D) = "white" {}
        _OverlayColor ("Overlay Color", Color) = (1,1,1,1)
        _OverallAlpha ("Overall Alpha", Range(0, 1)) = 1
        _Saturation ("Saturation", Float ) = 0
        _YOffset ("Y Offset", Float ) = 0
        _XOffset ("X Offset", Float ) = 0
        _RotationAngle ("Rotation Angle", Float ) = 0
        _Zoom ("Zoom", Float ) = 0
        _FuckeyZoom ("Fuckey Zoom", Float ) = 0
        _Reflect ("Reflect", Float ) = 0
        _Panner ("Panner", Float ) = 0
        _Aberration ("Aberration", Float ) = 0
        [MaterialToggle] _despacito2 ("despacito 2", Float ) = 0
        [MaterialToggle] _despacito3 ("despacito 3", Float ) = 0
        [MaterialToggle] _despacito4 ("despacito 4", Float ) = 0
        [MaterialToggle] _despacito5 ("despacito 5", Float ) = 0
        _colorvalues ("Color Values", Float ) = 0
        [MaterialToggle] _HighFOVboiye ("High FOV boiye", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay"
            "RenderType"="Transparent"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _Saturation;
            uniform float _FuckeyZoom;
            uniform float _RotationAngle;
            uniform float _Panner;
            uniform float _Reflect;
            uniform float4 _OverlayColor;
            uniform sampler2D _ScreenOverlayTexture; uniform float4 _ScreenOverlayTexture_ST;
            uniform float _OverallAlpha;
            uniform fixed _despacito2;
            uniform float _YOffset;
            uniform float _XOffset;
            uniform float _Aberration;
            uniform float _Zoom;
            uniform fixed _despacito3;
            uniform fixed _despacito4;
            uniform fixed _despacito5;
            uniform float _niggervalues;
            uniform fixed _HighFOVboiye;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float node_4008 = (((((_RotationAngle/3.141592654)/5.0)*24.675)/360.0)*4.0);
                float node_7916_ang = node_4008;
                float node_7916_spd = 1.0;
                float node_7916_cos = cos(node_7916_spd*node_7916_ang);
                float node_7916_sin = sin(node_7916_spd*node_7916_ang);
                float2 node_7916_piv = float2(0.5,0.5);
                float node_9361 = 1.0;
                float node_7403_if_leA = step(_HighFOVboiye,node_9361);
                float node_7403_if_leB = step(node_9361,_HighFOVboiye);
                float node_4551 = (_Zoom*(-0.5));
                float node_8780 = (sceneUVs.r+_XOffset+node_4551);
                float node_3859 = (_Zoom*0.5);
                float node_6380 = (sceneUVs.g+_YOffset+node_3859);
                float2 node_7382 = float2(node_8780,node_6380);
                float node_6918 = 1.0;
                float node_4552 = 1.0;
                float node_4736 = 0.0;
                float2 node_2679_tc_rcp = float2(1.0,1.0)/float2( node_6918, node_4552 );
                float node_2679_ty = floor(node_4736 * node_2679_tc_rcp.x);
                float node_2679_tx = node_4736 - node_6918 * node_2679_ty;
                float2 node_2679 = (node_7382 + float2(node_2679_tx, node_2679_ty)) * node_2679_tc_rcp;
                float node_4688 = 0.0;
                float2 node_6371_tc_rcp = float2(1.0,1.0)/float2( node_6918, node_4552 );
                float node_6371_ty = floor(node_4688 * node_6371_tc_rcp.x);
                float node_6371_tx = node_4688 - node_6918 * node_6371_ty;
                float node_8873 = 0.0;
                float2 node_6371 = (float2((node_8780+node_8873),node_6380) + float2(node_6371_tx, node_6371_ty)) * node_6371_tc_rcp;
                float node_9691 = 0.5;
                float2 node_7916 = (mul(lerp((node_7403_if_leA*node_7382)+(node_7403_if_leB*node_7382),saturate(( (node_6371*node_9691) > 0.5 ? (1.0-(1.0-2.0*((node_6371*node_9691)-0.5))*(1.0-node_2679)) : (2.0*(node_6371*node_9691)*node_2679) )),node_7403_if_leA*node_7403_if_leB)-node_7916_piv,float2x2( node_7916_cos, -node_7916_sin, node_7916_sin, node_7916_cos))+node_7916_piv);
                float node_3091 = 0.1;
                float2 node_5463 = (reflect((_FuckeyZoom*(node_3091 - 0.5)*mul(tangentTransform, viewDirection).xy + node_7916).rg,_Reflect)+_Panner*float2(1,1));
                float4 _ScreenOverlayTexture_var = tex2D(_ScreenOverlayTexture,TRANSFORM_TEX(node_5463, _ScreenOverlayTexture));
                float node_8663_if_leA = step(_despacito5,node_3091);
                float node_8663_if_leB = step(node_3091,_despacito5);
                float node_6768_if_leA = step(_despacito4,node_3091);
                float node_6768_if_leB = step(node_3091,_despacito4);
                float node_6647_if_leA = step(_despacito3,node_3091);
                float node_6647_if_leB = step(node_3091,_despacito3);
                float node_9327_if_leA = step(_despacito2,node_3091);
                float node_9327_if_leB = step(node_3091,_despacito2);
                float node_4962 = (_Zoom+1.0);
                float2 node_2398_tc_rcp = float2(1.0,1.0)/float2( node_4962, node_4962 );
                float node_2398_ty = floor(_Zoom * node_2398_tc_rcp.x);
                float node_2398_tx = _Zoom - node_4962 * node_2398_ty;
                float node_6732_ang = node_4008;
                float node_6732_spd = 1.0;
                float node_6732_cos = cos(node_6732_spd*node_6732_ang);
                float node_6732_sin = sin(node_6732_spd*node_6732_ang);
                float2 node_6732_piv = float2(0.5,0.5);
                float node_2759_if_leA = step(_HighFOVboiye,node_9361);
                float node_2759_if_leB = step(node_9361,_HighFOVboiye);
                float node_3401 = (_Aberration*0.01);
                float node_4266 = ((sceneUVs.r+node_3401)+_XOffset+node_4551);
                float node_8729 = (sceneUVs.g+_YOffset+node_3859);
                float2 node_547 = float2(node_4266,node_8729);
                float2 node_6655_tc_rcp = float2(1.0,1.0)/float2( node_6918, node_4552 );
                float node_6655_ty = floor(node_4736 * node_6655_tc_rcp.x);
                float node_6655_tx = node_4736 - node_6918 * node_6655_ty;
                float2 node_6655 = (node_547 + float2(node_6655_tx, node_6655_ty)) * node_6655_tc_rcp;
                float2 node_6598_tc_rcp = float2(1.0,1.0)/float2( node_6918, node_4552 );
                float node_6598_ty = floor(node_4688 * node_6598_tc_rcp.x);
                float node_6598_tx = node_4688 - node_6918 * node_6598_ty;
                float2 node_6598 = (float2((node_4266+node_8873),node_8729) + float2(node_6598_tx, node_6598_ty)) * node_6598_tc_rcp;
                float2 node_6732 = (mul(lerp((node_2759_if_leA*node_547)+(node_2759_if_leB*node_547),saturate(( (node_6598*node_9691) > 0.5 ? (1.0-(1.0-2.0*((node_6598*node_9691)-0.5))*(1.0-node_6655)) : (2.0*(node_6598*node_9691)*node_6655) )),node_2759_if_leA*node_2759_if_leB)-node_6732_piv,float2x2( node_6732_cos, -node_6732_sin, node_6732_sin, node_6732_cos))+node_6732_piv);
                float2 node_2398 = ((reflect((_FuckeyZoom*(node_3091 - 0.5)*mul(tangentTransform, viewDirection).xy + node_6732).rg,_Reflect)+_Panner*float2(1,1)) + float2(node_2398_tx, node_2398_ty)) * node_2398_tc_rcp;
                float4 node_5991 = tex2D( _GrabTexture, node_2398);
                float2 node_4065_tc_rcp = float2(1.0,1.0)/float2( node_4962, node_4962 );
                float node_4065_ty = floor(_Zoom * node_4065_tc_rcp.x);
                float node_4065_tx = _Zoom - node_4962 * node_4065_ty;
                float2 node_4065 = (node_5463 + float2(node_4065_tx, node_4065_ty)) * node_4065_tc_rcp;
                float4 node_9130 = tex2D( _GrabTexture, node_4065);
                float2 node_7920_tc_rcp = float2(1.0,1.0)/float2( node_4962, node_4962 );
                float node_7920_ty = floor(_Zoom * node_7920_tc_rcp.x);
                float node_7920_tx = _Zoom - node_4962 * node_7920_ty;
                float node_8337_ang = node_4008;
                float node_8337_spd = 1.0;
                float node_8337_cos = cos(node_8337_spd*node_8337_ang);
                float node_8337_sin = sin(node_8337_spd*node_8337_ang);
                float2 node_8337_piv = float2(0.5,0.5);
                float node_3425_if_leA = step(_HighFOVboiye,node_9361);
                float node_3425_if_leB = step(node_9361,_HighFOVboiye);
                float node_616 = ((sceneUVs.r+(node_3401*(-1.0)))+_XOffset+node_4551);
                float node_2691 = (sceneUVs.g+_YOffset+node_3859);
                float2 node_8048 = float2(node_616,node_2691);
                float2 node_9132_tc_rcp = float2(1.0,1.0)/float2( node_6918, node_4552 );
                float node_9132_ty = floor(node_4736 * node_9132_tc_rcp.x);
                float node_9132_tx = node_4736 - node_6918 * node_9132_ty;
                float2 node_9132 = (node_8048 + float2(node_9132_tx, node_9132_ty)) * node_9132_tc_rcp;
                float2 node_1020_tc_rcp = float2(1.0,1.0)/float2( node_6918, node_4552 );
                float node_1020_ty = floor(node_4688 * node_1020_tc_rcp.x);
                float node_1020_tx = node_4688 - node_6918 * node_1020_ty;
                float2 node_1020 = (float2((node_616+node_8873),node_2691) + float2(node_1020_tx, node_1020_ty)) * node_1020_tc_rcp;
                float2 node_8337 = (mul(lerp((node_3425_if_leA*node_8048)+(node_3425_if_leB*node_8048),saturate(( (node_1020*node_9691) > 0.5 ? (1.0-(1.0-2.0*((node_1020*node_9691)-0.5))*(1.0-node_9132)) : (2.0*(node_1020*node_9691)*node_9132) )),node_3425_if_leA*node_3425_if_leB)-node_8337_piv,float2x2( node_8337_cos, -node_8337_sin, node_8337_sin, node_8337_cos))+node_8337_piv);
                float2 node_7920 = ((reflect((_FuckeyZoom*(node_3091 - 0.5)*mul(tangentTransform, viewDirection).xy + node_8337).rg,_Reflect)+_Panner*float2(1,1)) + float2(node_7920_tx, node_7920_ty)) * node_7920_tc_rcp;
                float4 node_2441 = tex2D( _GrabTexture, node_7920);
                float4 node_3504 = float4(node_5991.r,node_9130.g,node_2441.b,node_9130.a);
                float4 node_9327 = lerp((node_9327_if_leA*node_3504)+(node_9327_if_leB*(node_3504 * dot(float3(node_5991.g,node_9130.b,node_2441.r),node_3504)/dot(node_3504,node_3504))),node_3504,node_9327_if_leA*node_9327_if_leB);
                float4 node_6647 = lerp((node_6647_if_leA*node_9327)+(node_6647_if_leB*fwidth(node_9327)),node_9327,node_6647_if_leA*node_6647_if_leB);
                float4 node_6768 = lerp((node_6768_if_leA*node_6647)+(node_6768_if_leB*pow(node_6647,_niggervalues)),node_6647,node_6768_if_leA*node_6768_if_leB);
                float3 emissive = (_ScreenOverlayTexture_var.rgb*((_OverlayColor.rgb*_OverlayColor.a)*lerp(lerp((node_8663_if_leA*node_6768)+(node_8663_if_leB*(node_6768*-1.0+1.0)),node_6768,node_8663_if_leA*node_8663_if_leB),dot(lerp((node_8663_if_leA*node_6768)+(node_8663_if_leB*(node_6768*-1.0+1.0)),node_6768,node_8663_if_leA*node_8663_if_leB),float3(0.3,0.59,0.11)),_Saturation)));
                float3 finalColor = emissive;
                return fixed4(finalColor,_OverallAlpha);
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
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
