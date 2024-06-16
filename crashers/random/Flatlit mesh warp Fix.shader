// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:35317,y:32042,varname:node_4013,prsc:2|emission-6770-OUT,custl-3173-OUT,clip-1728-OUT,olwid-5078-OUT,olcol-3286-OUT,voffset-768-OUT,disp-5610-OUT,tess-4327-OUT;n:type:ShaderForge.SFN_TexCoord,id:4261,x:29498,y:32780,varname:node_4261,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:8263,x:32332,y:32636,varname:node_8263,prsc:2|A-5621-OUT,B-8036-OUT,T-1799-OUT;n:type:ShaderForge.SFN_Color,id:9030,x:31682,y:31894,ptovrint:False,ptlb:Color 1,ptin:_Color1,varname:node_9030,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:4123,x:31661,y:32168,ptovrint:False,ptlb:Color 2,ptin:_Color2,varname:node_4123,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:6159,x:30652,y:32680,varname:node_6159,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4346-OUT;n:type:ShaderForge.SFN_Clamp01,id:1799,x:31701,y:32635,varname:node_1799,prsc:2|IN-6823-OUT;n:type:ShaderForge.SFN_Sin,id:9457,x:31367,y:32618,varname:node_9457,prsc:2|IN-5188-OUT;n:type:ShaderForge.SFN_Multiply,id:5188,x:31203,y:32618,varname:node_5188,prsc:2|A-8947-OUT,B-9578-OUT,C-3257-OUT;n:type:ShaderForge.SFN_Slider,id:8947,x:30862,y:32462,ptovrint:False,ptlb:Waveform,ptin:_Waveform,varname:node_8947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:20;n:type:ShaderForge.SFN_Tex2d,id:7388,x:33671,y:31298,ptovrint:False,ptlb:Albedo,ptin:_Albedo,varname:node_7388,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-2232-OUT;n:type:ShaderForge.SFN_RemapRange,id:6823,x:31528,y:32618,varname:node_6823,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9457-OUT;n:type:ShaderForge.SFN_Tau,id:3257,x:31067,y:32793,varname:node_3257,prsc:2;n:type:ShaderForge.SFN_Add,id:9578,x:30991,y:32655,varname:node_9578,prsc:2|A-8616-OUT,B-585-OUT,C-444-OUT;n:type:ShaderForge.SFN_Time,id:957,x:30773,y:33002,varname:node_957,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8500,x:33051,y:32570,varname:node_8500,prsc:2|A-8263-OUT,B-2911-OUT;n:type:ShaderForge.SFN_Slider,id:2911,x:32109,y:32765,ptovrint:False,ptlb:Emission Strength,ptin:_EmissionStrength,varname:node_2911,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5621,x:31885,y:31978,varname:node_5621,prsc:2|A-9030-RGB,B-4909-OUT;n:type:ShaderForge.SFN_Multiply,id:8036,x:31885,y:32229,varname:node_8036,prsc:2|A-4123-RGB,B-3823-OUT;n:type:ShaderForge.SFN_Slider,id:4909,x:31472,y:32060,ptovrint:False,ptlb:color 1 amount,ptin:_color1amount,varname:node_4909,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:3823,x:31166,y:32083,ptovrint:False,ptlb:Color 2 amount,ptin:_Color2amount,varname:node_3823,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7714,x:31868,y:32789,varname:node_7714,prsc:2|A-1799-OUT,B-1872-OUT,C-846-OUT;n:type:ShaderForge.SFN_Slider,id:846,x:31546,y:32975,ptovrint:False,ptlb:Deform Amount,ptin:_DeformAmount,varname:node_846,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.5;n:type:ShaderForge.SFN_NormalVector,id:1872,x:31677,y:32789,prsc:2,pt:True;n:type:ShaderForge.SFN_TexCoord,id:9839,x:31869,y:31023,varname:node_9839,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:560,x:32251,y:31311,varname:node_560,prsc:2|IN-6505-OUT,IMIN-8802-OUT,IMAX-6603-OUT,OMIN-7695-OUT,OMAX-7629-OUT;n:type:ShaderForge.SFN_Slider,id:8802,x:31904,y:31293,ptovrint:False,ptlb:imin,ptin:_imin,varname:node_8802,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6603,x:31904,y:31376,ptovrint:False,ptlb:imax,ptin:_imax,varname:_node_8802_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:7695,x:31904,y:31460,ptovrint:False,ptlb:omin,ptin:_omin,varname:_node_8802_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7629,x:31904,y:31542,ptovrint:False,ptlb:omax,ptin:_omax,varname:_node_8802_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:4346,x:30490,y:32620,ptovrint:False,ptlb:Vertical Lines,ptin:_VerticalLines,varname:node_4346,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6270-RGB,B-1320-OUT;n:type:ShaderForge.SFN_Color,id:6270,x:30307,y:32506,ptovrint:False,ptlb:Pulse Color Fallback,ptin:_PulseColorFallback,varname:node_6270,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:3397,x:30490,y:32772,ptovrint:False,ptlb:Horizontal Lines,ptin:_HorizontalLines,varname:_node_4346_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6270-RGB,B-5875-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8616,x:30771,y:32555,ptovrint:False,ptlb:Vertical Lines 2,ptin:_VerticalLines2,varname:_Horizontallines_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6270-RGB,B-6159-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1077,x:30652,y:32836,varname:node_1077,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3397-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:585,x:30786,y:32731,ptovrint:False,ptlb:Horizontal Lines 2,ptin:_HorizontalLines2,varname:_Horizontallines_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6270-RGB,B-1077-OUT;n:type:ShaderForge.SFN_Add,id:8170,x:32657,y:31509,varname:node_8170,prsc:2|A-560-OUT,B-1465-OUT;n:type:ShaderForge.SFN_Time,id:3668,x:32186,y:31650,varname:node_3668,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:7798,x:32703,y:31349,ptovrint:False,ptlb:texmove,ptin:_texmove,varname:node_7798,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-560-OUT,B-8170-OUT;n:type:ShaderForge.SFN_Multiply,id:1465,x:32550,y:31676,varname:node_1465,prsc:2|A-3668-TSL,B-5694-OUT;n:type:ShaderForge.SFN_Slider,id:3801,x:32130,y:31784,ptovrint:False,ptlb:U Speed Tex,ptin:_USpeedTex,varname:node_3801,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Multiply,id:4016,x:33831,y:31668,varname:node_4016,prsc:2|A-8293-OUT,B-7080-RGB,C-5040-OUT;n:type:ShaderForge.SFN_Color,id:7080,x:33280,y:32418,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_7080,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:5875,x:30131,y:32864,ptovrint:False,ptlb:World Placement Horizontal,ptin:_WorldPlacementHorizontal,varname:node_5875,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4261-U,B-8696-X;n:type:ShaderForge.SFN_SwitchProperty,id:1320,x:30137,y:32581,ptovrint:False,ptlb:World Placement Vertical,ptin:_WorldPlacementVertical,varname:_WorldPlacement_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4261-V,B-8696-Y;n:type:ShaderForge.SFN_FragmentPosition,id:8696,x:29769,y:32603,varname:node_8696,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:444,x:31034,y:32944,ptovrint:False,ptlb:Moving Emission,ptin:_MovingEmission,varname:_HorizontalLines3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6287-OUT,B-957-TSL;n:type:ShaderForge.SFN_Vector1,id:6287,x:30838,y:32944,varname:node_6287,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:4279,x:32380,y:34688,ptovrint:False,ptlb:Tessalation Strength,ptin:_TessalationStrength,varname:node_4279,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.1,max:20;n:type:ShaderForge.SFN_Multiply,id:5610,x:32864,y:33062,varname:node_5610,prsc:2|A-1313-OUT,B-9123-OUT;n:type:ShaderForge.SFN_NormalVector,id:1313,x:32681,y:33076,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:9123,x:32585,y:33899,varname:node_9123,prsc:2|A-2885-RGB,B-3217-OUT;n:type:ShaderForge.SFN_Tex2d,id:2885,x:32253,y:33876,ptovrint:False,ptlb:Height,ptin:_Height,varname:node_2885,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8661-OUT;n:type:ShaderForge.SFN_Slider,id:237,x:32002,y:33438,ptovrint:False,ptlb:Displacement value,ptin:_Displacementvalue,varname:node_237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:3673,x:33065,y:33538,ptovrint:False,ptlb:Animated Tessalation,ptin:_AnimatedTessalation,varname:node_3673,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9623-OUT,B-7628-OUT;n:type:ShaderForge.SFN_Time,id:5639,x:32059,y:34663,varname:node_5639,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:4327,x:32962,y:33341,ptovrint:False,ptlb:Tessalation,ptin:_Tessalation,varname:node_4327,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2035-OUT,B-3673-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2035,x:32786,y:34469,ptovrint:False,ptlb:node_2035,ptin:_node_2035,varname:node_2035,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:7628,x:33005,y:34320,varname:node_7628,prsc:2|A-4279-OUT,B-3592-OUT;n:type:ShaderForge.SFN_Sin,id:7184,x:32448,y:34777,varname:node_7184,prsc:2|IN-600-OUT;n:type:ShaderForge.SFN_Vector1,id:350,x:32263,y:34615,varname:node_350,prsc:2,v1:50;n:type:ShaderForge.SFN_RemapRange,id:3592,x:32663,y:34818,varname:node_3592,prsc:2,frmn:0,frmx:1,tomn:0.7,tomx:0.9|IN-7184-OUT;n:type:ShaderForge.SFN_Multiply,id:600,x:32243,y:34711,varname:node_600,prsc:2|A-5639-TSL,B-9786-OUT;n:type:ShaderForge.SFN_Slider,id:9786,x:31902,y:34842,ptovrint:False,ptlb:Tessalation Speed,ptin:_TessalationSpeed,varname:node_9786,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:4900,x:32130,y:31871,ptovrint:False,ptlb:V speed tex,ptin:_Vspeedtex,varname:_TexmovSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Append,id:5694,x:32470,y:31813,varname:node_5694,prsc:2|A-3801-OUT,B-4900-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9733,x:32074,y:32893,ptovrint:False,ptlb:Wave warping/Noise warping,ptin:_WavewarpingNoisewarping,varname:node_9733,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1163-OUT,B-7714-OUT;n:type:ShaderForge.SFN_Tex2d,id:9269,x:31839,y:33038,ptovrint:False,ptlb:Noise warp tex,ptin:_Noisewarptex,varname:node_9269,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2005-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2005,x:31651,y:33099,ptovrint:False,ptlb:Animated Noise Warping,ptin:_AnimatedNoiseWarping,varname:node_2005,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3910-UVOUT,B-3783-OUT;n:type:ShaderForge.SFN_Multiply,id:1163,x:32056,y:33073,varname:node_1163,prsc:2|A-9269-R,B-1718-OUT;n:type:ShaderForge.SFN_Slider,id:1718,x:31806,y:33257,ptovrint:False,ptlb:Noise warp strength,ptin:_Noisewarpstrength,varname:node_1718,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:3910,x:31265,y:32944,varname:node_3910,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:4986,x:31030,y:33323,varname:node_4986,prsc:2;n:type:ShaderForge.SFN_Slider,id:2971,x:30952,y:33467,ptovrint:False,ptlb:U speed noise warp,ptin:_Uspeednoisewarp,varname:node_2971,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6540,x:30952,y:33548,ptovrint:False,ptlb:V speed noise warp,ptin:_Vspeednoisewarp,varname:_Uspeednoisewarp_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:9995,x:31252,y:33495,varname:node_9995,prsc:2|A-2971-OUT,B-6540-OUT;n:type:ShaderForge.SFN_Multiply,id:1429,x:31252,y:33385,varname:node_1429,prsc:2|A-4986-T,B-9995-OUT;n:type:ShaderForge.SFN_Add,id:3783,x:31309,y:33265,varname:node_3783,prsc:2|A-3910-UVOUT,B-1429-OUT;n:type:ShaderForge.SFN_TexCoord,id:3199,x:31837,y:30370,varname:node_3199,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:7407,x:32384,y:30812,varname:node_7407,prsc:2;n:type:ShaderForge.SFN_Append,id:4963,x:32606,y:30984,varname:node_4963,prsc:2|A-7719-OUT,B-1485-OUT;n:type:ShaderForge.SFN_Multiply,id:9467,x:32606,y:30874,varname:node_9467,prsc:2|A-7407-T,B-4963-OUT;n:type:ShaderForge.SFN_Add,id:7371,x:32702,y:30332,varname:node_7371,prsc:2|A-7220-OUT,B-9467-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7857,x:33391,y:31303,ptovrint:False,ptlb:noise uv tex distortion,ptin:_noiseuvtexdistortion,varname:node_7857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7798-OUT,B-117-OUT;n:type:ShaderForge.SFN_Tex2d,id:9198,x:32975,y:30928,ptovrint:False,ptlb:noise uv distort tex,ptin:_noiseuvdistorttex,varname:node_9198,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6797-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6797,x:32822,y:30838,ptovrint:False,ptlb:animated noise UV distortion,ptin:_animatednoiseUVdistortion,varname:node_6797,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7220-OUT,B-7371-OUT;n:type:ShaderForge.SFN_Slider,id:7719,x:32275,y:30954,ptovrint:False,ptlb:U speed Noise UV distort,ptin:_UspeedNoiseUVdistort,varname:node_7719,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1485,x:32275,y:31045,ptovrint:False,ptlb:V speed Noise UV distort,ptin:_VspeedNoiseUVdistort,varname:_node_7719_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:3345,x:32868,y:31085,varname:node_3345,prsc:2|A-7798-OUT,B-9198-R,T-5068-OUT;n:type:ShaderForge.SFN_Slider,id:5068,x:32527,y:31196,ptovrint:False,ptlb:noise uv distort strength,ptin:_noiseuvdistortstrength,varname:node_5068,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:2487,x:31154,y:32063,varname:node_2487,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:117,x:33130,y:31139,varname:node_117,prsc:2|A-2369-OUT,B-3345-OUT,T-5353-R;n:type:ShaderForge.SFN_TexCoord,id:9442,x:33177,y:30998,varname:node_9442,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:5353,x:32934,y:31219,ptovrint:False,ptlb:UV distort mask,ptin:_UVdistortmask,varname:node_5353,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_SwitchProperty,id:9623,x:32914,y:33572,ptovrint:False,ptlb:Fur Tessalation,ptin:_FurTessalation,varname:node_9623,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4279-OUT,B-2721-OUT;n:type:ShaderForge.SFN_Multiply,id:2721,x:32837,y:34586,varname:node_2721,prsc:2|A-175-R,B-350-OUT,C-4279-OUT;n:type:ShaderForge.SFN_Tex2d,id:175,x:32613,y:34460,ptovrint:False,ptlb:Fur noise map,ptin:_Furnoisemap,varname:node_175,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-387-OUT;n:type:ShaderForge.SFN_TexCoord,id:9147,x:30985,y:34442,varname:node_9147,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:387,x:32442,y:34460,varname:node_387,prsc:2|A-9550-OUT,B-6317-OUT;n:type:ShaderForge.SFN_Slider,id:9176,x:31593,y:34472,ptovrint:False,ptlb:u tess speed,ptin:_utessspeed,varname:node_9176,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:8259,x:31593,y:34555,ptovrint:False,ptlb:v tess speed,ptin:_vtessspeed,varname:_node_9176_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:6317,x:31921,y:34518,varname:node_6317,prsc:2|A-9176-OUT,B-8259-OUT;n:type:ShaderForge.SFN_Slider,id:5519,x:34432,y:33561,ptovrint:False,ptlb:Outline Width,ptin:_OutlineWidth,varname:_OutlineWidth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Tex2d,id:7179,x:34552,y:33900,ptovrint:False,ptlb:Outline Texture,ptin:_OutlineTexture,varname:_OutlineNoise_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8467-OUT;n:type:ShaderForge.SFN_TexCoord,id:5113,x:34070,y:33851,varname:node_5113,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:6096,x:33573,y:33867,ptovrint:False,ptlb:Outline U speed,ptin:_OutlineUspeed,varname:_OutlineUspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4500,x:33573,y:33949,ptovrint:False,ptlb:Outline V speed,ptin:_OutlineVspeed,varname:_OutlineVspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:1792,x:33933,y:33959,varname:node_1792,prsc:2|A-6096-OUT,B-4500-OUT;n:type:ShaderForge.SFN_Multiply,id:8569,x:34113,y:33982,varname:node_8569,prsc:2|A-2032-T,B-1792-OUT;n:type:ShaderForge.SFN_Time,id:2032,x:33923,y:33861,varname:node_2032,prsc:2;n:type:ShaderForge.SFN_Add,id:8467,x:34223,y:33879,varname:node_8467,prsc:2|A-5113-UVOUT,B-8569-OUT;n:type:ShaderForge.SFN_Color,id:4535,x:34731,y:34283,ptovrint:False,ptlb:Outline color_copy,ptin:_Outlinecolor_copy,varname:_Outlinecolor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:2014,x:34896,y:34200,varname:node_2014,prsc:2|A-4535-RGB,B-6535-OUT;n:type:ShaderForge.SFN_Slider,id:6535,x:34603,y:34151,ptovrint:False,ptlb:outline color strength,ptin:_outlinecolorstrength,varname:_outlinecolorstrength_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8058253,max:1;n:type:ShaderForge.SFN_Multiply,id:3286,x:34784,y:33969,varname:node_3286,prsc:2|A-7179-RGB,B-2014-OUT;n:type:ShaderForge.SFN_Multiply,id:5078,x:34710,y:33674,varname:node_5078,prsc:2|A-6538-R,B-5519-OUT;n:type:ShaderForge.SFN_TexCoord,id:6959,x:33929,y:33512,varname:node_6959,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:4205,x:33779,y:33658,varname:node_4205,prsc:2|A-5291-OUT,B-2127-OUT;n:type:ShaderForge.SFN_Multiply,id:6845,x:33959,y:33681,varname:node_6845,prsc:2|A-5237-T,B-4205-OUT;n:type:ShaderForge.SFN_Time,id:5237,x:33769,y:33560,varname:node_5237,prsc:2;n:type:ShaderForge.SFN_Add,id:272,x:34198,y:33591,varname:node_272,prsc:2|A-4416-OUT,B-6845-OUT;n:type:ShaderForge.SFN_Tex2d,id:6538,x:34387,y:33750,ptovrint:False,ptlb:Outline width noise map,ptin:_Outlinewidthnoisemap,varname:_Outlinewidthnoisemap_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-272-OUT;n:type:ShaderForge.SFN_Slider,id:5291,x:33406,y:33561,ptovrint:False,ptlb:outline u speed width,ptin:_outlineuspeedwidth,varname:_outlineusppedwidth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2127,x:33406,y:33646,ptovrint:False,ptlb:outline v speed width,ptin:_outlinevspeedwidth,varname:_outlinevspeedwidth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:9677,x:33718,y:33316,varname:node_9677,prsc:2|A-9068-OUT,B-1428-OUT;n:type:ShaderForge.SFN_Multiply,id:1044,x:33892,y:33299,varname:node_1044,prsc:2|A-5304-T,B-9677-OUT;n:type:ShaderForge.SFN_Time,id:5304,x:33702,y:33120,varname:node_5304,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4442,x:34120,y:33106,ptovrint:False,ptlb:Noise outline Warp,ptin:_NoiseoutlineWarp,varname:_NoiseoutlineWarp_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:08faec75ff46e384e9a350e5eccfd719,ntxv:0,isnm:False|UVIN-4794-OUT;n:type:ShaderForge.SFN_TexCoord,id:2713,x:33858,y:33053,varname:node_2713,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:4794,x:33963,y:33170,varname:node_4794,prsc:2|A-2713-UVOUT,B-1044-OUT;n:type:ShaderForge.SFN_Lerp,id:4416,x:34290,y:33265,varname:node_4416,prsc:2|A-6959-UVOUT,B-4442-R,T-8574-OUT;n:type:ShaderForge.SFN_Slider,id:8574,x:33987,y:33401,ptovrint:False,ptlb:Noise outline warp strength,ptin:_Noiseoutlinewarpstrength,varname:_node_2202_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9068,x:33349,y:33297,ptovrint:False,ptlb:Nosie outline warp u speed,ptin:_Nosieoutlinewarpuspeed,varname:node_9068,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1428,x:33349,y:33384,ptovrint:False,ptlb:noise outline warp v speed,ptin:_noiseoutlinewarpvspeed,varname:_node_9068_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:3217,x:31988,y:33567,ptovrint:False,ptlb:Animated displacement,ptin:_Animateddisplacement,varname:node_3217,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-237-OUT,B-2745-OUT;n:type:ShaderForge.SFN_Multiply,id:1947,x:31448,y:33409,varname:node_1947,prsc:2|A-237-OUT,B-3012-T;n:type:ShaderForge.SFN_Time,id:3012,x:31323,y:33689,varname:node_3012,prsc:2;n:type:ShaderForge.SFN_Sin,id:5567,x:31596,y:33377,varname:node_5567,prsc:2|IN-1947-OUT;n:type:ShaderForge.SFN_Rotator,id:5240,x:32691,y:32002,varname:node_5240,prsc:2|UVIN-2369-OUT,ANG-1690-OUT,SPD-9093-OUT;n:type:ShaderForge.SFN_Slider,id:1690,x:32130,y:31953,ptovrint:False,ptlb:MainTex rotate angle,ptin:_MainTexrotateangle,varname:node_1690,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:9093,x:32130,y:32032,ptovrint:False,ptlb:MainTex rotate speed,ptin:_MainTexrotatespeed,varname:_node_1690_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_SwitchProperty,id:6505,x:32788,y:31802,ptovrint:False,ptlb:Animated Main Tex Rotation,ptin:_AnimatedMainTexRotation,varname:node_6505,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5240-UVOUT,B-461-OUT;n:type:ShaderForge.SFN_Time,id:5854,x:32817,y:32041,varname:node_5854,prsc:2;n:type:ShaderForge.SFN_Add,id:461,x:32997,y:31980,varname:node_461,prsc:2|A-5240-UVOUT,B-5854-TSL;n:type:ShaderForge.SFN_Rotator,id:9208,x:31990,y:30586,varname:node_9208,prsc:2|UVIN-3199-UVOUT,ANG-7094-OUT,SPD-3521-OUT;n:type:ShaderForge.SFN_Slider,id:7094,x:31620,y:30587,ptovrint:False,ptlb:Maintex UV warp rotation angle,ptin:_MaintexUVwarprotationangle,varname:node_7094,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:3521,x:31620,y:30671,ptovrint:False,ptlb:Maintex UV warp rotation Speed,ptin:_MaintexUVwarprotationSpeed,varname:_MaintexUVwarpangle_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_SwitchProperty,id:7220,x:32269,y:30421,ptovrint:False,ptlb:Maintex UV animated distort Rotation,ptin:_MaintexUVanimateddistortRotation,varname:node_7220,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9208-UVOUT,B-4085-OUT;n:type:ShaderForge.SFN_Time,id:613,x:32074,y:30733,varname:node_613,prsc:2;n:type:ShaderForge.SFN_Add,id:4085,x:32223,y:30655,varname:node_4085,prsc:2|A-9208-UVOUT,B-613-TSL;n:type:ShaderForge.SFN_Rotator,id:1853,x:31270,y:34458,varname:node_1853,prsc:2|UVIN-9147-UVOUT,ANG-4479-OUT,SPD-1997-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9550,x:31578,y:34692,ptovrint:False,ptlb:Fur animated rotation,ptin:_Furanimatedrotation,varname:node_9550,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1853-UVOUT,B-3781-OUT;n:type:ShaderForge.SFN_Add,id:3781,x:31384,y:34778,varname:node_3781,prsc:2|A-1853-UVOUT,B-6703-TSL;n:type:ShaderForge.SFN_Time,id:6703,x:31205,y:34819,varname:node_6703,prsc:2;n:type:ShaderForge.SFN_Slider,id:4479,x:30828,y:34666,ptovrint:False,ptlb:Fur Tess Angle,ptin:_FurTessAngle,varname:node_4479,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:1997,x:30853,y:34750,ptovrint:False,ptlb:Fur Tess Speed,ptin:_FurTessSpeed,varname:_FurTessAngle_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_TexCoord,id:8623,x:31305,y:33872,varname:node_8623,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:4826,x:31528,y:33872,varname:node_4826,prsc:2|UVIN-8623-UVOUT,ANG-5267-OUT,SPD-689-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3826,x:31728,y:33888,ptovrint:False,ptlb:Animated Height Rotation,ptin:_AnimatedHeightRotation,varname:node_3826,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4826-UVOUT,B-3722-OUT;n:type:ShaderForge.SFN_Time,id:1065,x:31544,y:34127,varname:node_1065,prsc:2;n:type:ShaderForge.SFN_Add,id:3722,x:31691,y:34044,varname:node_3722,prsc:2|A-4826-UVOUT,B-1065-TSL;n:type:ShaderForge.SFN_Slider,id:5267,x:31189,y:34039,ptovrint:False,ptlb:Heightmap Rotation Angle,ptin:_HeightmapRotationAngle,varname:node_5267,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:689,x:31189,y:34122,ptovrint:False,ptlb:Heightmap rotation speed,ptin:_Heightmaprotationspeed,varname:node_689,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:8661,x:32040,y:33859,ptovrint:False,ptlb:Animated Heightmap,ptin:_AnimatedHeightmap,varname:node_8661,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3826-OUT,B-7147-OUT;n:type:ShaderForge.SFN_Add,id:7147,x:32040,y:33994,varname:node_7147,prsc:2|A-3826-OUT,B-903-OUT;n:type:ShaderForge.SFN_Multiply,id:903,x:32001,y:34144,varname:node_903,prsc:2|A-4040-OUT,B-5006-TSL;n:type:ShaderForge.SFN_Time,id:5006,x:31821,y:34098,varname:node_5006,prsc:2;n:type:ShaderForge.SFN_Append,id:4040,x:31839,y:34268,varname:node_4040,prsc:2|A-5135-OUT,B-2339-OUT;n:type:ShaderForge.SFN_Slider,id:5135,x:31491,y:34265,ptovrint:False,ptlb:Heightmap U speed,ptin:_HeightmapUspeed,varname:node_5135,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:2339,x:31491,y:34346,ptovrint:False,ptlb:Heightmap V speed,ptin:_HeightmapVspeed,varname:node_2339,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2745,x:31819,y:33592,varname:node_2745,prsc:2|IN-5567-OUT,IMIN-2040-OUT,IMAX-5812-OUT,OMIN-3390-OUT,OMAX-6795-OUT;n:type:ShaderForge.SFN_Slider,id:2040,x:31468,y:33544,ptovrint:False,ptlb:Displacement Imin,ptin:_DisplacementImin,varname:node_2040,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5812,x:31468,y:33625,ptovrint:False,ptlb:Displacement Imax,ptin:_DisplacementImax,varname:_node_2040_copy,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3390,x:31468,y:33702,ptovrint:False,ptlb:Displacement omax,ptin:_Displacementomax,varname:_node_2040_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6795,x:31468,y:33779,ptovrint:False,ptlb:Displacement omin,ptin:_Displacementomin,varname:_node_2040_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5249,x:32951,y:31726,ptovrint:False,ptlb:Alpha Cutoff,ptin:_AlphaCutoff,varname:node_5249,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3;n:type:ShaderForge.SFN_SwitchProperty,id:2232,x:33882,y:31035,ptovrint:False,ptlb:Pixelate,ptin:_Pixelate,varname:node_2232,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7857-OUT,B-8227-OUT;n:type:ShaderForge.SFN_Slider,id:5347,x:33272,y:30775,ptovrint:False,ptlb:Pixelation Strength,ptin:_PixelationStrength,varname:node_5347,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.1,max:200;n:type:ShaderForge.SFN_Multiply,id:6982,x:33585,y:30981,varname:node_6982,prsc:2|A-7857-OUT,B-9364-OUT;n:type:ShaderForge.SFN_Floor,id:4852,x:34010,y:30941,varname:node_4852,prsc:2|IN-6982-OUT;n:type:ShaderForge.SFN_Divide,id:8227,x:34209,y:30997,varname:node_8227,prsc:2|A-4852-OUT,B-9364-OUT;n:type:ShaderForge.SFN_Abs,id:5211,x:33718,y:30753,varname:node_5211,prsc:2|IN-5347-OUT;n:type:ShaderForge.SFN_Ceil,id:9364,x:33902,y:30753,varname:node_9364,prsc:2|IN-5211-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9304,x:33543,y:33058,ptovrint:False,ptlb:Noise Stretch warp,ptin:_NoiseStretchwarp,varname:_Pixelate_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1958-OUT,B-8624-RGB;n:type:ShaderForge.SFN_Slider,id:7051,x:33399,y:32645,ptovrint:False,ptlb:Noise Stretch warp Strength,ptin:_NoiseStretchwarpStrength,varname:_PixelationStrength_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:20;n:type:ShaderForge.SFN_Multiply,id:217,x:33619,y:32812,varname:node_217,prsc:2|A-3733-UVOUT,B-7051-OUT;n:type:ShaderForge.SFN_TexCoord,id:3733,x:33399,y:32774,varname:node_3733,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:768,x:32835,y:32930,varname:node_768,prsc:2|A-9733-OUT,B-9304-OUT;n:type:ShaderForge.SFN_Vector1,id:9432,x:33101,y:32809,varname:node_9432,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1958,x:33274,y:33077,varname:node_1958,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:8624,x:33838,y:32819,ptovrint:False,ptlb:Noise Stretch Warp,ptin:_NoiseStretchWarp,varname:node_8624,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7e6b23f04168d644690ea098a0e59514,ntxv:0,isnm:False|UVIN-217-OUT;n:type:ShaderForge.SFN_Multiply,id:2435,x:32376,y:32345,varname:node_2435,prsc:2|A-3344-OUT,B-3440-OUT;n:type:ShaderForge.SFN_Floor,id:4530,x:32721,y:32280,varname:node_4530,prsc:2|IN-2435-OUT;n:type:ShaderForge.SFN_Divide,id:6511,x:33001,y:32311,varname:node_6511,prsc:2|A-4530-OUT,B-3440-OUT;n:type:ShaderForge.SFN_Abs,id:7856,x:32509,y:32117,varname:node_7856,prsc:2|IN-2634-OUT;n:type:ShaderForge.SFN_Ceil,id:3440,x:32693,y:32117,varname:node_3440,prsc:2|IN-7856-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6190,x:32687,y:32503,ptovrint:False,ptlb:Overlay,ptin:_Overlay,varname:node_6190,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3107-OUT,B-4160-OUT;n:type:ShaderForge.SFN_Slider,id:2634,x:32100,y:32148,ptovrint:False,ptlb:Overlay Pixelation,ptin:_OverlayPixelation,varname:node_2634,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.1,max:500;n:type:ShaderForge.SFN_Vector1,id:3107,x:32156,y:32362,varname:node_3107,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:160,x:32156,y:32478,ptovrint:False,ptlb:Overlay Tex,ptin:_OverlayTex,varname:node_160,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2505-OUT;n:type:ShaderForge.SFN_Add,id:1996,x:32035,y:32456,varname:node_1996,prsc:2|A-8721-OUT,B-6511-OUT;n:type:ShaderForge.SFN_Slider,id:5495,x:31377,y:32467,ptovrint:False,ptlb:Overlay U speed,ptin:_OverlayUspeed,varname:node_5495,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:190,x:31390,y:32551,ptovrint:False,ptlb:Overlay V speed,ptin:_OverlayVspeed,varname:_OverlayUspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Append,id:165,x:31701,y:32486,varname:node_165,prsc:2|A-5495-OUT,B-190-OUT;n:type:ShaderForge.SFN_Multiply,id:3188,x:31814,y:32421,varname:node_3188,prsc:2|A-165-OUT,B-5905-TSL;n:type:ShaderForge.SFN_Time,id:5905,x:31562,y:32326,varname:node_5905,prsc:2;n:type:ShaderForge.SFN_Add,id:8721,x:31754,y:32315,varname:node_8721,prsc:2|A-3344-OUT,B-3188-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4822,x:32064,y:32257,ptovrint:False,ptlb:World Space Overlay,ptin:_WorldSpaceOverlay,varname:node_4822,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9247-UVOUT,B-4101-XYZ;n:type:ShaderForge.SFN_TexCoord,id:9247,x:31919,y:32155,varname:node_9247,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:4160,x:32509,y:32503,varname:node_4160,prsc:2|A-5418-OUT,B-6518-OUT;n:type:ShaderForge.SFN_Color,id:4355,x:32614,y:32745,ptovrint:False,ptlb:Overlay Color,ptin:_OverlayColor,varname:node_4355,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:6012,x:32579,y:32880,ptovrint:False,ptlb:Overlay Color Strength,ptin:_OverlayColorStrength,varname:node_6012,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:6518,x:32844,y:32732,varname:node_6518,prsc:2|A-4355-RGB,B-6012-OUT;n:type:ShaderForge.SFN_Tex2d,id:2643,x:30229,y:31661,ptovrint:False,ptlb:Overlay Noise Warp Tex,ptin:_OverlayNoiseWarpTex,varname:node_2643,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8701-OUT;n:type:ShaderForge.SFN_Multiply,id:7344,x:30154,y:31915,varname:node_7344,prsc:2|A-9394-OUT,B-7285-OUT;n:type:ShaderForge.SFN_Add,id:8701,x:29986,y:31650,varname:node_8701,prsc:2|A-1996-OUT,B-7344-OUT;n:type:ShaderForge.SFN_Append,id:9394,x:30136,y:32099,varname:node_9394,prsc:2|A-9928-OUT,B-1707-OUT;n:type:ShaderForge.SFN_Slider,id:9928,x:29657,y:32090,ptovrint:False,ptlb:Overlay Noise warp U speed,ptin:_OverlayNoisewarpUspeed,varname:node_9928,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_SwitchProperty,id:2505,x:30674,y:31643,ptovrint:False,ptlb:Overlay noise warp?,ptin:_Overlaynoisewarp,varname:node_2505,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1996-OUT,B-3313-OUT;n:type:ShaderForge.SFN_Lerp,id:3313,x:30423,y:31533,varname:node_3313,prsc:2|A-1996-OUT,B-2643-R,T-7442-OUT;n:type:ShaderForge.SFN_Slider,id:7442,x:30015,y:31476,ptovrint:False,ptlb:Distortion Overlay Strength,ptin:_DistortionOverlayStrength,varname:node_7442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1707,x:29667,y:32175,ptovrint:False,ptlb:Overlay Noise warp V speed,ptin:_OverlayNoisewarpVspeed,varname:_OverlayNoisewarpUspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Time,id:4115,x:29560,y:31905,varname:node_4115,prsc:2;n:type:ShaderForge.SFN_Vector1,id:6361,x:29560,y:31839,varname:node_6361,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:7285,x:29725,y:31890,ptovrint:False,ptlb:Animated Overlay Noise warp?,ptin:_AnimatedOverlayNoisewarp,varname:node_7285,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6361-OUT,B-4115-TSL;n:type:ShaderForge.SFN_FragmentPosition,id:4101,x:31893,y:32586,varname:node_4101,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:3344,x:32346,y:32216,ptovrint:False,ptlb:Screen Space Overlay?,ptin:_ScreenSpaceOverlay,varname:node_3344,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4822-OUT,B-642-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:642,x:32156,y:32155,varname:node_642,prsc:2,sctp:2;n:type:ShaderForge.SFN_SwitchProperty,id:2369,x:32096,y:31033,ptovrint:False,ptlb:World Space Maintex,ptin:_WorldSpaceMaintex,varname:node_2369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9839-UVOUT,B-2961-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:2961,x:31908,y:30893,varname:node_2961,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:6271,x:34296,y:32124,ptovrint:False,ptlb:Cell Shading,ptin:_CellShading,varname:node_6271,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2207-OUT,B-3794-OUT;n:type:ShaderForge.SFN_Vector1,id:2207,x:34279,y:31944,varname:node_2207,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:3794,x:34108,y:32002,varname:node_3794,prsc:2|A-9688-OUT,B-5878-RGB;n:type:ShaderForge.SFN_Fresnel,id:9688,x:33993,y:31925,varname:node_9688,prsc:2|EXP-9525-OUT;n:type:ShaderForge.SFN_Slider,id:9525,x:33612,y:31933,ptovrint:False,ptlb:Cell Shading Amount,ptin:_CellShadingAmount,varname:node_9525,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:0,max:10;n:type:ShaderForge.SFN_Cubemap,id:5878,x:33717,y:32037,ptovrint:False,ptlb:Cellshading Cubemap,ptin:_CellshadingCubemap,varname:node_5878,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:-1|DIR-1149-OUT,MIP-4666-OUT;n:type:ShaderForge.SFN_Slider,id:4666,x:33243,y:32110,ptovrint:False,ptlb:Cubemap reflection bluriness,ptin:_Cubemapreflectionbluriness,varname:node_4666,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:8029,x:34361,y:32239,ptovrint:False,ptlb:Edge Glow,ptin:_EdgeGlow,varname:node_8029,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2207-OUT,B-9757-OUT;n:type:ShaderForge.SFN_Fresnel,id:6624,x:33677,y:32231,varname:node_6624,prsc:2|EXP-4092-OUT;n:type:ShaderForge.SFN_Slider,id:1299,x:33254,y:32348,ptovrint:False,ptlb:Edge Strength,ptin:_EdgeStrength,varname:node_1299,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:4924,x:33861,y:32477,ptovrint:False,ptlb:Edge Color,ptin:_EdgeColor,varname:node_4924,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Smoothstep,id:5372,x:33959,y:32283,varname:node_5372,prsc:2|A-6402-OUT,B-6685-OUT,V-6624-OUT;n:type:ShaderForge.SFN_Vector1,id:6402,x:33783,y:32196,varname:node_6402,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:3644,x:34182,y:32555,varname:node_3644,prsc:2|A-4924-RGB,B-1482-OUT;n:type:ShaderForge.SFN_Slider,id:9666,x:33720,y:32621,ptovrint:False,ptlb:Edge Color Strength,ptin:_EdgeColorStrength,varname:node_9666,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:1482,x:33999,y:32598,varname:node_1482,prsc:2,frmn:0,frmx:1,tomn:0,tomx:3|IN-9666-OUT;n:type:ShaderForge.SFN_Slider,id:4461,x:33384,y:32518,ptovrint:False,ptlb:Edge Hardness,ptin:_EdgeHardness,varname:node_4461,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:6685,x:33720,y:32397,varname:node_6685,prsc:2,frmn:0,frmx:1,tomn:0.3,tomx:0.01|IN-4461-OUT;n:type:ShaderForge.SFN_RemapRange,id:4092,x:33530,y:32292,varname:node_4092,prsc:2,frmn:0,frmx:1,tomn:15,tomx:0|IN-1299-OUT;n:type:ShaderForge.SFN_Multiply,id:9757,x:34054,y:32359,varname:node_9757,prsc:2|A-5372-OUT,B-3644-OUT;n:type:ShaderForge.SFN_Subtract,id:3113,x:34750,y:32353,varname:node_3113,prsc:2|A-7388-A,B-2952-OUT;n:type:ShaderForge.SFN_Slider,id:2952,x:34411,y:32433,ptovrint:False,ptlb:Transparency Strength,ptin:_TransparencyStrength,varname:node_2952,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:1728,x:34928,y:32376,ptovrint:False,ptlb:Transparent Texture?,ptin:_TransparentTexture,varname:node_1728,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-233-OUT,B-3113-OUT;n:type:ShaderForge.SFN_Vector1,id:233,x:34730,y:32204,varname:node_233,prsc:2,v1:1;n:type:ShaderForge.SFN_Subtract,id:5040,x:33438,y:31601,varname:node_5040,prsc:2|A-7388-A,B-5249-OUT;n:type:ShaderForge.SFN_Add,id:1761,x:34855,y:31931,varname:node_1761,prsc:2|A-4016-OUT,B-6190-OUT,C-6271-OUT,D-8029-OUT,E-8500-OUT;n:type:ShaderForge.SFN_Multiply,id:5827,x:33453,y:31471,varname:node_5827,prsc:2|A-5658-RGB,B-1177-RGB;n:type:ShaderForge.SFN_LightColor,id:5658,x:33074,y:31586,varname:node_5658,prsc:2;n:type:ShaderForge.SFN_Color,id:1177,x:32953,y:31428,ptovrint:False,ptlb:Light Color Tint,ptin:_LightColorTint,varname:node_1177,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:2868,x:33695,y:31509,varname:node_2868,prsc:2|A-5827-OUT,B-8073-OUT;n:type:ShaderForge.SFN_Multiply,id:8293,x:33967,y:31524,varname:node_8293,prsc:2|A-7388-RGB,B-2868-OUT;n:type:ShaderForge.SFN_Multiply,id:3173,x:35891,y:32199,varname:node_3173,prsc:2|A-5297-OUT,B-7799-RGB,C-9005-OUT;n:type:ShaderForge.SFN_Dot,id:6480,x:36217,y:32145,varname:node_6480,prsc:2,dt:1|A-5396-OUT,B-749-OUT;n:type:ShaderForge.SFN_LightVector,id:5396,x:36157,y:31927,varname:node_5396,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:749,x:35941,y:31900,prsc:2,pt:True;n:type:ShaderForge.SFN_Posterize,id:9005,x:36012,y:32354,varname:node_9005,prsc:2|IN-6480-OUT,STPS-8385-OUT;n:type:ShaderForge.SFN_Slider,id:8385,x:35696,y:32414,ptovrint:False,ptlb:Bands,ptin:_Bands,varname:node_8385,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_LightAttenuation,id:3008,x:35502,y:31818,varname:node_3008,prsc:2;n:type:ShaderForge.SFN_LightColor,id:7799,x:35605,y:32218,varname:node_7799,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5297,x:35755,y:31978,varname:node_5297,prsc:2|A-3008-OUT,B-6407-OUT;n:type:ShaderForge.SFN_Slider,id:6407,x:35394,y:31988,ptovrint:False,ptlb:Shading Strength,ptin:_ShadingStrength,varname:node_6407,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.05;n:type:ShaderForge.SFN_SwitchProperty,id:5418,x:32332,y:32467,ptovrint:False,ptlb:Transparent Overlay,ptin:_TransparentOverlay,varname:node_5418,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-160-RGB,B-160-R;n:type:ShaderForge.SFN_Add,id:6770,x:35063,y:31862,varname:node_6770,prsc:2|A-1761-OUT,B-8903-OUT;n:type:ShaderForge.SFN_Tex2d,id:4740,x:34684,y:31586,ptovrint:False,ptlb:Emission Map,ptin:_EmissionMap,varname:node_4740,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3249,x:34855,y:31731,varname:node_3249,prsc:2|A-8233-RGB,B-9711-OUT;n:type:ShaderForge.SFN_Slider,id:9711,x:34541,y:31793,ptovrint:False,ptlb:Emission map Strength,ptin:_EmissionmapStrength,varname:node_9711,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Color,id:8233,x:34517,y:31676,ptovrint:False,ptlb:Emission Color,ptin:_EmissionColor,varname:node_8233,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8903,x:35047,y:31580,varname:node_8903,prsc:2|A-4740-RGB,B-3249-OUT;n:type:ShaderForge.SFN_Slider,id:8073,x:33163,y:31400,ptovrint:False,ptlb:Darkness Self Lighting,ptin:_DarknessSelfLighting,varname:node_8073,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.2;n:type:ShaderForge.SFN_ViewReflectionVector,id:1149,x:33367,y:31946,varname:node_1149,prsc:2;proporder:7388-1728-2952-7080-1177-8385-6407-8073-8802-6603-7695-7629-5249-7798-2369-3801-4900-6505-1690-9093-2232-5347-6271-9525-5878-4666-7857-9198-5068-6797-5353-7719-1485-7220-7094-3521-2911-9030-4909-4123-3823-6270-8947-444-9733-846-4346-8616-1320-3397-585-5875-9269-1718-2005-2971-6540-9304-8624-7051-2885-8661-5135-2339-3826-5267-689-237-3217-6795-3390-4327-4279-3673-9786-9176-8259-9623-175-9550-4479-1997-2035-7179-4535-6535-5519-6096-4500-6538-5291-2127-4442-8574-9068-1428-2040-5812-6190-160-5418-4355-6012-4822-3344-5495-190-2634-2505-2643-7442-7285-9928-1707-8029-1299-4924-9666-4461-4740-9711-8233;pass:END;sub:END;*/

Shader "Bender's Shaders/All in One" {
    Properties {
		[Space(20)]
		[Header(Main Settings)]
        _Albedo ("Albedo", 2D) = "black" {}
        [MaterialToggle] _TransparentTexture ("Transparent Texture?", Float ) = 1
        _TransparencyStrength ("Transparency Strength", Range(-1, 1)) = 0
        _Tint ("Tint", Color) = (1,1,1,1)
		[Space(20)]
		[Header(Custom Lighting)]
        _LightColorTint ("Light Color Tint", Color) = (0.5,0.5,0.5,1)
        _Bands ("Bands", Range(0, 5)) = 0
        _ShadingStrength ("Shading Strength", Range(0, 0.05)) = 0
        _DarknessSelfLighting ("Darkness Self Lighting", Range(0, 0.2)) = 0
		[Space(20)]
		[Header(Texture Scaling)]
        _imin ("imin", Range(0, 1)) = 0
        _imax ("imax", Range(0, 1)) = 1
        _omin ("omin", Range(0, 1)) = 0
        _omax ("omax", Range(0, 1)) = 1
        _AlphaCutoff ("Alpha Cutoff", Range(0, 3)) = 0
		[Space(20)]
		[Header(Scrolling Texture Settings)]
        [MaterialToggle] _texmove ("texmove", Float ) = 0
        [MaterialToggle] _WorldSpaceMaintex ("World Space Maintex", Float ) = 0
        _USpeedTex ("U Speed Tex", Range(-3, 3)) = 0
        _Vspeedtex ("V speed tex", Range(-3, 3)) = 0
        [MaterialToggle] _AnimatedMainTexRotation ("Animated Main Tex Rotation", Float ) = 0
        _MainTexrotateangle ("MainTex rotate angle", Range(-3, 3)) = 0
        _MainTexrotatespeed ("MainTex rotate speed", Range(-3, 3)) = 0
		[Space(20)]
		[Header(Texture Pixelation)]
        [MaterialToggle] _Pixelate ("Pixelate", Float ) = 0
        _PixelationStrength ("Pixelation Strength", Range(0.1, 200)) = 0.1
		[Space(20)]
		[Header(Fresnel Settings)]
        [MaterialToggle] _CellShading ("Cell Shading", Float ) = 0
        _CellShadingAmount ("Cell Shading Amount", Range(-10, 10)) = 0
        _CellshadingCubemap ("Cellshading Cubemap", Cube) = "_Skybox" {}
        _Cubemapreflectionbluriness ("Cubemap reflection bluriness", Range(0, 1)) = 0
		[Space(20)]
		[Header(Texture UV Distorting)]
        [MaterialToggle] _noiseuvtexdistortion ("noise uv tex distortion", Float ) = 0
        _noiseuvdistorttex ("noise uv distort tex", 2D) = "white" {}
        _noiseuvdistortstrength ("noise uv distort strength", Range(0, 1)) = 0
        [MaterialToggle] _animatednoiseUVdistortion ("animated noise UV distortion", Float ) = 0
        _UVdistortmask ("UV distort mask", 2D) = "white" {}
        _UspeedNoiseUVdistort ("U speed Noise UV distort", Range(-1, 1)) = 0
        _VspeedNoiseUVdistort ("V speed Noise UV distort", Range(-1, 1)) = 0
        [MaterialToggle] _MaintexUVanimateddistortRotation ("Maintex UV animated distort Rotation", Float ) = 0
        _MaintexUVwarprotationangle ("Maintex UV warp rotation angle", Range(-3, 3)) = 0
        _MaintexUVwarprotationSpeed ("Maintex UV warp rotation Speed", Range(-3, 3)) = 0
		[Space(20)]
		[Header(Emission Settings)]
        _EmissionStrength ("Emission Strength", Range(0, 1)) = 0
        _Color1 ("Color 1", Color) = (1,1,1,1)
        _color1amount ("color 1 amount", Range(0, 1)) = 0
        _Color2 ("Color 2", Color) = (1,1,1,1)
        _Color2amount ("Color 2 amount", Range(0, 1)) = 0
        _PulseColorFallback ("Pulse Color Fallback", Color) = (1,0,0,1)
		[Space(20)]
		[Header(Mesh Warp Settings)]
        _Waveform ("Waveform", Range(0, 20)) = 0
        [MaterialToggle] _MovingEmission ("Moving Emission", Float ) = 0
        [MaterialToggle] _WavewarpingNoisewarping ("Wave warping/Noise warping", Float ) = 0
        _DeformAmount ("Deform Amount", Range(0, 0.5)) = 0
        [MaterialToggle] _VerticalLines ("Vertical Lines", Float ) = 1
        [MaterialToggle] _VerticalLines2 ("Vertical Lines 2", Float ) = 1
        [MaterialToggle] _WorldPlacementVertical ("World Placement Vertical", Float ) = 0
        [MaterialToggle] _HorizontalLines ("Horizontal Lines", Float ) = 1
        [MaterialToggle] _HorizontalLines2 ("Horizontal Lines 2", Float ) = 1
        [MaterialToggle] _WorldPlacementHorizontal ("World Placement Horizontal", Float ) = 0
        _Noisewarptex ("Noise warp tex", 2D) = "white" {}
        _Noisewarpstrength ("Noise warp strength", Range(-1, 1)) = 0
        [MaterialToggle] _AnimatedNoiseWarping ("Animated Noise Warping", Float ) = 0
        _Uspeednoisewarp ("U speed noise warp", Range(-1, 1)) = 0
        _Vspeednoisewarp ("V speed noise warp", Range(-1, 1)) = 0
        [MaterialToggle] _NoiseStretchwarp ("Noise Stretch warp", Float ) = 0
        _NoiseStretchWarp ("Noise Stretch Warp", 2D) = "white" {}
        _NoiseStretchwarpStrength ("Noise Stretch warp Strength", Range(0, 20)) = 0.1
		[Space(20)]
		[Header(Heightmapping and Tesselation)]
        _Height ("Height", 2D) = "white" {}
        [MaterialToggle] _AnimatedHeightmap ("Animated Heightmap", Float ) = 0
        _HeightmapUspeed ("Heightmap U speed", Range(-3, 3)) = 0
        _HeightmapVspeed ("Heightmap V speed", Range(-3, 3)) = 0
        [MaterialToggle] _AnimatedHeightRotation ("Animated Height Rotation", Float ) = 0
        _HeightmapRotationAngle ("Heightmap Rotation Angle", Range(0, 1)) = 0
        _Heightmaprotationspeed ("Heightmap rotation speed", Range(0, 1)) = 0
        _Displacementvalue ("Displacement value", Range(-1, 1)) = 0
        [MaterialToggle] _Animateddisplacement ("Animated displacement", Float ) = 0
        _Displacementomin ("Displacement omin", Range(-1, 1)) = 0
        _Displacementomax ("Displacement omax", Range(-1, 1)) = 0
        [MaterialToggle] _Tessalation ("Tessalation", Float ) = 0.1
        _TessalationStrength ("Tessalation Strength", Range(0.1, 20)) = 0.1
        [MaterialToggle] _AnimatedTessalation ("Animated Tessalation", Float ) = 0.1
        _TessalationSpeed ("Tessalation Speed", Range(0, 10)) = 0
        _utessspeed ("u tess speed", Range(0, 1)) = 0
        _vtessspeed ("v tess speed", Range(0, 1)) = 0
        [MaterialToggle] _FurTessalation ("Fur Tessalation", Float ) = 0.1
        _Furnoisemap ("Fur noise map", 2D) = "white" {}
        [MaterialToggle] _Furanimatedrotation ("Fur animated rotation", Float ) = 0
        _FurTessAngle ("Fur Tess Angle", Range(-3, 3)) = 0
        _FurTessSpeed ("Fur Tess Speed", Range(-3, 3)) = 0
        [HideInInspector]_node_2035 ("node_2035", Float ) = 0.1
		[Space(20)]
		[Header(Outline Settings)]
        _OutlineTexture ("Outline Texture", 2D) = "white" {}
        _Outlinecolor_copy ("Outline color_copy", Color) = (0.5,0.5,0.5,1)
        _outlinecolorstrength ("outline color strength", Range(0, 1)) = 0.8058253
        _OutlineWidth ("Outline Width", Range(0, 10)) = 0
        _OutlineUspeed ("Outline U speed", Range(0, 1)) = 0
        _OutlineVspeed ("Outline V speed", Range(0, 1)) = 0
        _Outlinewidthnoisemap ("Outline width noise map", 2D) = "white" {}
        _outlineuspeedwidth ("outline u speed width", Range(0, 1)) = 0
        _outlinevspeedwidth ("outline v speed width", Range(0, 1)) = 0
        _NoiseoutlineWarp ("Noise outline Warp", 2D) = "white" {}
        _Noiseoutlinewarpstrength ("Noise outline warp strength", Range(0, 1)) = 0
        _Nosieoutlinewarpuspeed ("Nosie outline warp u speed", Range(0, 1)) = 0
        _noiseoutlinewarpvspeed ("noise outline warp v speed", Range(0, 1)) = 0
        [HideInInspector]_DisplacementImin ("Displacement Imin", Range(-1, 1)) = 0
        [HideInInspector]_DisplacementImax ("Displacement Imax", Range(-1, 1)) = 1
		[Space(20)]
		[Header(Overlay Settings)]
        [MaterialToggle] _Overlay ("Overlay", Float ) = 0
        _OverlayTex ("Overlay Tex", 2D) = "white" {}
        [MaterialToggle] _TransparentOverlay ("Transparent Overlay", Float ) = 0
        _OverlayColor ("Overlay Color", Color) = (0.5,0.5,0.5,1)
        _OverlayColorStrength ("Overlay Color Strength", Range(0, 10)) = 0
        [MaterialToggle] _WorldSpaceOverlay ("World Space Overlay", Float ) = 0
        [MaterialToggle] _ScreenSpaceOverlay ("Screen Space Overlay?", Float ) = 0
        _OverlayUspeed ("Overlay U speed", Range(-3, 3)) = 0
        _OverlayVspeed ("Overlay V speed", Range(-3, 3)) = 0
        _OverlayPixelation ("Overlay Pixelation", Range(0.1, 500)) = 0.1
        [MaterialToggle] _Overlaynoisewarp ("Overlay noise warp?", Float ) = 0
        _OverlayNoiseWarpTex ("Overlay Noise Warp Tex", 2D) = "white" {}
        _DistortionOverlayStrength ("Distortion Overlay Strength", Range(0, 1)) = 0
        [MaterialToggle] _AnimatedOverlayNoisewarp ("Animated Overlay Noise warp?", Float ) = 1
        _OverlayNoisewarpUspeed ("Overlay Noise warp U speed", Range(-3, 3)) = 0
        _OverlayNoisewarpVspeed ("Overlay Noise warp V speed", Range(-3, 3)) = 0
		[Space(20)]
		[Header(Rimlight Settings)]
        [MaterialToggle] _EdgeGlow ("Edge Glow", Float ) = 0
        _EdgeStrength ("Edge Strength", Range(0, 1)) = 0
        _EdgeColor ("Edge Color", Color) = (1,0,0,1)
        _EdgeColorStrength ("Edge Color Strength", Range(0, 1)) = 0
        _EdgeHardness ("Edge Hardness", Range(0, 1)) = 0
		[Space(20)]
		[Header(Emission map)]
        _EmissionMap ("Emission Map", 2D) = "white" {}
        _EmissionmapStrength ("Emission map Strength", Range(0, 10)) = 0
        _EmissionColor ("Emission Color", Color) = (1,1,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float _Waveform;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float _DeformAmount;
            uniform float _imin;
            uniform float _imax;
            uniform float _omin;
            uniform float _omax;
            uniform fixed _VerticalLines;
            uniform float4 _PulseColorFallback;
            uniform fixed _HorizontalLines;
            uniform fixed _VerticalLines2;
            uniform fixed _HorizontalLines2;
            uniform fixed _texmove;
            uniform float _USpeedTex;
            uniform fixed _WorldPlacementHorizontal;
            uniform fixed _WorldPlacementVertical;
            uniform fixed _MovingEmission;
            uniform float _TessalationStrength;
            uniform sampler2D _Height; uniform float4 _Height_ST;
            uniform float _Displacementvalue;
            uniform fixed _AnimatedTessalation;
            uniform fixed _Tessalation;
            uniform float _node_2035;
            uniform float _TessalationSpeed;
            uniform float _Vspeedtex;
            uniform fixed _WavewarpingNoisewarping;
            uniform sampler2D _Noisewarptex; uniform float4 _Noisewarptex_ST;
            uniform fixed _AnimatedNoiseWarping;
            uniform float _Noisewarpstrength;
            uniform float _Uspeednoisewarp;
            uniform float _Vspeednoisewarp;
            uniform fixed _noiseuvtexdistortion;
            uniform sampler2D _noiseuvdistorttex; uniform float4 _noiseuvdistorttex_ST;
            uniform fixed _animatednoiseUVdistortion;
            uniform float _UspeedNoiseUVdistort;
            uniform float _VspeedNoiseUVdistort;
            uniform float _noiseuvdistortstrength;
            uniform sampler2D _UVdistortmask; uniform float4 _UVdistortmask_ST;
            uniform fixed _FurTessalation;
            uniform sampler2D _Furnoisemap; uniform float4 _Furnoisemap_ST;
            uniform float _utessspeed;
            uniform float _vtessspeed;
            uniform float _OutlineWidth;
            uniform sampler2D _OutlineTexture; uniform float4 _OutlineTexture_ST;
            uniform float _OutlineUspeed;
            uniform float _OutlineVspeed;
            uniform float4 _Outlinecolor_copy;
            uniform float _outlinecolorstrength;
            uniform sampler2D _Outlinewidthnoisemap; uniform float4 _Outlinewidthnoisemap_ST;
            uniform float _outlineuspeedwidth;
            uniform float _outlinevspeedwidth;
            uniform sampler2D _NoiseoutlineWarp; uniform float4 _NoiseoutlineWarp_ST;
            uniform float _Noiseoutlinewarpstrength;
            uniform float _Nosieoutlinewarpuspeed;
            uniform float _noiseoutlinewarpvspeed;
            uniform fixed _Animateddisplacement;
            uniform float _MainTexrotateangle;
            uniform float _MainTexrotatespeed;
            uniform fixed _AnimatedMainTexRotation;
            uniform float _MaintexUVwarprotationangle;
            uniform float _MaintexUVwarprotationSpeed;
            uniform fixed _MaintexUVanimateddistortRotation;
            uniform fixed _Furanimatedrotation;
            uniform float _FurTessAngle;
            uniform float _FurTessSpeed;
            uniform fixed _AnimatedHeightRotation;
            uniform float _HeightmapRotationAngle;
            uniform float _Heightmaprotationspeed;
            uniform fixed _AnimatedHeightmap;
            uniform float _HeightmapUspeed;
            uniform float _HeightmapVspeed;
            uniform float _DisplacementImin;
            uniform float _DisplacementImax;
            uniform float _Displacementomax;
            uniform float _Displacementomin;
            uniform fixed _Pixelate;
            uniform float _PixelationStrength;
            uniform fixed _NoiseStretchwarp;
            uniform float _NoiseStretchwarpStrength;
            uniform sampler2D _NoiseStretchWarp; uniform float4 _NoiseStretchWarp_ST;
            uniform fixed _WorldSpaceMaintex;
            uniform float _TransparencyStrength;
            uniform fixed _TransparentTexture;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4986 = _Time;
                float2 _AnimatedNoiseWarping_var = lerp( o.uv0, (o.uv0+(node_4986.g*float2(_Uspeednoisewarp,_Vspeednoisewarp))), _AnimatedNoiseWarping );
                float4 _Noisewarptex_var = tex2Dlod(_Noisewarptex,float4(TRANSFORM_TEX(_AnimatedNoiseWarping_var, _Noisewarptex),0.0,0));
                float4 node_957 = _Time;
                float3 node_1799 = saturate((sin((_Waveform*(lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( o.uv0.g, mul(unity_ObjectToWorld, v.vertex).g, _WorldPlacementVertical ), _VerticalLines ).r, _VerticalLines2 )+lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( o.uv0.r, mul(unity_ObjectToWorld, v.vertex).r, _WorldPlacementHorizontal ), _HorizontalLines ).r, _HorizontalLines2 )+lerp( 0.0, node_957.r, _MovingEmission ))*6.28318530718))*0.5+0.5));
                float2 node_217 = (o.uv0*_NoiseStretchwarpStrength);
                float4 _NoiseStretchWarp_var = tex2Dlod(_NoiseStretchWarp,float4(TRANSFORM_TEX(node_217, _NoiseStretchWarp),0.0,0));
                v.vertex.xyz += (lerp( (_Noisewarptex_var.r*_Noisewarpstrength), (node_1799*v.normal*_DeformAmount), _WavewarpingNoisewarping )+lerp( 0.0, _NoiseStretchWarp_var.rgb, _NoiseStretchwarp ));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float4 node_5304 = _Time;
                float2 node_4794 = (o.uv0+(node_5304.g*float2(_Nosieoutlinewarpuspeed,_noiseoutlinewarpvspeed)));
                float4 _NoiseoutlineWarp_var = tex2Dlod(_NoiseoutlineWarp,float4(TRANSFORM_TEX(node_4794, _NoiseoutlineWarp),0.0,0));
                float4 node_5237 = _Time;
                float2 node_272 = (lerp(o.uv0,float2(_NoiseoutlineWarp_var.r,_NoiseoutlineWarp_var.r),_Noiseoutlinewarpstrength)+(node_5237.g*float2(_outlineuspeedwidth,_outlinevspeedwidth)));
                float4 _Outlinewidthnoisemap_var = tex2Dlod(_Outlinewidthnoisemap,float4(TRANSFORM_TEX(node_272, _Outlinewidthnoisemap),0.0,0));
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*(_Outlinewidthnoisemap_var.r*_OutlineWidth),1) );
                UNITY_TRANSFER_FOG(o,o.pos);
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
                    float node_4826_ang = _HeightmapRotationAngle;
                    float node_4826_spd = _Heightmaprotationspeed;
                    float node_4826_cos = cos(node_4826_spd*node_4826_ang);
                    float node_4826_sin = sin(node_4826_spd*node_4826_ang);
                    float2 node_4826_piv = float2(0.5,0.5);
                    float2 node_4826 = (mul(v.texcoord0-node_4826_piv,float2x2( node_4826_cos, -node_4826_sin, node_4826_sin, node_4826_cos))+node_4826_piv);
                    float4 node_1065 = _Time;
                    float2 _AnimatedHeightRotation_var = lerp( node_4826, (node_4826+node_1065.r), _AnimatedHeightRotation );
                    float4 node_5006 = _Time;
                    float2 _AnimatedHeightmap_var = lerp( _AnimatedHeightRotation_var, (_AnimatedHeightRotation_var+(float2(_HeightmapUspeed,_HeightmapVspeed)*node_5006.r)), _AnimatedHeightmap );
                    float4 _Height_var = tex2Dlod(_Height,float4(TRANSFORM_TEX(_AnimatedHeightmap_var, _Height),0.0,0));
                    float4 node_3012 = _Time;
                    v.vertex.xyz += (v.normal*(_Height_var.rgb*lerp( _Displacementvalue, (_Displacementomax + ( (sin((_Displacementvalue*node_3012.g)) - _DisplacementImin) * (_Displacementomin - _Displacementomax) ) / (_DisplacementImax - _DisplacementImin)), _Animateddisplacement )));
                }
                float Tessellation(TessVertex v){
                    float node_1853_ang = _FurTessAngle;
                    float node_1853_spd = _FurTessSpeed;
                    float node_1853_cos = cos(node_1853_spd*node_1853_ang);
                    float node_1853_sin = sin(node_1853_spd*node_1853_ang);
                    float2 node_1853_piv = float2(0.5,0.5);
                    float2 node_1853 = (mul(v.texcoord0-node_1853_piv,float2x2( node_1853_cos, -node_1853_sin, node_1853_sin, node_1853_cos))+node_1853_piv);
                    float4 node_6703 = _Time;
                    float2 node_387 = (lerp( node_1853, (node_1853+node_6703.r), _Furanimatedrotation )*float2(_utessspeed,_vtessspeed));
                    float4 _Furnoisemap_var = tex2Dlod(_Furnoisemap,float4(TRANSFORM_TEX(node_387, _Furnoisemap),0.0,0));
                    float4 node_5639 = _Time;
                    return lerp( _node_2035, lerp( lerp( _TessalationStrength, (_Furnoisemap_var.r*50.0*_TessalationStrength), _FurTessalation ), (_TessalationStrength*(sin((node_5639.r*_TessalationSpeed))*0.2+0.7)), _AnimatedTessalation ), _Tessalation );
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float node_5240_ang = _MainTexrotateangle;
                float node_5240_spd = _MainTexrotatespeed;
                float node_5240_cos = cos(node_5240_spd*node_5240_ang);
                float node_5240_sin = sin(node_5240_spd*node_5240_ang);
                float2 node_5240_piv = float2(0.5,0.5);
                float3 _WorldSpaceMaintex_var = lerp( float3(i.uv0,0.0), i.posWorld.rgb, _WorldSpaceMaintex );
                float2 node_5240 = (mul(_WorldSpaceMaintex_var-node_5240_piv,float2x2( node_5240_cos, -node_5240_sin, node_5240_sin, node_5240_cos))+node_5240_piv);
                float4 node_5854 = _Time;
                float2 node_560 = (_omin + ( (lerp( node_5240, (node_5240+node_5854.r), _AnimatedMainTexRotation ) - _imin) * (_omax - _omin) ) / (_imax - _imin));
                float4 node_3668 = _Time;
                float2 _texmove_var = lerp( node_560, (node_560+(node_3668.r*float2(_USpeedTex,_Vspeedtex))), _texmove );
                float node_9208_ang = _MaintexUVwarprotationangle;
                float node_9208_spd = _MaintexUVwarprotationSpeed;
                float node_9208_cos = cos(node_9208_spd*node_9208_ang);
                float node_9208_sin = sin(node_9208_spd*node_9208_ang);
                float2 node_9208_piv = float2(0.5,0.5);
                float2 node_9208 = (mul(i.uv0-node_9208_piv,float2x2( node_9208_cos, -node_9208_sin, node_9208_sin, node_9208_cos))+node_9208_piv);
                float4 node_613 = _Time;
                float2 _MaintexUVanimateddistortRotation_var = lerp( node_9208, (node_9208+node_613.r), _MaintexUVanimateddistortRotation );
                float4 node_7407 = _Time;
                float2 _animatednoiseUVdistortion_var = lerp( _MaintexUVanimateddistortRotation_var, (_MaintexUVanimateddistortRotation_var+(node_7407.g*float2(_UspeedNoiseUVdistort,_VspeedNoiseUVdistort))), _animatednoiseUVdistortion );
                float4 _noiseuvdistorttex_var = tex2D(_noiseuvdistorttex,TRANSFORM_TEX(_animatednoiseUVdistortion_var, _noiseuvdistorttex));
                float4 _UVdistortmask_var = tex2D(_UVdistortmask,TRANSFORM_TEX(i.uv0, _UVdistortmask));
                float3 _noiseuvtexdistortion_var = lerp( float3(_texmove_var,0.0), lerp(_WorldSpaceMaintex_var,float3(lerp(_texmove_var,float2(_noiseuvdistorttex_var.r,_noiseuvdistorttex_var.r),_noiseuvdistortstrength),0.0),_UVdistortmask_var.r), _noiseuvtexdistortion );
                float node_9364 = ceil(abs(_PixelationStrength));
                float3 _Pixelate_var = lerp( _noiseuvtexdistortion_var, (floor((_noiseuvtexdistortion_var*node_9364))/node_9364), _Pixelate );
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(_Pixelate_var, _Albedo));
                clip(lerp( 1.0, (_Albedo_var.a-_TransparencyStrength), _TransparentTexture ) - 0.5);
                float4 node_2032 = _Time;
                float2 node_8467 = (i.uv0+(node_2032.g*float2(_OutlineUspeed,_OutlineVspeed)));
                float4 _OutlineTexture_var = tex2D(_OutlineTexture,TRANSFORM_TEX(node_8467, _OutlineTexture));
                return fixed4((_OutlineTexture_var.rgb*(_Outlinecolor_copy.rgb*_outlinecolorstrength)),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float _Waveform;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float _EmissionStrength;
            uniform float _color1amount;
            uniform float _Color2amount;
            uniform float _DeformAmount;
            uniform float _imin;
            uniform float _imax;
            uniform float _omin;
            uniform float _omax;
            uniform fixed _VerticalLines;
            uniform float4 _PulseColorFallback;
            uniform fixed _HorizontalLines;
            uniform fixed _VerticalLines2;
            uniform fixed _HorizontalLines2;
            uniform fixed _texmove;
            uniform float _USpeedTex;
            uniform float4 _Tint;
            uniform fixed _WorldPlacementHorizontal;
            uniform fixed _WorldPlacementVertical;
            uniform fixed _MovingEmission;
            uniform float _TessalationStrength;
            uniform sampler2D _Height; uniform float4 _Height_ST;
            uniform float _Displacementvalue;
            uniform fixed _AnimatedTessalation;
            uniform fixed _Tessalation;
            uniform float _node_2035;
            uniform float _TessalationSpeed;
            uniform float _Vspeedtex;
            uniform fixed _WavewarpingNoisewarping;
            uniform sampler2D _Noisewarptex; uniform float4 _Noisewarptex_ST;
            uniform fixed _AnimatedNoiseWarping;
            uniform float _Noisewarpstrength;
            uniform float _Uspeednoisewarp;
            uniform float _Vspeednoisewarp;
            uniform fixed _noiseuvtexdistortion;
            uniform sampler2D _noiseuvdistorttex; uniform float4 _noiseuvdistorttex_ST;
            uniform fixed _animatednoiseUVdistortion;
            uniform float _UspeedNoiseUVdistort;
            uniform float _VspeedNoiseUVdistort;
            uniform float _noiseuvdistortstrength;
            uniform sampler2D _UVdistortmask; uniform float4 _UVdistortmask_ST;
            uniform fixed _FurTessalation;
            uniform sampler2D _Furnoisemap; uniform float4 _Furnoisemap_ST;
            uniform float _utessspeed;
            uniform float _vtessspeed;
            uniform fixed _Animateddisplacement;
            uniform float _MainTexrotateangle;
            uniform float _MainTexrotatespeed;
            uniform fixed _AnimatedMainTexRotation;
            uniform float _MaintexUVwarprotationangle;
            uniform float _MaintexUVwarprotationSpeed;
            uniform fixed _MaintexUVanimateddistortRotation;
            uniform fixed _Furanimatedrotation;
            uniform float _FurTessAngle;
            uniform float _FurTessSpeed;
            uniform fixed _AnimatedHeightRotation;
            uniform float _HeightmapRotationAngle;
            uniform float _Heightmaprotationspeed;
            uniform fixed _AnimatedHeightmap;
            uniform float _HeightmapUspeed;
            uniform float _HeightmapVspeed;
            uniform float _DisplacementImin;
            uniform float _DisplacementImax;
            uniform float _Displacementomax;
            uniform float _Displacementomin;
            uniform float _AlphaCutoff;
            uniform fixed _Pixelate;
            uniform float _PixelationStrength;
            uniform fixed _NoiseStretchwarp;
            uniform float _NoiseStretchwarpStrength;
            uniform sampler2D _NoiseStretchWarp; uniform float4 _NoiseStretchWarp_ST;
            uniform fixed _Overlay;
            uniform float _OverlayPixelation;
            uniform sampler2D _OverlayTex; uniform float4 _OverlayTex_ST;
            uniform float _OverlayUspeed;
            uniform float _OverlayVspeed;
            uniform fixed _WorldSpaceOverlay;
            uniform float4 _OverlayColor;
            uniform float _OverlayColorStrength;
            uniform sampler2D _OverlayNoiseWarpTex; uniform float4 _OverlayNoiseWarpTex_ST;
            uniform float _OverlayNoisewarpUspeed;
            uniform fixed _Overlaynoisewarp;
            uniform float _DistortionOverlayStrength;
            uniform float _OverlayNoisewarpVspeed;
            uniform fixed _AnimatedOverlayNoisewarp;
            uniform fixed _ScreenSpaceOverlay;
            uniform fixed _WorldSpaceMaintex;
            uniform fixed _CellShading;
            uniform float _CellShadingAmount;
            uniform samplerCUBE _CellshadingCubemap;
            uniform float _Cubemapreflectionbluriness;
            uniform fixed _EdgeGlow;
            uniform float _EdgeStrength;
            uniform float4 _EdgeColor;
            uniform float _EdgeColorStrength;
            uniform float _EdgeHardness;
            uniform float _TransparencyStrength;
            uniform fixed _TransparentTexture;
            uniform float4 _LightColorTint;
            uniform float _Bands;
            uniform float _ShadingStrength;
            uniform fixed _TransparentOverlay;
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
            uniform float _EmissionmapStrength;
            uniform float4 _EmissionColor;
            uniform float _DarknessSelfLighting;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4986 = _Time;
                float2 _AnimatedNoiseWarping_var = lerp( o.uv0, (o.uv0+(node_4986.g*float2(_Uspeednoisewarp,_Vspeednoisewarp))), _AnimatedNoiseWarping );
                float4 _Noisewarptex_var = tex2Dlod(_Noisewarptex,float4(TRANSFORM_TEX(_AnimatedNoiseWarping_var, _Noisewarptex),0.0,0));
                float4 node_957 = _Time;
                float3 node_1799 = saturate((sin((_Waveform*(lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( o.uv0.g, mul(unity_ObjectToWorld, v.vertex).g, _WorldPlacementVertical ), _VerticalLines ).r, _VerticalLines2 )+lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( o.uv0.r, mul(unity_ObjectToWorld, v.vertex).r, _WorldPlacementHorizontal ), _HorizontalLines ).r, _HorizontalLines2 )+lerp( 0.0, node_957.r, _MovingEmission ))*6.28318530718))*0.5+0.5));
                float2 node_217 = (o.uv0*_NoiseStretchwarpStrength);
                float4 _NoiseStretchWarp_var = tex2Dlod(_NoiseStretchWarp,float4(TRANSFORM_TEX(node_217, _NoiseStretchWarp),0.0,0));
                v.vertex.xyz += (lerp( (_Noisewarptex_var.r*_Noisewarpstrength), (node_1799*v.normal*_DeformAmount), _WavewarpingNoisewarping )+lerp( 0.0, _NoiseStretchWarp_var.rgb, _NoiseStretchwarp ));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
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
                    float node_4826_ang = _HeightmapRotationAngle;
                    float node_4826_spd = _Heightmaprotationspeed;
                    float node_4826_cos = cos(node_4826_spd*node_4826_ang);
                    float node_4826_sin = sin(node_4826_spd*node_4826_ang);
                    float2 node_4826_piv = float2(0.5,0.5);
                    float2 node_4826 = (mul(v.texcoord0-node_4826_piv,float2x2( node_4826_cos, -node_4826_sin, node_4826_sin, node_4826_cos))+node_4826_piv);
                    float4 node_1065 = _Time;
                    float2 _AnimatedHeightRotation_var = lerp( node_4826, (node_4826+node_1065.r), _AnimatedHeightRotation );
                    float4 node_5006 = _Time;
                    float2 _AnimatedHeightmap_var = lerp( _AnimatedHeightRotation_var, (_AnimatedHeightRotation_var+(float2(_HeightmapUspeed,_HeightmapVspeed)*node_5006.r)), _AnimatedHeightmap );
                    float4 _Height_var = tex2Dlod(_Height,float4(TRANSFORM_TEX(_AnimatedHeightmap_var, _Height),0.0,0));
                    float4 node_3012 = _Time;
                    v.vertex.xyz += (v.normal*(_Height_var.rgb*lerp( _Displacementvalue, (_Displacementomax + ( (sin((_Displacementvalue*node_3012.g)) - _DisplacementImin) * (_Displacementomin - _Displacementomax) ) / (_DisplacementImax - _DisplacementImin)), _Animateddisplacement )));
                }
                float Tessellation(TessVertex v){
                    float node_1853_ang = _FurTessAngle;
                    float node_1853_spd = _FurTessSpeed;
                    float node_1853_cos = cos(node_1853_spd*node_1853_ang);
                    float node_1853_sin = sin(node_1853_spd*node_1853_ang);
                    float2 node_1853_piv = float2(0.5,0.5);
                    float2 node_1853 = (mul(v.texcoord0-node_1853_piv,float2x2( node_1853_cos, -node_1853_sin, node_1853_sin, node_1853_cos))+node_1853_piv);
                    float4 node_6703 = _Time;
                    float2 node_387 = (lerp( node_1853, (node_1853+node_6703.r), _Furanimatedrotation )*float2(_utessspeed,_vtessspeed));
                    float4 _Furnoisemap_var = tex2Dlod(_Furnoisemap,float4(TRANSFORM_TEX(node_387, _Furnoisemap),0.0,0));
                    float4 node_5639 = _Time;
                    return lerp( _node_2035, lerp( lerp( _TessalationStrength, (_Furnoisemap_var.r*50.0*_TessalationStrength), _FurTessalation ), (_TessalationStrength*(sin((node_5639.r*_TessalationSpeed))*0.2+0.7)), _AnimatedTessalation ), _Tessalation );
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float node_5240_ang = _MainTexrotateangle;
                float node_5240_spd = _MainTexrotatespeed;
                float node_5240_cos = cos(node_5240_spd*node_5240_ang);
                float node_5240_sin = sin(node_5240_spd*node_5240_ang);
                float2 node_5240_piv = float2(0.5,0.5);
                float3 _WorldSpaceMaintex_var = lerp( float3(i.uv0,0.0), i.posWorld.rgb, _WorldSpaceMaintex );
                float2 node_5240 = (mul(_WorldSpaceMaintex_var-node_5240_piv,float2x2( node_5240_cos, -node_5240_sin, node_5240_sin, node_5240_cos))+node_5240_piv);
                float4 node_5854 = _Time;
                float2 node_560 = (_omin + ( (lerp( node_5240, (node_5240+node_5854.r), _AnimatedMainTexRotation ) - _imin) * (_omax - _omin) ) / (_imax - _imin));
                float4 node_3668 = _Time;
                float2 _texmove_var = lerp( node_560, (node_560+(node_3668.r*float2(_USpeedTex,_Vspeedtex))), _texmove );
                float node_9208_ang = _MaintexUVwarprotationangle;
                float node_9208_spd = _MaintexUVwarprotationSpeed;
                float node_9208_cos = cos(node_9208_spd*node_9208_ang);
                float node_9208_sin = sin(node_9208_spd*node_9208_ang);
                float2 node_9208_piv = float2(0.5,0.5);
                float2 node_9208 = (mul(i.uv0-node_9208_piv,float2x2( node_9208_cos, -node_9208_sin, node_9208_sin, node_9208_cos))+node_9208_piv);
                float4 node_613 = _Time;
                float2 _MaintexUVanimateddistortRotation_var = lerp( node_9208, (node_9208+node_613.r), _MaintexUVanimateddistortRotation );
                float4 node_7407 = _Time;
                float2 _animatednoiseUVdistortion_var = lerp( _MaintexUVanimateddistortRotation_var, (_MaintexUVanimateddistortRotation_var+(node_7407.g*float2(_UspeedNoiseUVdistort,_VspeedNoiseUVdistort))), _animatednoiseUVdistortion );
                float4 _noiseuvdistorttex_var = tex2D(_noiseuvdistorttex,TRANSFORM_TEX(_animatednoiseUVdistortion_var, _noiseuvdistorttex));
                float4 _UVdistortmask_var = tex2D(_UVdistortmask,TRANSFORM_TEX(i.uv0, _UVdistortmask));
                float3 _noiseuvtexdistortion_var = lerp( float3(_texmove_var,0.0), lerp(_WorldSpaceMaintex_var,float3(lerp(_texmove_var,float2(_noiseuvdistorttex_var.r,_noiseuvdistorttex_var.r),_noiseuvdistortstrength),0.0),_UVdistortmask_var.r), _noiseuvtexdistortion );
                float node_9364 = ceil(abs(_PixelationStrength));
                float3 _Pixelate_var = lerp( _noiseuvtexdistortion_var, (floor((_noiseuvtexdistortion_var*node_9364))/node_9364), _Pixelate );
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(_Pixelate_var, _Albedo));
                clip(lerp( 1.0, (_Albedo_var.a-_TransparencyStrength), _TransparentTexture ) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float3 _ScreenSpaceOverlay_var = lerp( lerp( float3(i.uv0,0.0), i.posWorld.rgb, _WorldSpaceOverlay ), float3(sceneUVs.rg,0.0), _ScreenSpaceOverlay );
                float4 node_5905 = _Time;
                float node_3440 = ceil(abs(_OverlayPixelation));
                float3 node_1996 = ((_ScreenSpaceOverlay_var+float3((float2(_OverlayUspeed,_OverlayVspeed)*node_5905.r),0.0))+(floor((_ScreenSpaceOverlay_var*node_3440))/node_3440));
                float4 node_4115 = _Time;
                float3 node_8701 = (node_1996+float3((float2(_OverlayNoisewarpUspeed,_OverlayNoisewarpVspeed)*lerp( 1.0, node_4115.r, _AnimatedOverlayNoisewarp )),0.0));
                float4 _OverlayNoiseWarpTex_var = tex2D(_OverlayNoiseWarpTex,TRANSFORM_TEX(node_8701, _OverlayNoiseWarpTex));
                float3 _Overlaynoisewarp_var = lerp( node_1996, lerp(node_1996,float3(_OverlayNoiseWarpTex_var.r,_OverlayNoiseWarpTex_var.r,_OverlayNoiseWarpTex_var.r),_DistortionOverlayStrength), _Overlaynoisewarp );
                float4 _OverlayTex_var = tex2D(_OverlayTex,TRANSFORM_TEX(_Overlaynoisewarp_var, _OverlayTex));
                float node_2207 = 0.0;
                float4 node_957 = _Time;
                float3 node_1799 = saturate((sin((_Waveform*(lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( i.uv0.g, i.posWorld.g, _WorldPlacementVertical ), _VerticalLines ).r, _VerticalLines2 )+lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( i.uv0.r, i.posWorld.r, _WorldPlacementHorizontal ), _HorizontalLines ).r, _HorizontalLines2 )+lerp( 0.0, node_957.r, _MovingEmission ))*6.28318530718))*0.5+0.5));
                float4 _EmissionMap_var = tex2D(_EmissionMap,TRANSFORM_TEX(i.uv0, _EmissionMap));
                float3 emissive = ((((_Albedo_var.rgb*((_LightColor0.rgb*_LightColorTint.rgb)+_DarknessSelfLighting))*_Tint.rgb*(_Albedo_var.a-_AlphaCutoff))+lerp( 0.0, (lerp( _OverlayTex_var.rgb, _OverlayTex_var.r, _TransparentOverlay )*(_OverlayColor.rgb*_OverlayColorStrength)), _Overlay )+lerp( node_2207, (pow(1.0-max(0,dot(normalDirection, viewDirection)),_CellShadingAmount)*texCUBElod(_CellshadingCubemap,float4(viewReflectDirection,_Cubemapreflectionbluriness)).rgb), _CellShading )+lerp( node_2207, (smoothstep( 0.0, (_EdgeHardness*-0.29+0.3), pow(1.0-max(0,dot(normalDirection, viewDirection)),(_EdgeStrength*-15.0+15.0)) )*(_EdgeColor.rgb*(_EdgeColorStrength*3.0+0.0))), _EdgeGlow )+(lerp((_Color1.rgb*_color1amount),(_Color2.rgb*_Color2amount),node_1799)*_EmissionStrength))+(_EmissionMap_var.rgb*(_EmissionColor.rgb*_EmissionmapStrength)));
                float3 finalColor = emissive + ((attenuation*_ShadingStrength)*_LightColor0.rgb*floor(max(0,dot(lightDirection,normalDirection)) * _Bands) / (_Bands - 1));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float _Waveform;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float _EmissionStrength;
            uniform float _color1amount;
            uniform float _Color2amount;
            uniform float _DeformAmount;
            uniform float _imin;
            uniform float _imax;
            uniform float _omin;
            uniform float _omax;
            uniform fixed _VerticalLines;
            uniform float4 _PulseColorFallback;
            uniform fixed _HorizontalLines;
            uniform fixed _VerticalLines2;
            uniform fixed _HorizontalLines2;
            uniform fixed _texmove;
            uniform float _USpeedTex;
            uniform float4 _Tint;
            uniform fixed _WorldPlacementHorizontal;
            uniform fixed _WorldPlacementVertical;
            uniform fixed _MovingEmission;
            uniform float _TessalationStrength;
            uniform sampler2D _Height; uniform float4 _Height_ST;
            uniform float _Displacementvalue;
            uniform fixed _AnimatedTessalation;
            uniform fixed _Tessalation;
            uniform float _node_2035;
            uniform float _TessalationSpeed;
            uniform float _Vspeedtex;
            uniform fixed _WavewarpingNoisewarping;
            uniform sampler2D _Noisewarptex; uniform float4 _Noisewarptex_ST;
            uniform fixed _AnimatedNoiseWarping;
            uniform float _Noisewarpstrength;
            uniform float _Uspeednoisewarp;
            uniform float _Vspeednoisewarp;
            uniform fixed _noiseuvtexdistortion;
            uniform sampler2D _noiseuvdistorttex; uniform float4 _noiseuvdistorttex_ST;
            uniform fixed _animatednoiseUVdistortion;
            uniform float _UspeedNoiseUVdistort;
            uniform float _VspeedNoiseUVdistort;
            uniform float _noiseuvdistortstrength;
            uniform sampler2D _UVdistortmask; uniform float4 _UVdistortmask_ST;
            uniform fixed _FurTessalation;
            uniform sampler2D _Furnoisemap; uniform float4 _Furnoisemap_ST;
            uniform float _utessspeed;
            uniform float _vtessspeed;
            uniform fixed _Animateddisplacement;
            uniform float _MainTexrotateangle;
            uniform float _MainTexrotatespeed;
            uniform fixed _AnimatedMainTexRotation;
            uniform float _MaintexUVwarprotationangle;
            uniform float _MaintexUVwarprotationSpeed;
            uniform fixed _MaintexUVanimateddistortRotation;
            uniform fixed _Furanimatedrotation;
            uniform float _FurTessAngle;
            uniform float _FurTessSpeed;
            uniform fixed _AnimatedHeightRotation;
            uniform float _HeightmapRotationAngle;
            uniform float _Heightmaprotationspeed;
            uniform fixed _AnimatedHeightmap;
            uniform float _HeightmapUspeed;
            uniform float _HeightmapVspeed;
            uniform float _DisplacementImin;
            uniform float _DisplacementImax;
            uniform float _Displacementomax;
            uniform float _Displacementomin;
            uniform float _AlphaCutoff;
            uniform fixed _Pixelate;
            uniform float _PixelationStrength;
            uniform fixed _NoiseStretchwarp;
            uniform float _NoiseStretchwarpStrength;
            uniform sampler2D _NoiseStretchWarp; uniform float4 _NoiseStretchWarp_ST;
            uniform fixed _Overlay;
            uniform float _OverlayPixelation;
            uniform sampler2D _OverlayTex; uniform float4 _OverlayTex_ST;
            uniform float _OverlayUspeed;
            uniform float _OverlayVspeed;
            uniform fixed _WorldSpaceOverlay;
            uniform float4 _OverlayColor;
            uniform float _OverlayColorStrength;
            uniform sampler2D _OverlayNoiseWarpTex; uniform float4 _OverlayNoiseWarpTex_ST;
            uniform float _OverlayNoisewarpUspeed;
            uniform fixed _Overlaynoisewarp;
            uniform float _DistortionOverlayStrength;
            uniform float _OverlayNoisewarpVspeed;
            uniform fixed _AnimatedOverlayNoisewarp;
            uniform fixed _ScreenSpaceOverlay;
            uniform fixed _WorldSpaceMaintex;
            uniform fixed _CellShading;
            uniform float _CellShadingAmount;
            uniform samplerCUBE _CellshadingCubemap;
            uniform float _Cubemapreflectionbluriness;
            uniform fixed _EdgeGlow;
            uniform float _EdgeStrength;
            uniform float4 _EdgeColor;
            uniform float _EdgeColorStrength;
            uniform float _EdgeHardness;
            uniform float _TransparencyStrength;
            uniform fixed _TransparentTexture;
            uniform float4 _LightColorTint;
            uniform float _Bands;
            uniform float _ShadingStrength;
            uniform fixed _TransparentOverlay;
            uniform sampler2D _EmissionMap; uniform float4 _EmissionMap_ST;
            uniform float _EmissionmapStrength;
            uniform float4 _EmissionColor;
            uniform float _DarknessSelfLighting;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4986 = _Time;
                float2 _AnimatedNoiseWarping_var = lerp( o.uv0, (o.uv0+(node_4986.g*float2(_Uspeednoisewarp,_Vspeednoisewarp))), _AnimatedNoiseWarping );
                float4 _Noisewarptex_var = tex2Dlod(_Noisewarptex,float4(TRANSFORM_TEX(_AnimatedNoiseWarping_var, _Noisewarptex),0.0,0));
                float4 node_957 = _Time;
                float3 node_1799 = saturate((sin((_Waveform*(lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( o.uv0.g, mul(unity_ObjectToWorld, v.vertex).g, _WorldPlacementVertical ), _VerticalLines ).r, _VerticalLines2 )+lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( o.uv0.r, mul(unity_ObjectToWorld, v.vertex).r, _WorldPlacementHorizontal ), _HorizontalLines ).r, _HorizontalLines2 )+lerp( 0.0, node_957.r, _MovingEmission ))*6.28318530718))*0.5+0.5));
                float2 node_217 = (o.uv0*_NoiseStretchwarpStrength);
                float4 _NoiseStretchWarp_var = tex2Dlod(_NoiseStretchWarp,float4(TRANSFORM_TEX(node_217, _NoiseStretchWarp),0.0,0));
                v.vertex.xyz += (lerp( (_Noisewarptex_var.r*_Noisewarpstrength), (node_1799*v.normal*_DeformAmount), _WavewarpingNoisewarping )+lerp( 0.0, _NoiseStretchWarp_var.rgb, _NoiseStretchwarp ));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
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
                    float node_4826_ang = _HeightmapRotationAngle;
                    float node_4826_spd = _Heightmaprotationspeed;
                    float node_4826_cos = cos(node_4826_spd*node_4826_ang);
                    float node_4826_sin = sin(node_4826_spd*node_4826_ang);
                    float2 node_4826_piv = float2(0.5,0.5);
                    float2 node_4826 = (mul(v.texcoord0-node_4826_piv,float2x2( node_4826_cos, -node_4826_sin, node_4826_sin, node_4826_cos))+node_4826_piv);
                    float4 node_1065 = _Time;
                    float2 _AnimatedHeightRotation_var = lerp( node_4826, (node_4826+node_1065.r), _AnimatedHeightRotation );
                    float4 node_5006 = _Time;
                    float2 _AnimatedHeightmap_var = lerp( _AnimatedHeightRotation_var, (_AnimatedHeightRotation_var+(float2(_HeightmapUspeed,_HeightmapVspeed)*node_5006.r)), _AnimatedHeightmap );
                    float4 _Height_var = tex2Dlod(_Height,float4(TRANSFORM_TEX(_AnimatedHeightmap_var, _Height),0.0,0));
                    float4 node_3012 = _Time;
                    v.vertex.xyz += (v.normal*(_Height_var.rgb*lerp( _Displacementvalue, (_Displacementomax + ( (sin((_Displacementvalue*node_3012.g)) - _DisplacementImin) * (_Displacementomin - _Displacementomax) ) / (_DisplacementImax - _DisplacementImin)), _Animateddisplacement )));
                }
                float Tessellation(TessVertex v){
                    float node_1853_ang = _FurTessAngle;
                    float node_1853_spd = _FurTessSpeed;
                    float node_1853_cos = cos(node_1853_spd*node_1853_ang);
                    float node_1853_sin = sin(node_1853_spd*node_1853_ang);
                    float2 node_1853_piv = float2(0.5,0.5);
                    float2 node_1853 = (mul(v.texcoord0-node_1853_piv,float2x2( node_1853_cos, -node_1853_sin, node_1853_sin, node_1853_cos))+node_1853_piv);
                    float4 node_6703 = _Time;
                    float2 node_387 = (lerp( node_1853, (node_1853+node_6703.r), _Furanimatedrotation )*float2(_utessspeed,_vtessspeed));
                    float4 _Furnoisemap_var = tex2Dlod(_Furnoisemap,float4(TRANSFORM_TEX(node_387, _Furnoisemap),0.0,0));
                    float4 node_5639 = _Time;
                    return lerp( _node_2035, lerp( lerp( _TessalationStrength, (_Furnoisemap_var.r*50.0*_TessalationStrength), _FurTessalation ), (_TessalationStrength*(sin((node_5639.r*_TessalationSpeed))*0.2+0.7)), _AnimatedTessalation ), _Tessalation );
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float node_5240_ang = _MainTexrotateangle;
                float node_5240_spd = _MainTexrotatespeed;
                float node_5240_cos = cos(node_5240_spd*node_5240_ang);
                float node_5240_sin = sin(node_5240_spd*node_5240_ang);
                float2 node_5240_piv = float2(0.5,0.5);
                float3 _WorldSpaceMaintex_var = lerp( float3(i.uv0,0.0), i.posWorld.rgb, _WorldSpaceMaintex );
                float2 node_5240 = (mul(_WorldSpaceMaintex_var-node_5240_piv,float2x2( node_5240_cos, -node_5240_sin, node_5240_sin, node_5240_cos))+node_5240_piv);
                float4 node_5854 = _Time;
                float2 node_560 = (_omin + ( (lerp( node_5240, (node_5240+node_5854.r), _AnimatedMainTexRotation ) - _imin) * (_omax - _omin) ) / (_imax - _imin));
                float4 node_3668 = _Time;
                float2 _texmove_var = lerp( node_560, (node_560+(node_3668.r*float2(_USpeedTex,_Vspeedtex))), _texmove );
                float node_9208_ang = _MaintexUVwarprotationangle;
                float node_9208_spd = _MaintexUVwarprotationSpeed;
                float node_9208_cos = cos(node_9208_spd*node_9208_ang);
                float node_9208_sin = sin(node_9208_spd*node_9208_ang);
                float2 node_9208_piv = float2(0.5,0.5);
                float2 node_9208 = (mul(i.uv0-node_9208_piv,float2x2( node_9208_cos, -node_9208_sin, node_9208_sin, node_9208_cos))+node_9208_piv);
                float4 node_613 = _Time;
                float2 _MaintexUVanimateddistortRotation_var = lerp( node_9208, (node_9208+node_613.r), _MaintexUVanimateddistortRotation );
                float4 node_7407 = _Time;
                float2 _animatednoiseUVdistortion_var = lerp( _MaintexUVanimateddistortRotation_var, (_MaintexUVanimateddistortRotation_var+(node_7407.g*float2(_UspeedNoiseUVdistort,_VspeedNoiseUVdistort))), _animatednoiseUVdistortion );
                float4 _noiseuvdistorttex_var = tex2D(_noiseuvdistorttex,TRANSFORM_TEX(_animatednoiseUVdistortion_var, _noiseuvdistorttex));
                float4 _UVdistortmask_var = tex2D(_UVdistortmask,TRANSFORM_TEX(i.uv0, _UVdistortmask));
                float3 _noiseuvtexdistortion_var = lerp( float3(_texmove_var,0.0), lerp(_WorldSpaceMaintex_var,float3(lerp(_texmove_var,float2(_noiseuvdistorttex_var.r,_noiseuvdistorttex_var.r),_noiseuvdistortstrength),0.0),_UVdistortmask_var.r), _noiseuvtexdistortion );
                float node_9364 = ceil(abs(_PixelationStrength));
                float3 _Pixelate_var = lerp( _noiseuvtexdistortion_var, (floor((_noiseuvtexdistortion_var*node_9364))/node_9364), _Pixelate );
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(_Pixelate_var, _Albedo));
                clip(lerp( 1.0, (_Albedo_var.a-_TransparencyStrength), _TransparentTexture ) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = ((attenuation*_ShadingStrength)*_LightColor0.rgb*floor(max(0,dot(lightDirection,normalDirection)) * _Bands) / (_Bands - 1));
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float _Waveform;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float _DeformAmount;
            uniform float _imin;
            uniform float _imax;
            uniform float _omin;
            uniform float _omax;
            uniform fixed _VerticalLines;
            uniform float4 _PulseColorFallback;
            uniform fixed _HorizontalLines;
            uniform fixed _VerticalLines2;
            uniform fixed _HorizontalLines2;
            uniform fixed _texmove;
            uniform float _USpeedTex;
            uniform fixed _WorldPlacementHorizontal;
            uniform fixed _WorldPlacementVertical;
            uniform fixed _MovingEmission;
            uniform float _TessalationStrength;
            uniform sampler2D _Height; uniform float4 _Height_ST;
            uniform float _Displacementvalue;
            uniform fixed _AnimatedTessalation;
            uniform fixed _Tessalation;
            uniform float _node_2035;
            uniform float _TessalationSpeed;
            uniform float _Vspeedtex;
            uniform fixed _WavewarpingNoisewarping;
            uniform sampler2D _Noisewarptex; uniform float4 _Noisewarptex_ST;
            uniform fixed _AnimatedNoiseWarping;
            uniform float _Noisewarpstrength;
            uniform float _Uspeednoisewarp;
            uniform float _Vspeednoisewarp;
            uniform fixed _noiseuvtexdistortion;
            uniform sampler2D _noiseuvdistorttex; uniform float4 _noiseuvdistorttex_ST;
            uniform fixed _animatednoiseUVdistortion;
            uniform float _UspeedNoiseUVdistort;
            uniform float _VspeedNoiseUVdistort;
            uniform float _noiseuvdistortstrength;
            uniform sampler2D _UVdistortmask; uniform float4 _UVdistortmask_ST;
            uniform fixed _FurTessalation;
            uniform sampler2D _Furnoisemap; uniform float4 _Furnoisemap_ST;
            uniform float _utessspeed;
            uniform float _vtessspeed;
            uniform fixed _Animateddisplacement;
            uniform float _MainTexrotateangle;
            uniform float _MainTexrotatespeed;
            uniform fixed _AnimatedMainTexRotation;
            uniform float _MaintexUVwarprotationangle;
            uniform float _MaintexUVwarprotationSpeed;
            uniform fixed _MaintexUVanimateddistortRotation;
            uniform fixed _Furanimatedrotation;
            uniform float _FurTessAngle;
            uniform float _FurTessSpeed;
            uniform fixed _AnimatedHeightRotation;
            uniform float _HeightmapRotationAngle;
            uniform float _Heightmaprotationspeed;
            uniform fixed _AnimatedHeightmap;
            uniform float _HeightmapUspeed;
            uniform float _HeightmapVspeed;
            uniform float _DisplacementImin;
            uniform float _DisplacementImax;
            uniform float _Displacementomax;
            uniform float _Displacementomin;
            uniform fixed _Pixelate;
            uniform float _PixelationStrength;
            uniform fixed _NoiseStretchwarp;
            uniform float _NoiseStretchwarpStrength;
            uniform sampler2D _NoiseStretchWarp; uniform float4 _NoiseStretchWarp_ST;
            uniform fixed _WorldSpaceMaintex;
            uniform float _TransparencyStrength;
            uniform fixed _TransparentTexture;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4986 = _Time;
                float2 _AnimatedNoiseWarping_var = lerp( o.uv0, (o.uv0+(node_4986.g*float2(_Uspeednoisewarp,_Vspeednoisewarp))), _AnimatedNoiseWarping );
                float4 _Noisewarptex_var = tex2Dlod(_Noisewarptex,float4(TRANSFORM_TEX(_AnimatedNoiseWarping_var, _Noisewarptex),0.0,0));
                float4 node_957 = _Time;
                float3 node_1799 = saturate((sin((_Waveform*(lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( o.uv0.g, mul(unity_ObjectToWorld, v.vertex).g, _WorldPlacementVertical ), _VerticalLines ).r, _VerticalLines2 )+lerp( _PulseColorFallback.rgb, lerp( _PulseColorFallback.rgb, lerp( o.uv0.r, mul(unity_ObjectToWorld, v.vertex).r, _WorldPlacementHorizontal ), _HorizontalLines ).r, _HorizontalLines2 )+lerp( 0.0, node_957.r, _MovingEmission ))*6.28318530718))*0.5+0.5));
                float2 node_217 = (o.uv0*_NoiseStretchwarpStrength);
                float4 _NoiseStretchWarp_var = tex2Dlod(_NoiseStretchWarp,float4(TRANSFORM_TEX(node_217, _NoiseStretchWarp),0.0,0));
                v.vertex.xyz += (lerp( (_Noisewarptex_var.r*_Noisewarpstrength), (node_1799*v.normal*_DeformAmount), _WavewarpingNoisewarping )+lerp( 0.0, _NoiseStretchWarp_var.rgb, _NoiseStretchwarp ));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
                    float node_4826_ang = _HeightmapRotationAngle;
                    float node_4826_spd = _Heightmaprotationspeed;
                    float node_4826_cos = cos(node_4826_spd*node_4826_ang);
                    float node_4826_sin = sin(node_4826_spd*node_4826_ang);
                    float2 node_4826_piv = float2(0.5,0.5);
                    float2 node_4826 = (mul(v.texcoord0-node_4826_piv,float2x2( node_4826_cos, -node_4826_sin, node_4826_sin, node_4826_cos))+node_4826_piv);
                    float4 node_1065 = _Time;
                    float2 _AnimatedHeightRotation_var = lerp( node_4826, (node_4826+node_1065.r), _AnimatedHeightRotation );
                    float4 node_5006 = _Time;
                    float2 _AnimatedHeightmap_var = lerp( _AnimatedHeightRotation_var, (_AnimatedHeightRotation_var+(float2(_HeightmapUspeed,_HeightmapVspeed)*node_5006.r)), _AnimatedHeightmap );
                    float4 _Height_var = tex2Dlod(_Height,float4(TRANSFORM_TEX(_AnimatedHeightmap_var, _Height),0.0,0));
                    float4 node_3012 = _Time;
                    v.vertex.xyz += (v.normal*(_Height_var.rgb*lerp( _Displacementvalue, (_Displacementomax + ( (sin((_Displacementvalue*node_3012.g)) - _DisplacementImin) * (_Displacementomin - _Displacementomax) ) / (_DisplacementImax - _DisplacementImin)), _Animateddisplacement )));
                }
                float Tessellation(TessVertex v){
                    float node_1853_ang = _FurTessAngle;
                    float node_1853_spd = _FurTessSpeed;
                    float node_1853_cos = cos(node_1853_spd*node_1853_ang);
                    float node_1853_sin = sin(node_1853_spd*node_1853_ang);
                    float2 node_1853_piv = float2(0.5,0.5);
                    float2 node_1853 = (mul(v.texcoord0-node_1853_piv,float2x2( node_1853_cos, -node_1853_sin, node_1853_sin, node_1853_cos))+node_1853_piv);
                    float4 node_6703 = _Time;
                    float2 node_387 = (lerp( node_1853, (node_1853+node_6703.r), _Furanimatedrotation )*float2(_utessspeed,_vtessspeed));
                    float4 _Furnoisemap_var = tex2Dlod(_Furnoisemap,float4(TRANSFORM_TEX(node_387, _Furnoisemap),0.0,0));
                    float4 node_5639 = _Time;
                    return lerp( _node_2035, lerp( lerp( _TessalationStrength, (_Furnoisemap_var.r*50.0*_TessalationStrength), _FurTessalation ), (_TessalationStrength*(sin((node_5639.r*_TessalationSpeed))*0.2+0.7)), _AnimatedTessalation ), _Tessalation );
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float node_5240_ang = _MainTexrotateangle;
                float node_5240_spd = _MainTexrotatespeed;
                float node_5240_cos = cos(node_5240_spd*node_5240_ang);
                float node_5240_sin = sin(node_5240_spd*node_5240_ang);
                float2 node_5240_piv = float2(0.5,0.5);
                float3 _WorldSpaceMaintex_var = lerp( float3(i.uv0,0.0), i.posWorld.rgb, _WorldSpaceMaintex );
                float2 node_5240 = (mul(_WorldSpaceMaintex_var-node_5240_piv,float2x2( node_5240_cos, -node_5240_sin, node_5240_sin, node_5240_cos))+node_5240_piv);
                float4 node_5854 = _Time;
                float2 node_560 = (_omin + ( (lerp( node_5240, (node_5240+node_5854.r), _AnimatedMainTexRotation ) - _imin) * (_omax - _omin) ) / (_imax - _imin));
                float4 node_3668 = _Time;
                float2 _texmove_var = lerp( node_560, (node_560+(node_3668.r*float2(_USpeedTex,_Vspeedtex))), _texmove );
                float node_9208_ang = _MaintexUVwarprotationangle;
                float node_9208_spd = _MaintexUVwarprotationSpeed;
                float node_9208_cos = cos(node_9208_spd*node_9208_ang);
                float node_9208_sin = sin(node_9208_spd*node_9208_ang);
                float2 node_9208_piv = float2(0.5,0.5);
                float2 node_9208 = (mul(i.uv0-node_9208_piv,float2x2( node_9208_cos, -node_9208_sin, node_9208_sin, node_9208_cos))+node_9208_piv);
                float4 node_613 = _Time;
                float2 _MaintexUVanimateddistortRotation_var = lerp( node_9208, (node_9208+node_613.r), _MaintexUVanimateddistortRotation );
                float4 node_7407 = _Time;
                float2 _animatednoiseUVdistortion_var = lerp( _MaintexUVanimateddistortRotation_var, (_MaintexUVanimateddistortRotation_var+(node_7407.g*float2(_UspeedNoiseUVdistort,_VspeedNoiseUVdistort))), _animatednoiseUVdistortion );
                float4 _noiseuvdistorttex_var = tex2D(_noiseuvdistorttex,TRANSFORM_TEX(_animatednoiseUVdistortion_var, _noiseuvdistorttex));
                float4 _UVdistortmask_var = tex2D(_UVdistortmask,TRANSFORM_TEX(i.uv0, _UVdistortmask));
                float3 _noiseuvtexdistortion_var = lerp( float3(_texmove_var,0.0), lerp(_WorldSpaceMaintex_var,float3(lerp(_texmove_var,float2(_noiseuvdistorttex_var.r,_noiseuvdistorttex_var.r),_noiseuvdistortstrength),0.0),_UVdistortmask_var.r), _noiseuvtexdistortion );
                float node_9364 = ceil(abs(_PixelationStrength));
                float3 _Pixelate_var = lerp( _noiseuvtexdistortion_var, (floor((_noiseuvtexdistortion_var*node_9364))/node_9364), _Pixelate );
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(_Pixelate_var, _Albedo));
                clip(lerp( 1.0, (_Albedo_var.a-_TransparencyStrength), _TransparentTexture ) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
