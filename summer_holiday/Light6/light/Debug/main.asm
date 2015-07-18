// GCC for SUNPLUS u'nSP version 1.0.23
// Command: C:\PROGRA~1\Sunplus\UNSPID~1.2D\toolchain\cc1.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\cc2Taaaa.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -Wall -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "H:/Light6/light/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "H:/Light6/light/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.code
Ltext0:
.debug
	.dw '.stabs "int:t1=r1;-32768;32767;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "char:t2=r2;0;127;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long int:t3=r3;-2147483648;2147483647;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "unsigned int:t4=r4;0;65535;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long unsigned int:t5=r5;0;4294967295;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long long int:t6=r6;-2147483648;2147483647;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long long unsigned int:t7=r7;0;4294967295;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "short int:t8=r8;-32768;32767;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "short unsigned int:t9=r9;0;65535;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "signed char:t10=r10;-32768;32767;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "unsigned char:t11=r11;0;65535;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "float:t12=r1;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "double:t13=r1;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long double:t14=r1;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex int:t15=s2real:1,0,16;imag:1,16,16;;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex float:t16=r16;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex double:t17=r17;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex long double:t18=r18;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "void:t19=19",128,0,0,0',0x0d,0x0a
.CODE
.public _stop
.iram
_stop:
	.dw 0
.debug
	.dw '.stabs "stop:G1",32,0,0,',0,0,offset _stop,seg _stop,0x0d,0x0a
.CODE
.code
.debug
	.dw '.stabs "Delay:F19",36,0,0,',0,0,offset _Delay,seg _Delay,0x0d,0x0a
.CODE
.public _Delay
_Delay:	.proc
.debug
	.dw '.stabn 0x44,0,16,',0,0
	.dd LM1-_Delay
	.dw 0x0d,0x0a
.code
LM1:
	// total=1, vars=1
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,1',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=1
	BP=SP+1

	R1=BP+4
LBB2:
.debug
	.dw '.stabn 0x44,0,18,',0,0
	.dd LM2-_Delay
	.dw 0x0d,0x0a
.code
LM2:
	R2=0	// QImode move
	[BP]=R2	// QImode move
L3:
	R2=[BP]	// QImode move
	CMP R2,3000	// QImode compare
	NSJNA L6	//QImode LEU
	PC=L4	// jump
L6:
.debug
	.dw '.stabn 0x44,0,20,',0,0
	.dd LM3-_Delay
	.dw 0x0d,0x0a
.code
LM3:
	R2=1	// QImode move
	[28690]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,18,',0,0
	.dd LM4-_Delay
	.dw 0x0d,0x0a
.code
LM4:
L5:
	R2=[BP]	// QImode move
	R3=R2+1
	[BP]=R3	// QImode move
	PC=L3	// jump
L4:
.debug
	.dw '.stabn 0x44,0,22,',0,0
	.dd LM5-_Delay
	.dw 0x0d,0x0a
.code
LM5:
LBE2:
.debug
	.dw '.stabn 0x44,0,22,',0,0
	.dd LM6-_Delay
	.dw 0x0d,0x0a
.code
LM6:
L2:

	SP+=1
	POP BP from [SP]
	RETF
	.endp	// end of Delay

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB2-_Delay
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "uiCount:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE2-_Delay
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME1-_Delay
	.dw 0x0d,0x0a
.code
LME1:
.code
.debug
	.dw '.stabs "scanKey:F4",36,0,0,',0,0,offset _scanKey,seg _scanKey,0x0d,0x0a
.CODE
.public _scanKey
_scanKey:	.proc
.debug
	.dw '.stabn 0x44,0,25,',0,0
	.dd LM7-_scanKey
	.dw 0x0d,0x0a
.code
LM7:
	// total=4, vars=4
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,4',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=4
	BP=SP+1

	R1=BP+7
	[BP+3]=R1	// QImode move
LBB3:
.debug
	.dw '.stabn 0x44,0,31,',0,0
	.dd LM8-_scanKey
	.dw 0x0d,0x0a
.code
LM8:
	R2=[BP+3]	// QImode move
	R1=[R2]	// QImode move
	CMP R1,65	// QImode compare
	NSJNZ L9	//QImode NE
.debug
	.dw '.stabn 0x44,0,32,',0,0
	.dd LM9-_scanKey
	.dw 0x0d,0x0a
.code
LM9:
	R1=BP	// QImode move
	R2=BP+2
	R1=28672	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
	PC=L10	// jump
L9:
.debug
	.dw '.stabn 0x44,0,33,',0,0
	.dd LM10-_scanKey
	.dw 0x0d,0x0a
.code
LM10:
	R1=66	// QImode move
	R4=[BP+3]	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,34,',0,0
	.dd LM11-_scanKey
	.dw 0x0d,0x0a
.code
LM11:
	R1=BP	// QImode move
	R2=BP+2
	R1=28677	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L11:
L10:
.debug
	.dw '.stabn 0x44,0,36,',0,0
	.dd LM12-_scanKey
	.dw 0x0d,0x0a
.code
LM12:
	R1=BP	// QImode move
	R2=BP+2
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	R3=R1	// QImode move
	R2=[R3]	// QImode move
	[BP]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,38,',0,0
	.dd LM13-_scanKey
	.dw 0x0d,0x0a
.code
LM13:
	R1=[BP]	// QImode move
	CMP R1,0	// QImode test
	NSJZ L12	//QImode EQ
.debug
	.dw '.stabn 0x44,0,40,',0,0
	.dd LM14-_scanKey
	.dw 0x0d,0x0a
.code
LM14:
	CALL _Delay	// call without return value
.debug
	.dw '.stabn 0x44,0,41,',0,0
	.dd LM15-_scanKey
	.dw 0x0d,0x0a
.code
LM15:
	R2=BP	// QImode move
	R1=BP+1
	R2=BP	// QImode move
	R3=BP+2
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R4=R2	// QImode move
	R3=[R4]	// QImode move
	R2=R1	// QImode move
	[R2]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,42,',0,0
	.dd LM16-_scanKey
	.dw 0x0d,0x0a
.code
LM16:
	R1=BP	// QImode move
	R2=BP+1
	R1=[BP]	// QImode move
	R3=R2	// QImode move
	CMP R1,[R3]	// QImode compare
	NSJZ L12	//QImode EQ
.debug
	.dw '.stabn 0x44,0,43,',0,0
	.dd LM17-_scanKey
	.dw 0x0d,0x0a
.code
LM17:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L13:
L12:
.debug
	.dw '.stabn 0x44,0,45,',0,0
	.dd LM18-_scanKey
	.dw 0x0d,0x0a
.code
LM18:
	R2=[BP]	// QImode move
	R1=R2	// QImode move
	PC=L8	// jump
.debug
	.dw '.stabn 0x44,0,46,',0,0
	.dd LM19-_scanKey
	.dw 0x0d,0x0a
.code
LM19:
LBE3:
.debug
	.dw '.stabn 0x44,0,46,',0,0
	.dd LM20-_scanKey
	.dw 0x0d,0x0a
.code
LM20:
L8:

	SP+=4
	POP BP from [SP]
	RETF
	.endp	// end of scanKey

.debug
	.dw '.stabs "portName:p2",160,0,0,7',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB3-_scanKey
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "uiData:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "uiTemp:4",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "port:20=*4",128,0,0,2',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE3-_scanKey
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME2-_scanKey
	.dw 0x0d,0x0a
.code
LME2:
.code
.debug
	.dw '.stabs "delayTime:F19",36,0,0,',0,0,offset _delayTime,seg _delayTime,0x0d,0x0a
.CODE
.public _delayTime
_delayTime:	.proc
.debug
	.dw '.stabn 0x44,0,49,',0,0
	.dd LM21-_delayTime
	.dw 0x0d,0x0a
.code
LM21:
	// total=4, vars=4
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,4',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=4
	BP=SP+1

	R1=BP+7
	[BP+3]=R1	// QImode move
LBB4:
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM22-_delayTime
	.dw 0x0d,0x0a
.code
LM22:
	//split R1=0
	R1=0	// QImode move
	R2=0	// QImode move
	//split [BP]=R1
	[BP]=R1	// QImode move
	[BP+1]=R2	// QImode move
L18:
	R3=[BP+3]	// QImode move
	R1=[R3]
	R2=0
	//split R3=[BP]
	R3=[BP]	// QImode move
	R4=[BP+1]	// QImode move
	CMP R4,R2	// HImode 1st compare
	JA  L24	// HImode LEU
	NSJNZ L21
	CMP R3,R1
	NSJNA  L21
L24:
	PC=L19	// jump
L21:
.debug
	.dw '.stabn 0x44,0,54,',0,0
	.dd LM23-_delayTime
	.dw 0x0d,0x0a
.code
LM23:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,55,',0,0
	.dd LM24-_delayTime
	.dw 0x0d,0x0a
.code
LM24:
	R1=66	// QImode move
	[SP--]=R1	// QImode move
	CALL _scanKey	// call with return value
	SP = SP + 1	//SP
	R2=BP	// QImode move
	R3=BP+2
	R4=R3	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,56,',0,0
	.dd LM25-_delayTime
	.dw 0x0d,0x0a
.code
LM25:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R3=[R3]
	R1=R3&8
	CMP R1,0	// QImode test
	NSJZ L20	//QImode EQ
.debug
	.dw '.stabn 0x44,0,58,',0,0
	.dd LM26-_delayTime
	.dw 0x0d,0x0a
.code
LM26:
	R1=1	// QImode move
	[_stop]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,59,',0,0
	.dd LM27-_delayTime
	.dw 0x0d,0x0a
.code
LM27:
	PC=L17	// jump
L22:
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM28-_delayTime
	.dw 0x0d,0x0a
.code
LM28:
L20:
	//split R1=[BP]
	R1=[BP]	// QImode move
	R2=[BP+1]	// QImode move
	R3=R1+1	// HImode RD=RS+#IMM16
	R4=R2+0, Carry
	//split [BP]=R3
	[BP]=R3	// QImode move
	[BP+1]=R4	// QImode move
	PC=L18	// jump
L19:
.debug
	.dw '.stabn 0x44,0,62,',0,0
	.dd LM29-_delayTime
	.dw 0x0d,0x0a
.code
LM29:
LBE4:
.debug
	.dw '.stabn 0x44,0,62,',0,0
	.dd LM30-_delayTime
	.dw 0x0d,0x0a
.code
LM30:
L17:

	SP+=4
	POP BP from [SP]
	RETF
	.endp	// end of delayTime

.debug
	.dw '.stabs "time:p4",160,0,0,7',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB4-_delayTime
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "i:5",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "key:4",128,0,0,2',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE4-_delayTime
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME3-_delayTime
	.dw 0x0d,0x0a
.code
LME3:
.code
.debug
	.dw '.stabs "main:F1",36,0,0,',0,0,offset _main,seg _main,0x0d,0x0a
.CODE
.public _main
_main:	.proc
.debug
	.dw '.stabn 0x44,0,65,',0,0
	.dd LM31-_main
	.dw 0x0d,0x0a
.code
LM31:
	// total=3, vars=3
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,3',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=3
	BP=SP+1

	R1=BP+6
	[BP+2]=R1	// QImode move
LBB5:
L27:
.debug
	.dw '.stabn 0x44,0,68,',0,0
	.dd LM32-_main
	.dw 0x0d,0x0a
.code
LM32:
	R1=0	// QImode move
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,69,',0,0
	.dd LM33-_main
	.dw 0x0d,0x0a
.code
LM33:
	R1=0	// QImode move
	[_stop]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,71,',0,0
	.dd LM34-_main
	.dw 0x0d,0x0a
.code
LM34:
	R1=32767	// QImode move
	[28674]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,72,',0,0
	.dd LM35-_main
	.dw 0x0d,0x0a
.code
LM35:
	R1=32767	// QImode move
	[28675]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM36-_main
	.dw 0x0d,0x0a
.code
LM36:
	R1=0	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,75,',0,0
	.dd LM37-_main
	.dw 0x0d,0x0a
.code
LM37:
	R1=(-9)	// QImode move
	[28679]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,76,',0,0
	.dd LM38-_main
	.dw 0x0d,0x0a
.code
LM38:
	R1=(-9)	// QImode move
	[28680]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,77,',0,0
	.dd LM39-_main
	.dw 0x0d,0x0a
.code
LM39:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,79,',0,0
	.dd LM40-_main
	.dw 0x0d,0x0a
.code
LM40:
L28:
	PC=L30	// jump
	PC=L29	// jump
L30:
.debug
	.dw '.stabn 0x44,0,81,',0,0
	.dd LM41-_main
	.dw 0x0d,0x0a
.code
LM41:
	R1=65	// QImode move
	[SP--]=R1	// QImode move
	CALL _scanKey	// call with return value
	SP = SP + 1	//SP
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM42-_main
	.dw 0x0d,0x0a
.code
LM42:
	R2=[BP]	// QImode move
	R1=R2&(-32768)
	CMP R1,0	// QImode test
	NSJZ L31	//QImode EQ
.debug
	.dw '.stabn 0x44,0,84,',0,0
	.dd LM43-_main
	.dw 0x0d,0x0a
.code
LM43:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,85,',0,0
	.dd LM44-_main
	.dw 0x0d,0x0a
.code
LM44:
	PC=L29	// jump
L31:
.debug
	.dw '.stabn 0x44,0,87,',0,0
	.dd LM45-_main
	.dw 0x0d,0x0a
.code
LM45:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,88,',0,0
	.dd LM46-_main
	.dw 0x0d,0x0a
.code
LM46:
	PC=L28	// jump
L29:
.debug
	.dw '.stabn 0x44,0,89,',0,0
	.dd LM47-_main
	.dw 0x0d,0x0a
.code
LM47:
L32:
	PC=L34	// jump
	PC=L33	// jump
L34:
LBB6:
.debug
	.dw '.stabn 0x44,0,93,',0,0
	.dd LM48-_main
	.dw 0x0d,0x0a
.code
LM48:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L35:
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,2	// QImode compare
	NSJNG L38	//QImode LE
	PC=L36	// jump
L38:
.debug
	.dw '.stabn 0x44,0,95,',0,0
	.dd LM49-_main
	.dw 0x0d,0x0a
.code
LM49:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,96,',0,0
	.dd LM50-_main
	.dw 0x0d,0x0a
.code
LM50:
	R1=24576	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,97,',0,0
	.dd LM51-_main
	.dw 0x0d,0x0a
.code
LM51:
	R1=4	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,98,',0,0
	.dd LM52-_main
	.dw 0x0d,0x0a
.code
LM52:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,99,',0,0
	.dd LM53-_main
	.dw 0x0d,0x0a
.code
LM53:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L39	//QImode NE
.debug
	.dw '.stabn 0x44,0,100,',0,0
	.dd LM54-_main
	.dw 0x0d,0x0a
.code
LM54:
	PC=L27	// jump
L39:
.debug
	.dw '.stabn 0x44,0,101,',0,0
	.dd LM55-_main
	.dw 0x0d,0x0a
.code
LM55:
	R1=8192	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,102,',0,0
	.dd LM56-_main
	.dw 0x0d,0x0a
.code
LM56:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,103,',0,0
	.dd LM57-_main
	.dw 0x0d,0x0a
.code
LM57:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,104,',0,0
	.dd LM58-_main
	.dw 0x0d,0x0a
.code
LM58:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L37	//QImode NE
.debug
	.dw '.stabn 0x44,0,105,',0,0
	.dd LM59-_main
	.dw 0x0d,0x0a
.code
LM59:
	PC=L27	// jump
L40:
.debug
	.dw '.stabn 0x44,0,93,',0,0
	.dd LM60-_main
	.dw 0x0d,0x0a
.code
LM60:
L37:
	R1=BP	// QImode move
	R2=BP+1
	R3=BP	// QImode move
	R1=BP+1
	R2=BP	// QImode move
	R3=BP+1
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L35	// jump
L36:
.debug
	.dw '.stabn 0x44,0,107,',0,0
	.dd LM61-_main
	.dw 0x0d,0x0a
.code
LM61:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L41:
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,19	// QImode compare
	NSJNG L44	//QImode LE
	PC=L42	// jump
L44:
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM62-_main
	.dw 0x0d,0x0a
.code
LM62:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,110,',0,0
	.dd LM63-_main
	.dw 0x0d,0x0a
.code
LM63:
	R1=20480	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,111,',0,0
	.dd LM64-_main
	.dw 0x0d,0x0a
.code
LM64:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,112,',0,0
	.dd LM65-_main
	.dw 0x0d,0x0a
.code
LM65:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,113,',0,0
	.dd LM66-_main
	.dw 0x0d,0x0a
.code
LM66:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L43	//QImode NE
.debug
	.dw '.stabn 0x44,0,114,',0,0
	.dd LM67-_main
	.dw 0x0d,0x0a
.code
LM67:
	PC=L27	// jump
L45:
.debug
	.dw '.stabn 0x44,0,107,',0,0
	.dd LM68-_main
	.dw 0x0d,0x0a
.code
LM68:
L43:
	R1=BP	// QImode move
	R2=BP+1
	R3=BP	// QImode move
	R1=BP+1
	R2=BP	// QImode move
	R3=BP+1
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L41	// jump
L42:
.debug
	.dw '.stabn 0x44,0,117,',0,0
	.dd LM69-_main
	.dw 0x0d,0x0a
.code
LM69:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L46:
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,19	// QImode compare
	NSJNG L49	//QImode LE
	PC=L47	// jump
L49:
.debug
	.dw '.stabn 0x44,0,119,',0,0
	.dd LM70-_main
	.dw 0x0d,0x0a
.code
LM70:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,120,',0,0
	.dd LM71-_main
	.dw 0x0d,0x0a
.code
LM71:
	R1=4096	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,121,',0,0
	.dd LM72-_main
	.dw 0x0d,0x0a
.code
LM72:
	R1=1	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,122,',0,0
	.dd LM73-_main
	.dw 0x0d,0x0a
.code
LM73:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,123,',0,0
	.dd LM74-_main
	.dw 0x0d,0x0a
.code
LM74:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L48	//QImode NE
.debug
	.dw '.stabn 0x44,0,124,',0,0
	.dd LM75-_main
	.dw 0x0d,0x0a
.code
LM75:
	PC=L27	// jump
L50:
.debug
	.dw '.stabn 0x44,0,117,',0,0
	.dd LM76-_main
	.dw 0x0d,0x0a
.code
LM76:
L48:
	R1=BP	// QImode move
	R2=BP+1
	R3=BP	// QImode move
	R1=BP+1
	R2=BP	// QImode move
	R3=BP+1
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L46	// jump
L47:
.debug
	.dw '.stabn 0x44,0,127,',0,0
	.dd LM77-_main
	.dw 0x0d,0x0a
.code
LM77:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L51:
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,2	// QImode compare
	NSJNG L54	//QImode LE
	PC=L52	// jump
L54:
.debug
	.dw '.stabn 0x44,0,129,',0,0
	.dd LM78-_main
	.dw 0x0d,0x0a
.code
LM78:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,130,',0,0
	.dd LM79-_main
	.dw 0x0d,0x0a
.code
LM79:
	R1=8192	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,131,',0,0
	.dd LM80-_main
	.dw 0x0d,0x0a
.code
LM80:
	R1=2	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,132,',0,0
	.dd LM81-_main
	.dw 0x0d,0x0a
.code
LM81:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,133,',0,0
	.dd LM82-_main
	.dw 0x0d,0x0a
.code
LM82:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L55	//QImode NE
.debug
	.dw '.stabn 0x44,0,134,',0,0
	.dd LM83-_main
	.dw 0x0d,0x0a
.code
LM83:
	PC=L27	// jump
L55:
.debug
	.dw '.stabn 0x44,0,135,',0,0
	.dd LM84-_main
	.dw 0x0d,0x0a
.code
LM84:
	R1=0	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,136,',0,0
	.dd LM85-_main
	.dw 0x0d,0x0a
.code
LM85:
	R1=2	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,137,',0,0
	.dd LM86-_main
	.dw 0x0d,0x0a
.code
LM86:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,138,',0,0
	.dd LM87-_main
	.dw 0x0d,0x0a
.code
LM87:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L53	//QImode NE
.debug
	.dw '.stabn 0x44,0,139,',0,0
	.dd LM88-_main
	.dw 0x0d,0x0a
.code
LM88:
	PC=L27	// jump
L56:
.debug
	.dw '.stabn 0x44,0,127,',0,0
	.dd LM89-_main
	.dw 0x0d,0x0a
.code
LM89:
L53:
	R1=BP	// QImode move
	R2=BP+1
	R3=BP	// QImode move
	R1=BP+1
	R2=BP	// QImode move
	R3=BP+1
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L51	// jump
L52:
.debug
	.dw '.stabn 0x44,0,141,',0,0
	.dd LM90-_main
	.dw 0x0d,0x0a
.code
LM90:
LBE6:
	PC=L32	// jump
L33:
.debug
	.dw '.stabn 0x44,0,142,',0,0
	.dd LM91-_main
	.dw 0x0d,0x0a
.code
LM91:
	R1=0	// QImode move
	PC=L26	// jump
.debug
	.dw '.stabn 0x44,0,143,',0,0
	.dd LM92-_main
	.dw 0x0d,0x0a
.code
LM92:
LBE5:
.debug
	.dw '.stabn 0x44,0,143,',0,0
	.dd LM93-_main
	.dw 0x0d,0x0a
.code
LM93:
L26:

	SP+=3
	POP BP from [SP]
	RETF
	.endp	// end of main

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB5-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "key:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB6-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "i:1",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE6-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE5-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME4-_main
	.dw 0x0d,0x0a
.code
LME4:
	.end
