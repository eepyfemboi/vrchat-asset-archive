// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:3,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:1000000,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34288,y:32607,varname:node_3138,prsc:2|emission-327-OUT,clip-7345-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1808,x:34729,y:32554,varname:node_1808,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2d,id:2715,x:31522,y:30017,ptovrint:False,ptlb:Tex 1,ptin:_Tex1,varname:node_2715,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85aca07258c031f4cb6b1dfe3f1cceba,ntxv:0,isnm:False|UVIN-8301-OUT;n:type:ShaderForge.SFN_Tex2d,id:7545,x:31161,y:30649,ptovrint:False,ptlb:Tex 2,ptin:_Tex2,varname:_Heartsbottom_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85aca07258c031f4cb6b1dfe3f1cceba,ntxv:0,isnm:False|UVIN-8602-OUT;n:type:ShaderForge.SFN_Tex2d,id:9766,x:31337,y:31253,ptovrint:False,ptlb:Tex 3,ptin:_Tex3,varname:_Heartsbottom_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85aca07258c031f4cb6b1dfe3f1cceba,ntxv:0,isnm:False|UVIN-809-OUT;n:type:ShaderForge.SFN_Tex2d,id:2118,x:31329,y:31800,ptovrint:False,ptlb:Tex 4,ptin:_Tex4,varname:_Heartsbottom_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85aca07258c031f4cb6b1dfe3f1cceba,ntxv:0,isnm:False|UVIN-2607-OUT;n:type:ShaderForge.SFN_Tex2d,id:8072,x:31451,y:32250,ptovrint:False,ptlb:Tex 5,ptin:_Tex5,varname:_Heartsbottom_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85aca07258c031f4cb6b1dfe3f1cceba,ntxv:0,isnm:False|UVIN-6183-OUT;n:type:ShaderForge.SFN_Tex2d,id:1364,x:31305,y:32650,ptovrint:False,ptlb:Tex 6,ptin:_Tex6,varname:_Heartsbottom_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85aca07258c031f4cb6b1dfe3f1cceba,ntxv:0,isnm:False|UVIN-1442-OUT;n:type:ShaderForge.SFN_Tex2d,id:4698,x:32189,y:33230,ptovrint:False,ptlb:Tex 7,ptin:_Tex7,varname:_Manafill_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85aca07258c031f4cb6b1dfe3f1cceba,ntxv:0,isnm:False|UVIN-5685-OUT;n:type:ShaderForge.SFN_Tex2d,id:8265,x:32189,y:33416,ptovrint:False,ptlb:Tex 8,ptin:_Tex8,varname:_Manafill_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85aca07258c031f4cb6b1dfe3f1cceba,ntxv:0,isnm:False|UVIN-969-OUT;n:type:ShaderForge.SFN_Tex2d,id:9061,x:32189,y:33668,ptovrint:False,ptlb:Tex 9,ptin:_Tex9,varname:_Itemcontents_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85aca07258c031f4cb6b1dfe3f1cceba,ntxv:0,isnm:False|UVIN-5350-OUT;n:type:ShaderForge.SFN_Add,id:7498,x:32664,y:32909,varname:node_7498,prsc:2|A-2715-R,B-7545-R,C-9766-R,D-2118-R;n:type:ShaderForge.SFN_Add,id:759,x:32664,y:33023,varname:node_759,prsc:2|A-8072-R,B-1364-R,C-4698-R,D-8874-OUT,E-9137-OUT;n:type:ShaderForge.SFN_Add,id:7345,x:32847,y:32961,varname:node_7345,prsc:2|A-7498-OUT,B-759-OUT;n:type:ShaderForge.SFN_Add,id:476,x:32876,y:32328,varname:node_476,prsc:2|A-369-OUT,B-3948-OUT,C-777-OUT,D-5774-OUT;n:type:ShaderForge.SFN_Add,id:4462,x:32876,y:32461,varname:node_4462,prsc:2|A-4701-OUT,B-6608-OUT,C-4227-OUT,D-6759-OUT,E-3538-OUT;n:type:ShaderForge.SFN_Add,id:327,x:33052,y:32400,varname:node_327,prsc:2|A-476-OUT,B-4462-OUT;n:type:ShaderForge.SFN_Add,id:9717,x:30346,y:31354,varname:node_9717,prsc:2|A-6097-OUT,B-9872-OUT;n:type:ShaderForge.SFN_Set,id:3428,x:34897,y:32501,varname:Screenpos,prsc:2|IN-1808-UVOUT;n:type:ShaderForge.SFN_Set,id:7302,x:34897,y:32552,varname:ScreenU,prsc:2|IN-1808-U;n:type:ShaderForge.SFN_Set,id:144,x:34897,y:32618,varname:ScreenV,prsc:2|IN-1808-V;n:type:ShaderForge.SFN_Add,id:8331,x:30346,y:31471,varname:node_8331,prsc:2|A-4427-OUT,B-2081-OUT;n:type:ShaderForge.SFN_Add,id:5770,x:30345,y:31890,varname:node_5770,prsc:2|A-8111-OUT,B-2856-OUT;n:type:ShaderForge.SFN_Add,id:6660,x:30345,y:32002,varname:node_6660,prsc:2|A-2178-OUT,B-4904-OUT;n:type:ShaderForge.SFN_Add,id:97,x:30345,y:32257,varname:node_97,prsc:2|A-4101-OUT,B-3141-OUT;n:type:ShaderForge.SFN_Add,id:1161,x:30345,y:32369,varname:node_1161,prsc:2|A-2776-OUT,B-3129-OUT;n:type:ShaderForge.SFN_Add,id:5349,x:30388,y:32675,varname:node_5349,prsc:2|A-2931-OUT,B-8113-OUT;n:type:ShaderForge.SFN_Add,id:871,x:30388,y:32790,varname:node_871,prsc:2|A-7126-OUT,B-3620-OUT;n:type:ShaderForge.SFN_Add,id:4598,x:31212,y:33699,varname:node_4598,prsc:2|A-9709-OUT,B-106-OUT;n:type:ShaderForge.SFN_Add,id:4406,x:31212,y:33811,varname:node_4406,prsc:2|A-4615-OUT,B-663-OUT;n:type:ShaderForge.SFN_Add,id:2182,x:30195,y:30796,varname:node_2182,prsc:2|A-5342-OUT,B-7112-OUT;n:type:ShaderForge.SFN_Add,id:5138,x:30170,y:30681,varname:node_5138,prsc:2|A-9706-OUT,B-6500-OUT;n:type:ShaderForge.SFN_Add,id:4528,x:30516,y:30100,varname:node_4528,prsc:2|A-8966-OUT,B-8753-OUT;n:type:ShaderForge.SFN_Add,id:8336,x:30516,y:29984,varname:node_8336,prsc:2|A-7891-OUT,B-1945-OUT;n:type:ShaderForge.SFN_Add,id:2800,x:31212,y:33945,varname:node_2800,prsc:2|A-3782-OUT,B-9342-OUT;n:type:ShaderForge.SFN_Add,id:3925,x:31212,y:34062,varname:node_3925,prsc:2|A-5848-OUT,B-8768-OUT;n:type:ShaderForge.SFN_Add,id:3364,x:31212,y:34222,varname:node_3364,prsc:2|A-3711-OUT,B-3812-OUT;n:type:ShaderForge.SFN_Add,id:9206,x:31212,y:34334,varname:node_9206,prsc:2|A-5581-OUT,B-9978-OUT;n:type:ShaderForge.SFN_Append,id:8301,x:30705,y:30031,varname:node_8301,prsc:2|A-8336-OUT,B-4528-OUT;n:type:ShaderForge.SFN_Append,id:8602,x:30339,y:30734,varname:node_8602,prsc:2|A-5138-OUT,B-2182-OUT;n:type:ShaderForge.SFN_Append,id:809,x:30518,y:31412,varname:node_809,prsc:2|A-9717-OUT,B-8331-OUT;n:type:ShaderForge.SFN_Append,id:2607,x:30528,y:31963,varname:node_2607,prsc:2|A-5770-OUT,B-6660-OUT;n:type:ShaderForge.SFN_Append,id:6183,x:30528,y:32309,varname:node_6183,prsc:2|A-97-OUT,B-1161-OUT;n:type:ShaderForge.SFN_Append,id:1442,x:30595,y:32723,varname:node_1442,prsc:2|A-5349-OUT,B-871-OUT;n:type:ShaderForge.SFN_Append,id:5685,x:31403,y:33759,varname:node_5685,prsc:2|A-4598-OUT,B-4406-OUT;n:type:ShaderForge.SFN_Append,id:969,x:31403,y:33998,varname:node_969,prsc:2|A-2800-OUT,B-3925-OUT;n:type:ShaderForge.SFN_Append,id:5350,x:31410,y:34278,varname:node_5350,prsc:2|A-3364-OUT,B-9206-OUT;n:type:ShaderForge.SFN_Slider,id:3141,x:29907,y:32307,ptovrint:False,ptlb:Tex 5 left/right,ptin:_Tex5leftright,varname:node_3141,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:3129,x:29907,y:32412,ptovrint:False,ptlb:Tex 5 up/down,ptin:_Tex5updown,varname:_node_3141_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:8113,x:29950,y:32741,ptovrint:False,ptlb:Tex 6 left/right,ptin:_Tex6leftright,varname:_node_3141_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:3620,x:29950,y:32843,ptovrint:False,ptlb:Tex 6 up/down,ptin:_Tex6updown,varname:_node_3141_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:106,x:30760,y:33758,ptovrint:False,ptlb:Tex 7 left/right,ptin:_Tex7leftright,varname:_node_3141_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:663,x:30760,y:33848,ptovrint:False,ptlb:Tex 7 up/down,ptin:_Tex7updown,varname:_node_3141_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:9342,x:30745,y:33998,ptovrint:False,ptlb:Tex 8 left/right,ptin:_Tex8leftright,varname:_node_3141_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:8768,x:30745,y:34121,ptovrint:False,ptlb:Tex 8 up/down,ptin:_Tex8updown,varname:_node_3141_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:3812,x:30745,y:34271,ptovrint:False,ptlb:Tex 9 left/right,ptin:_Tex9leftright,varname:_node_3141_copy_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:9978,x:30745,y:34403,ptovrint:False,ptlb:Tex 9 up/down,ptin:_Tex9updown,varname:_node_3141_copy_copy_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Get,id:7891,x:30318,y:29947,varname:node_7891,prsc:2|IN-7302-OUT;n:type:ShaderForge.SFN_Get,id:8966,x:30374,y:30186,varname:node_8966,prsc:2|IN-144-OUT;n:type:ShaderForge.SFN_Get,id:9706,x:29919,y:30681,varname:node_9706,prsc:2|IN-7302-OUT;n:type:ShaderForge.SFN_Get,id:2776,x:30186,y:32458,varname:node_2776,prsc:2|IN-144-OUT;n:type:ShaderForge.SFN_Get,id:2931,x:30076,y:32671,varname:node_2931,prsc:2|IN-7302-OUT;n:type:ShaderForge.SFN_Get,id:7126,x:30213,y:32870,varname:node_7126,prsc:2|IN-144-OUT;n:type:ShaderForge.SFN_Get,id:9709,x:30920,y:33691,varname:node_9709,prsc:2|IN-7302-OUT;n:type:ShaderForge.SFN_Get,id:4615,x:31043,y:33887,varname:node_4615,prsc:2|IN-144-OUT;n:type:ShaderForge.SFN_Get,id:5342,x:30044,y:30877,varname:node_5342,prsc:2|IN-144-OUT;n:type:ShaderForge.SFN_Get,id:6097,x:30062,y:31342,varname:node_6097,prsc:2|IN-7302-OUT;n:type:ShaderForge.SFN_Get,id:4427,x:30220,y:31543,varname:node_4427,prsc:2|IN-144-OUT;n:type:ShaderForge.SFN_Get,id:8111,x:30110,y:31871,varname:node_8111,prsc:2|IN-7302-OUT;n:type:ShaderForge.SFN_Get,id:2178,x:30217,y:32084,varname:node_2178,prsc:2|IN-144-OUT;n:type:ShaderForge.SFN_Get,id:4101,x:30043,y:32251,varname:node_4101,prsc:2|IN-7302-OUT;n:type:ShaderForge.SFN_Get,id:3782,x:30881,y:33933,varname:node_3782,prsc:2|IN-7302-OUT;n:type:ShaderForge.SFN_Get,id:5848,x:31050,y:34156,varname:node_5848,prsc:2|IN-144-OUT;n:type:ShaderForge.SFN_Get,id:3711,x:30881,y:34212,varname:node_3711,prsc:2|IN-7302-OUT;n:type:ShaderForge.SFN_Get,id:5581,x:31025,y:34442,varname:node_5581,prsc:2|IN-144-OUT;n:type:ShaderForge.SFN_Slider,id:6500,x:29783,y:30756,ptovrint:False,ptlb:Tex 2 left/right,ptin:_Tex2leftright,varname:node_6500,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:8753,x:30091,y:30114,ptovrint:False,ptlb:Tex 1 up/down,ptin:_Tex1updown,varname:node_8753,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:1945,x:30091,y:30014,ptovrint:False,ptlb:Tex 1 left/right,ptin:_Tex1leftright,varname:node_1945,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:7112,x:29777,y:30850,ptovrint:False,ptlb:Tex 2 up/down,ptin:_Tex2updown,varname:node_7112,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:9872,x:29956,y:31415,ptovrint:False,ptlb:Tex 3 left/right,ptin:_Tex3leftright,varname:node_9872,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:2081,x:29956,y:31505,ptovrint:False,ptlb:Tex 3 up/down,ptin:_Tex3updown,varname:node_2081,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:2856,x:29940,y:31964,ptovrint:False,ptlb:Tex 4 left/right,ptin:_Tex4leftright,varname:node_2856,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:4904,x:29907,y:32075,ptovrint:False,ptlb:Tex 4 up/down,ptin:_Tex4updown,varname:node_4904,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Vector1,id:5030,x:32938,y:33165,varname:node_5030,prsc:2,v1:8;n:type:ShaderForge.SFN_Multiply,id:8874,x:32735,y:33567,varname:node_8874,prsc:2|A-9061-R,B-6540-OUT;n:type:ShaderForge.SFN_Slider,id:6540,x:32657,y:33732,ptovrint:False,ptlb:Tex 9 opacity,ptin:_Tex9opacity,varname:node_6540,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:20;n:type:ShaderForge.SFN_Multiply,id:369,x:32073,y:29838,varname:node_369,prsc:2|A-5020-OUT,B-4532-RGB;n:type:ShaderForge.SFN_Multiply,id:3948,x:32005,y:30486,varname:node_3948,prsc:2|A-8924-OUT,B-1856-RGB;n:type:ShaderForge.SFN_Multiply,id:777,x:31944,y:31228,varname:node_777,prsc:2|A-1146-OUT,B-4381-RGB;n:type:ShaderForge.SFN_Multiply,id:5774,x:32034,y:31739,varname:node_5774,prsc:2|A-5872-OUT,B-470-RGB;n:type:ShaderForge.SFN_Multiply,id:4701,x:31730,y:32269,varname:node_4701,prsc:2|A-8072-RGB,B-2854-RGB;n:type:ShaderForge.SFN_Multiply,id:6608,x:31993,y:32577,varname:node_6608,prsc:2|A-9459-OUT,B-6074-RGB;n:type:ShaderForge.SFN_Multiply,id:4227,x:32457,y:33226,varname:node_4227,prsc:2|A-4698-RGB,B-242-RGB;n:type:ShaderForge.SFN_Multiply,id:6759,x:32443,y:33433,varname:node_6759,prsc:2|A-8265-RGB,B-7030-RGB;n:type:ShaderForge.SFN_Color,id:470,x:31173,y:31897,ptovrint:False,ptlb:Tex 4 tint,ptin:_Tex4tint,varname:node_470,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:4532,x:31308,y:29921,ptovrint:False,ptlb:Tex 1 tint,ptin:_Tex1tint,varname:_node_470_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:1856,x:30998,y:30611,ptovrint:False,ptlb:Tex 2 tint,ptin:_Tex2tint,varname:_node_470_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:2854,x:31302,y:32385,ptovrint:False,ptlb:Tex 5 tint,ptin:_Tex5tint,varname:_node_470_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:4381,x:31174,y:31236,ptovrint:False,ptlb:Tex 3 tint,ptin:_Tex3tint,varname:_node_470_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6074,x:31090,y:32719,ptovrint:False,ptlb:Tex 6 tint,ptin:_Tex6tint,varname:_node_470_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:242,x:32026,y:33237,ptovrint:False,ptlb:Tex 7 tint,ptin:_Tex7tint,varname:_node_470_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:7030,x:32026,y:33437,ptovrint:False,ptlb:Tex 8 tint,ptin:_Tex8tint,varname:_node_470_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:7428,x:32026,y:33688,ptovrint:False,ptlb:Tex 9 tint,ptin:_Tex9tint,varname:_node_470_copy_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3538,x:32468,y:33589,varname:node_3538,prsc:2|A-9061-RGB,B-7428-RGB;n:type:ShaderForge.SFN_Multiply,id:7328,x:31912,y:30062,varname:node_7328,prsc:2|A-2715-A,B-412-OUT;n:type:ShaderForge.SFN_Multiply,id:5020,x:31912,y:29917,varname:node_5020,prsc:2|A-2715-RGB,B-7328-OUT;n:type:ShaderForge.SFN_Slider,id:3573,x:30632,y:30423,ptovrint:False,ptlb:Tex 1 fade amount left to right,ptin:_Tex1fadeamountlefttoright,varname:node_3573,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:9059,x:31026,y:30072,varname:node_9059,prsc:2|IN-2117-OUT;n:type:ShaderForge.SFN_Add,id:6661,x:31159,y:30207,varname:node_6661,prsc:2|A-9059-OUT,B-2871-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2117,x:30932,y:30213,varname:node_2117,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7750-U;n:type:ShaderForge.SFN_ComponentMask,id:8354,x:30679,y:30894,varname:node_8354,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2236-U;n:type:ShaderForge.SFN_OneMinus,id:689,x:30773,y:30753,varname:node_689,prsc:2|IN-8354-OUT;n:type:ShaderForge.SFN_Add,id:5650,x:30906,y:30888,varname:node_5650,prsc:2|A-689-OUT,B-3332-OUT;n:type:ShaderForge.SFN_RemapRange,id:3332,x:30792,y:31035,varname:node_3332,prsc:2,frmn:0,frmx:1,tomn:-0.95,tomx:1|IN-2605-OUT;n:type:ShaderForge.SFN_Multiply,id:9276,x:31659,y:30743,varname:node_9276,prsc:2|A-7545-A,B-6801-OUT;n:type:ShaderForge.SFN_Multiply,id:8924,x:31659,y:30598,varname:node_8924,prsc:2|A-7545-RGB,B-9276-OUT;n:type:ShaderForge.SFN_Slider,id:2605,x:30426,y:31129,ptovrint:False,ptlb:Tex 2 fade left to right,ptin:_Tex2fadelefttoright,varname:node_2605,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ScreenPos,id:2236,x:30479,y:30809,varname:node_2236,prsc:2,sctp:2;n:type:ShaderForge.SFN_Floor,id:6801,x:31189,y:30853,varname:node_6801,prsc:2|IN-5650-OUT;n:type:ShaderForge.SFN_RemapRange,id:2871,x:31000,y:30340,varname:node_2871,prsc:2,frmn:0,frmx:1,tomn:-0.98,tomx:1|IN-3573-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7750,x:30678,y:30193,varname:node_7750,prsc:2,sctp:2;n:type:ShaderForge.SFN_Floor,id:412,x:31483,y:30206,varname:node_412,prsc:2|IN-6661-OUT;n:type:ShaderForge.SFN_ScreenPos,id:6742,x:30608,y:31271,varname:node_6742,prsc:2,sctp:2;n:type:ShaderForge.SFN_ComponentMask,id:2693,x:30838,y:31430,varname:node_2693,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6742-U;n:type:ShaderForge.SFN_OneMinus,id:8350,x:30932,y:31289,varname:node_8350,prsc:2|IN-2693-OUT;n:type:ShaderForge.SFN_Add,id:3006,x:31065,y:31424,varname:node_3006,prsc:2|A-8350-OUT,B-6418-OUT;n:type:ShaderForge.SFN_RemapRange,id:6418,x:30951,y:31571,varname:node_6418,prsc:2,frmn:0,frmx:1,tomn:-0.98,tomx:1|IN-7214-OUT;n:type:ShaderForge.SFN_Floor,id:9586,x:31164,y:31634,varname:node_9586,prsc:2|IN-3006-OUT;n:type:ShaderForge.SFN_Multiply,id:3743,x:31634,y:31524,varname:node_3743,prsc:2|A-9766-A,B-9586-OUT;n:type:ShaderForge.SFN_Multiply,id:1146,x:31634,y:31379,varname:node_1146,prsc:2|A-9766-RGB,B-3743-OUT;n:type:ShaderForge.SFN_Slider,id:7214,x:30556,y:31648,ptovrint:False,ptlb:Tex 3 fade left/right,ptin:_Tex3fadeleftright,varname:node_7214,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5872,x:31660,y:31846,varname:node_5872,prsc:2|A-2118-RGB,B-435-OUT;n:type:ShaderForge.SFN_Multiply,id:435,x:31647,y:32016,varname:node_435,prsc:2|A-2118-A,B-4738-OUT;n:type:ShaderForge.SFN_Add,id:3756,x:31027,y:31961,varname:node_3756,prsc:2|A-887-OUT,B-5718-OUT;n:type:ShaderForge.SFN_OneMinus,id:887,x:30894,y:31826,varname:node_887,prsc:2|IN-6647-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6647,x:30800,y:31967,varname:node_6647,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4506-U;n:type:ShaderForge.SFN_ScreenPos,id:4506,x:30570,y:31808,varname:node_4506,prsc:2,sctp:2;n:type:ShaderForge.SFN_RemapRange,id:5718,x:30913,y:32108,varname:node_5718,prsc:2,frmn:0,frmx:1,tomn:-0.98,tomx:1|IN-6815-OUT;n:type:ShaderForge.SFN_Floor,id:4738,x:31126,y:32171,varname:node_4738,prsc:2|IN-3756-OUT;n:type:ShaderForge.SFN_Slider,id:6815,x:30592,y:32186,ptovrint:False,ptlb:Tex 4 fade left to right,ptin:_Tex4fadelefttoright,varname:node_6815,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ScreenPos,id:6255,x:30645,y:32598,varname:node_6255,prsc:2,sctp:2;n:type:ShaderForge.SFN_ComponentMask,id:7019,x:30875,y:32757,varname:node_7019,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6255-V;n:type:ShaderForge.SFN_Slider,id:3333,x:30667,y:32976,ptovrint:False,ptlb:Tex 6 fade bottom to top,ptin:_Tex6fadebottomtotop,varname:_Heartcontainerstopamount_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:9483,x:30988,y:32898,varname:node_9483,prsc:2,frmn:0,frmx:1,tomn:-0.98,tomx:1|IN-3333-OUT;n:type:ShaderForge.SFN_OneMinus,id:7307,x:30969,y:32616,varname:node_7307,prsc:2|IN-7019-OUT;n:type:ShaderForge.SFN_Add,id:9353,x:31102,y:32751,varname:node_9353,prsc:2|A-7307-OUT,B-9483-OUT;n:type:ShaderForge.SFN_Floor,id:2598,x:31201,y:32961,varname:node_2598,prsc:2|IN-9353-OUT;n:type:ShaderForge.SFN_Multiply,id:6986,x:31722,y:32806,varname:node_6986,prsc:2|A-1364-A,B-2598-OUT;n:type:ShaderForge.SFN_Multiply,id:9459,x:31735,y:32636,varname:node_9459,prsc:2|A-1364-RGB,B-6986-OUT;n:type:ShaderForge.SFN_Multiply,id:9137,x:32658,y:33400,varname:node_9137,prsc:2|A-8265-R,B-955-OUT;n:type:ShaderForge.SFN_Slider,id:955,x:32311,y:33538,ptovrint:False,ptlb:Tex 8 opacity,ptin:_Tex8opacity,varname:node_955,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:20;proporder:2715-4532-1945-8753-3573-7545-1856-6500-7112-2605-9766-4381-9872-2081-7214-2118-470-2856-4904-6815-8072-2854-3141-3129-1364-6074-8113-3620-3333-4698-242-106-663-8265-7030-9342-8768-955-9061-7428-3812-9978-6540;pass:END;sub:END;*/

Shader "Bender's Shaders/Screen FX/Configurable UI" {
    Properties {
        _Tex1 ("Tex 1", 2D) = "white" {}
        _Tex1tint ("Tex 1 tint", Color) = (1,1,1,1)
        _Tex1leftright ("Tex 1 left/right", Range(-2, 2)) = 0
        _Tex1updown ("Tex 1 up/down", Range(-2, 2)) = 0
        _Tex1fadeamountlefttoright ("Tex 1 fade amount left to right", Range(0, 1)) = 0
        _Tex2 ("Tex 2", 2D) = "white" {}
        _Tex2tint ("Tex 2 tint", Color) = (1,1,1,1)
        _Tex2leftright ("Tex 2 left/right", Range(-2, 2)) = 0
        _Tex2updown ("Tex 2 up/down", Range(-2, 2)) = 0
        _Tex2fadelefttoright ("Tex 2 fade left to right", Range(0, 1)) = 0
        _Tex3 ("Tex 3", 2D) = "white" {}
        _Tex3tint ("Tex 3 tint", Color) = (1,1,1,1)
        _Tex3leftright ("Tex 3 left/right", Range(-2, 2)) = 0
        _Tex3updown ("Tex 3 up/down", Range(-2, 2)) = 0
        _Tex3fadeleftright ("Tex 3 fade left/right", Range(0, 1)) = 0
        _Tex4 ("Tex 4", 2D) = "white" {}
        _Tex4tint ("Tex 4 tint", Color) = (1,1,1,1)
        _Tex4leftright ("Tex 4 left/right", Range(-2, 2)) = 0
        _Tex4updown ("Tex 4 up/down", Range(-2, 2)) = 0
        _Tex4fadelefttoright ("Tex 4 fade left to right", Range(0, 1)) = 0
        _Tex5 ("Tex 5", 2D) = "white" {}
        _Tex5tint ("Tex 5 tint", Color) = (1,1,1,1)
        _Tex5leftright ("Tex 5 left/right", Range(-2, 2)) = 0
        _Tex5updown ("Tex 5 up/down", Range(-2, 2)) = 0
        _Tex6 ("Tex 6", 2D) = "white" {}
        _Tex6tint ("Tex 6 tint", Color) = (1,1,1,1)
        _Tex6leftright ("Tex 6 left/right", Range(-2, 2)) = 0
        _Tex6updown ("Tex 6 up/down", Range(-2, 2)) = 0
        _Tex6fadebottomtotop ("Tex 6 fade bottom to top", Range(0, 1)) = 0
        _Tex7 ("Tex 7", 2D) = "white" {}
        _Tex7tint ("Tex 7 tint", Color) = (1,1,1,1)
        _Tex7leftright ("Tex 7 left/right", Range(-2, 2)) = 0
        _Tex7updown ("Tex 7 up/down", Range(-2, 2)) = 0
        _Tex8 ("Tex 8", 2D) = "white" {}
        _Tex8tint ("Tex 8 tint", Color) = (1,1,1,1)
        _Tex8leftright ("Tex 8 left/right", Range(-2, 2)) = 0
        _Tex8updown ("Tex 8 up/down", Range(-2, 2)) = 0
        _Tex8opacity ("Tex 8 opacity", Range(0, 20)) = 0
        _Tex9 ("Tex 9", 2D) = "white" {}
        _Tex9tint ("Tex 9 tint", Color) = (1,1,1,1)
        _Tex9leftright ("Tex 9 left/right", Range(-2, 2)) = 0
        _Tex9updown ("Tex 9 up/down", Range(-2, 2)) = 0
        _Tex9opacity ("Tex 9 opacity", Range(0, 20)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest+1000000"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One SrcAlpha
            Cull Off
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Tex1; uniform float4 _Tex1_ST;
            uniform sampler2D _Tex2; uniform float4 _Tex2_ST;
            uniform sampler2D _Tex3; uniform float4 _Tex3_ST;
            uniform sampler2D _Tex4; uniform float4 _Tex4_ST;
            uniform sampler2D _Tex5; uniform float4 _Tex5_ST;
            uniform sampler2D _Tex6; uniform float4 _Tex6_ST;
            uniform sampler2D _Tex7; uniform float4 _Tex7_ST;
            uniform sampler2D _Tex8; uniform float4 _Tex8_ST;
            uniform sampler2D _Tex9; uniform float4 _Tex9_ST;
            uniform float _Tex5leftright;
            uniform float _Tex5updown;
            uniform float _Tex6leftright;
            uniform float _Tex6updown;
            uniform float _Tex7leftright;
            uniform float _Tex7updown;
            uniform float _Tex8leftright;
            uniform float _Tex8updown;
            uniform float _Tex9leftright;
            uniform float _Tex9updown;
            uniform float _Tex2leftright;
            uniform float _Tex1updown;
            uniform float _Tex1leftright;
            uniform float _Tex2updown;
            uniform float _Tex3leftright;
            uniform float _Tex3updown;
            uniform float _Tex4leftright;
            uniform float _Tex4updown;
            uniform float _Tex9opacity;
            uniform float4 _Tex4tint;
            uniform float4 _Tex1tint;
            uniform float4 _Tex2tint;
            uniform float4 _Tex5tint;
            uniform float4 _Tex3tint;
            uniform float4 _Tex6tint;
            uniform float4 _Tex7tint;
            uniform float4 _Tex8tint;
            uniform float4 _Tex9tint;
            uniform float _Tex1fadeamountlefttoright;
            uniform float _Tex2fadelefttoright;
            uniform float _Tex3fadeleftright;
            uniform float _Tex4fadelefttoright;
            uniform float _Tex6fadebottomtotop;
            uniform float _Tex8opacity;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float ScreenU = sceneUVs.r;
                float ScreenV = sceneUVs.g;
                float2 node_8301 = float2((ScreenU+_Tex1leftright),(ScreenV+_Tex1updown));
                float4 _Tex1_var = tex2D(_Tex1,TRANSFORM_TEX(node_8301, _Tex1));
                float2 node_8602 = float2((ScreenU+_Tex2leftright),(ScreenV+_Tex2updown));
                float4 _Tex2_var = tex2D(_Tex2,TRANSFORM_TEX(node_8602, _Tex2));
                float2 node_809 = float2((ScreenU+_Tex3leftright),(ScreenV+_Tex3updown));
                float4 _Tex3_var = tex2D(_Tex3,TRANSFORM_TEX(node_809, _Tex3));
                float2 node_2607 = float2((ScreenU+_Tex4leftright),(ScreenV+_Tex4updown));
                float4 _Tex4_var = tex2D(_Tex4,TRANSFORM_TEX(node_2607, _Tex4));
                float2 node_6183 = float2((ScreenU+_Tex5leftright),(ScreenV+_Tex5updown));
                float4 _Tex5_var = tex2D(_Tex5,TRANSFORM_TEX(node_6183, _Tex5));
                float2 node_1442 = float2((ScreenU+_Tex6leftright),(ScreenV+_Tex6updown));
                float4 _Tex6_var = tex2D(_Tex6,TRANSFORM_TEX(node_1442, _Tex6));
                float2 node_5685 = float2((ScreenU+_Tex7leftright),(ScreenV+_Tex7updown));
                float4 _Tex7_var = tex2D(_Tex7,TRANSFORM_TEX(node_5685, _Tex7));
                float2 node_5350 = float2((ScreenU+_Tex9leftright),(ScreenV+_Tex9updown));
                float4 _Tex9_var = tex2D(_Tex9,TRANSFORM_TEX(node_5350, _Tex9));
                float2 node_969 = float2((ScreenU+_Tex8leftright),(ScreenV+_Tex8updown));
                float4 _Tex8_var = tex2D(_Tex8,TRANSFORM_TEX(node_969, _Tex8));
                clip(((_Tex1_var.r+_Tex2_var.r+_Tex3_var.r+_Tex4_var.r)+(_Tex5_var.r+_Tex6_var.r+_Tex7_var.r+(_Tex9_var.r*_Tex9opacity)+(_Tex8_var.r*_Tex8opacity))) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = ((((_Tex1_var.rgb*(_Tex1_var.a*floor(((1.0 - sceneUVs.r.r)+(_Tex1fadeamountlefttoright*1.98+-0.98)))))*_Tex1tint.rgb)+((_Tex2_var.rgb*(_Tex2_var.a*floor(((1.0 - sceneUVs.r.r)+(_Tex2fadelefttoright*1.95+-0.95)))))*_Tex2tint.rgb)+((_Tex3_var.rgb*(_Tex3_var.a*floor(((1.0 - sceneUVs.r.r)+(_Tex3fadeleftright*1.98+-0.98)))))*_Tex3tint.rgb)+((_Tex4_var.rgb*(_Tex4_var.a*floor(((1.0 - sceneUVs.r.r)+(_Tex4fadelefttoright*1.98+-0.98)))))*_Tex4tint.rgb))+((_Tex5_var.rgb*_Tex5tint.rgb)+((_Tex6_var.rgb*(_Tex6_var.a*floor(((1.0 - sceneUVs.g.r)+(_Tex6fadebottomtotop*1.98+-0.98)))))*_Tex6tint.rgb)+(_Tex7_var.rgb*_Tex7tint.rgb)+(_Tex8_var.rgb*_Tex8tint.rgb)+(_Tex9_var.rgb*_Tex9tint.rgb)));
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
            uniform sampler2D _Tex1; uniform float4 _Tex1_ST;
            uniform sampler2D _Tex2; uniform float4 _Tex2_ST;
            uniform sampler2D _Tex3; uniform float4 _Tex3_ST;
            uniform sampler2D _Tex4; uniform float4 _Tex4_ST;
            uniform sampler2D _Tex5; uniform float4 _Tex5_ST;
            uniform sampler2D _Tex6; uniform float4 _Tex6_ST;
            uniform sampler2D _Tex7; uniform float4 _Tex7_ST;
            uniform sampler2D _Tex8; uniform float4 _Tex8_ST;
            uniform sampler2D _Tex9; uniform float4 _Tex9_ST;
            uniform float _Tex5leftright;
            uniform float _Tex5updown;
            uniform float _Tex6leftright;
            uniform float _Tex6updown;
            uniform float _Tex7leftright;
            uniform float _Tex7updown;
            uniform float _Tex8leftright;
            uniform float _Tex8updown;
            uniform float _Tex9leftright;
            uniform float _Tex9updown;
            uniform float _Tex2leftright;
            uniform float _Tex1updown;
            uniform float _Tex1leftright;
            uniform float _Tex2updown;
            uniform float _Tex3leftright;
            uniform float _Tex3updown;
            uniform float _Tex4leftright;
            uniform float _Tex4updown;
            uniform float _Tex9opacity;
            uniform float _Tex8opacity;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float ScreenU = sceneUVs.r;
                float ScreenV = sceneUVs.g;
                float2 node_8301 = float2((ScreenU+_Tex1leftright),(ScreenV+_Tex1updown));
                float4 _Tex1_var = tex2D(_Tex1,TRANSFORM_TEX(node_8301, _Tex1));
                float2 node_8602 = float2((ScreenU+_Tex2leftright),(ScreenV+_Tex2updown));
                float4 _Tex2_var = tex2D(_Tex2,TRANSFORM_TEX(node_8602, _Tex2));
                float2 node_809 = float2((ScreenU+_Tex3leftright),(ScreenV+_Tex3updown));
                float4 _Tex3_var = tex2D(_Tex3,TRANSFORM_TEX(node_809, _Tex3));
                float2 node_2607 = float2((ScreenU+_Tex4leftright),(ScreenV+_Tex4updown));
                float4 _Tex4_var = tex2D(_Tex4,TRANSFORM_TEX(node_2607, _Tex4));
                float2 node_6183 = float2((ScreenU+_Tex5leftright),(ScreenV+_Tex5updown));
                float4 _Tex5_var = tex2D(_Tex5,TRANSFORM_TEX(node_6183, _Tex5));
                float2 node_1442 = float2((ScreenU+_Tex6leftright),(ScreenV+_Tex6updown));
                float4 _Tex6_var = tex2D(_Tex6,TRANSFORM_TEX(node_1442, _Tex6));
                float2 node_5685 = float2((ScreenU+_Tex7leftright),(ScreenV+_Tex7updown));
                float4 _Tex7_var = tex2D(_Tex7,TRANSFORM_TEX(node_5685, _Tex7));
                float2 node_5350 = float2((ScreenU+_Tex9leftright),(ScreenV+_Tex9updown));
                float4 _Tex9_var = tex2D(_Tex9,TRANSFORM_TEX(node_5350, _Tex9));
                float2 node_969 = float2((ScreenU+_Tex8leftright),(ScreenV+_Tex8updown));
                float4 _Tex8_var = tex2D(_Tex8,TRANSFORM_TEX(node_969, _Tex8));
                clip(((_Tex1_var.r+_Tex2_var.r+_Tex3_var.r+_Tex4_var.r)+(_Tex5_var.r+_Tex6_var.r+_Tex7_var.r+(_Tex9_var.r*_Tex9opacity)+(_Tex8_var.r*_Tex8opacity))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
