// GCC for GeneralPlus u'nSP version 1.1.0.3
// Command: C:\PROGRA~2\unspIDE\toolchain\cc1.exe C:\Users\Libertas\AppData\Local\Temp\ccq05DOq.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -Wall -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "D:/Light3/light/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "D:/Light3/light/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
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
	.dw '.stabn 0x44,0,15,',0,0
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
	.dw '.stabn 0x44,0,17,',0,0
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
	.dw '.stabn 0x44,0,19,',0,0
	.dd LM3-_Delay
	.dw 0x0d,0x0a
.code
LM3:
	R2=1	// QImode move
	[28690]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,17,',0,0
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
	.dw '.stabn 0x44,0,21,',0,0
	.dd LM5-_Delay
	.dw 0x0d,0x0a
.code
LM5:
LBE2:
.debug
	.dw '.stabn 0x44,0,21,',0,0
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
	.dw '.stabn 0x44,0,24,',0,0
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
	.dw '.stabn 0x44,0,28,',0,0
	.dd LM8-_scanKey
	.dw 0x0d,0x0a
.code
LM8:
	R2=[BP+3]	// QImode move
	R1=[R2]	// QImode move
	CMP R1,65	// QImode compare
	NSJNZ L9	//QImode NE
.debug
	.dw '.stabn 0x44,0,29,',0,0
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
	.dw '.stabn 0x44,0,30,',0,0
	.dd LM10-_scanKey
	.dw 0x0d,0x0a
.code
LM10:
	R1=66	// QImode move
	R4=[BP+3]	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,31,',0,0
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
	.dw '.stabn 0x44,0,32,',0,0
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
	.dw '.stabn 0x44,0,33,',0,0
	.dd LM13-_scanKey
	.dw 0x0d,0x0a
.code
LM13:
	R1=[BP]	// QImode move
	CMP R1,0	// QImode test
	NSJZ L12	//QImode EQ
.debug
	.dw '.stabn 0x44,0,35,',0,0
	.dd LM14-_scanKey
	.dw 0x0d,0x0a
.code
LM14:
	CALL _Delay	// call without return value
.debug
	.dw '.stabn 0x44,0,36,',0,0
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
	.dw '.stabn 0x44,0,37,',0,0
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
	.dw '.stabn 0x44,0,38,',0,0
	.dd LM17-_scanKey
	.dw 0x0d,0x0a
.code
LM17:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L13:
L12:
.debug
	.dw '.stabn 0x44,0,40,',0,0
	.dd LM18-_scanKey
	.dw 0x0d,0x0a
.code
LM18:
	R2=[BP]	// QImode move
	R1=R2	// QImode move
	PC=L8	// jump
.debug
	.dw '.stabn 0x44,0,41,',0,0
	.dd LM19-_scanKey
	.dw 0x0d,0x0a
.code
LM19:
LBE3:
.debug
	.dw '.stabn 0x44,0,41,',0,0
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
	.dw '.stabn 0x44,0,44,',0,0
	.dd LM21-_delayTime
	.dw 0x0d,0x0a
.code
LM21:
	// total=11, vars=11
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,11',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=11
	BP=SP+1

	R1=BP+14
	[BP+5]=R1	// QImode move
LBB4:
.debug
	.dw '.stabn 0x44,0,47,',0,0
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
	R2=[BP+5]	// QImode move
	R1=[R2]	// QImode move
	R2=10	// QImode move
	MR=R1*R2	// R3=R1*R2 16bit=16bit*16bit
	R1=R3
	R2=0
	//split R3=[BP]
	R3=[BP]	// QImode move
	R4=[BP+1]	// QImode move
	CMP R4,R2	// HImode 1st compare
	JA  L28	// HImode LEU
	NSJNZ L21
	CMP R3,R1
	NSJNA  L21
L28:
	PC=L19	// jump
L21:
.debug
	.dw '.stabn 0x44,0,49,',0,0
	.dd LM23-_delayTime
	.dw 0x0d,0x0a
.code
LM23:
	R1=BP	// QImode move
	R2=BP+2
	//split R3=0
	R3=0	// QImode move
	R4=0	// QImode move
	R1=R2	// QImode move
	//split [R1]=R3
	[R1++]=R3	// QImode move
	[R1--]=R4	// QImode move
L22:
	R1=BP	// QImode move
	R2=BP+2
	R1=R2	// QImode move
	//split R3=[R1]
	R3=[R1++]	// QImode move
	R4=[R1--]	// QImode move
	CMP R4, 0	// HImode 1st compare
	JA  L30	// HImode LEU
	NSJNZ L25
	CMP R3,2
	NSJNA  L25
L30:
	PC=L20	// jump
L25:
.debug
	.dw '.stabn 0x44,0,51,',0,0
	.dd LM24-_delayTime
	.dw 0x0d,0x0a
.code
LM24:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM25-_delayTime
	.dw 0x0d,0x0a
.code
LM25:
	R1=66	// QImode move
	[SP--]=R1	// QImode move
	CALL _scanKey	// call with return value
	SP = SP + 1	//SP
	R2=BP	// QImode move
	R3=BP+4
	R2=R3	// QImode move
	[R2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,53,',0,0
	.dd LM26-_delayTime
	.dw 0x0d,0x0a
.code
LM26:
	R1=BP	// QImode move
	R2=BP+4
	R3=R2	// QImode move
	R3=[R3]
	R1=R3&8
	CMP R1,0	// QImode test
	NSJZ L24	//QImode EQ
.debug
	.dw '.stabn 0x44,0,55,',0,0
	.dd LM27-_delayTime
	.dw 0x0d,0x0a
.code
LM27:
	R1=1	// QImode move
	[_stop]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,56,',0,0
	.dd LM28-_delayTime
	.dw 0x0d,0x0a
.code
LM28:
	PC=L17	// jump
L26:
.debug
	.dw '.stabn 0x44,0,49,',0,0
	.dd LM29-_delayTime
	.dw 0x0d,0x0a
.code
LM29:
L24:
	R1=BP	// QImode move
	R2=BP+2
	R3=BP	// QImode move
	R1=BP+2
	R2=BP	// QImode move
	R4=BP+2
	[BP+8]=R4	// QImode move
	R4=[BP+8]	// QImode move
	//split R3=[R4]
	R3=[R4++]	// QImode move
	R4=[R4--]	// QImode move
	//split [BP+6]=R3
	[BP+6]=R3	// QImode move
	[BP+7]=R4	// QImode move
	//split R3=[BP+6]
	R3=[BP+6]	// QImode move
	R4=[BP+7]	// QImode move
	R3=R3+1	// HImode RD=RS+#IMM16
	R4=R4+0, Carry
	//split [BP+9]=R3
	[BP+9]=R3	// QImode move
	[BP+10]=R4	// QImode move
	//split R3=[BP+9]
	R3=[BP+9]	// QImode move
	R4=[BP+10]	// QImode move
	R2=R1	// QImode move
	//split [R2]=R3
	[R2++]=R3	// QImode move
	[R2--]=R4	// QImode move
	PC=L22	// jump
L23:
.debug
	.dw '.stabn 0x44,0,47,',0,0
	.dd LM30-_delayTime
	.dw 0x0d,0x0a
.code
LM30:
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
	.dw '.stabn 0x44,0,60,',0,0
	.dd LM31-_delayTime
	.dw 0x0d,0x0a
.code
LM31:
LBE4:
.debug
	.dw '.stabn 0x44,0,60,',0,0
	.dd LM32-_delayTime
	.dw 0x0d,0x0a
.code
LM32:
L17:

	SP+=11
	POP BP from [SP]
	RETF
	.endp	// end of delayTime

.debug
	.dw '.stabs "time:p4",160,0,0,14',0x0d,0x0a
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
	.dw '.stabs "j:5",128,0,0,2',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "key:4",128,0,0,4',0x0d,0x0a
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
	.dw '.stabn 0x44,0,63,',0,0
	.dd LM33-_main
	.dw 0x0d,0x0a
.code
LM33:
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
L33:
.debug
	.dw '.stabn 0x44,0,66,',0,0
	.dd LM34-_main
	.dw 0x0d,0x0a
.code
LM34:
	R1=0	// QImode move
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,67,',0,0
	.dd LM35-_main
	.dw 0x0d,0x0a
.code
LM35:
	R1=0	// QImode move
	[_stop]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,69,',0,0
	.dd LM36-_main
	.dw 0x0d,0x0a
.code
LM36:
	R1=32767	// QImode move
	[28674]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,70,',0,0
	.dd LM37-_main
	.dw 0x0d,0x0a
.code
LM37:
	R1=32767	// QImode move
	[28675]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,71,',0,0
	.dd LM38-_main
	.dw 0x0d,0x0a
.code
LM38:
	R1=0	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM39-_main
	.dw 0x0d,0x0a
.code
LM39:
	R1=(-9)	// QImode move
	[28679]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,74,',0,0
	.dd LM40-_main
	.dw 0x0d,0x0a
.code
LM40:
	R1=(-9)	// QImode move
	[28680]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,75,',0,0
	.dd LM41-_main
	.dw 0x0d,0x0a
.code
LM41:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,77,',0,0
	.dd LM42-_main
	.dw 0x0d,0x0a
.code
LM42:
L34:
	PC=L36	// jump
	PC=L35	// jump
L36:
.debug
	.dw '.stabn 0x44,0,79,',0,0
	.dd LM43-_main
	.dw 0x0d,0x0a
.code
LM43:
	R1=65	// QImode move
	[SP--]=R1	// QImode move
	CALL _scanKey	// call with return value
	SP = SP + 1	//SP
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,80,',0,0
	.dd LM44-_main
	.dw 0x0d,0x0a
.code
LM44:
	R2=[BP]	// QImode move
	R1=R2&(-32768)
	CMP R1,0	// QImode test
	NSJZ L37	//QImode EQ
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM45-_main
	.dw 0x0d,0x0a
.code
LM45:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,83,',0,0
	.dd LM46-_main
	.dw 0x0d,0x0a
.code
LM46:
	PC=L35	// jump
L37:
.debug
	.dw '.stabn 0x44,0,85,',0,0
	.dd LM47-_main
	.dw 0x0d,0x0a
.code
LM47:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,86,',0,0
	.dd LM48-_main
	.dw 0x0d,0x0a
.code
LM48:
	PC=L34	// jump
L35:
.debug
	.dw '.stabn 0x44,0,87,',0,0
	.dd LM49-_main
	.dw 0x0d,0x0a
.code
LM49:
L38:
	PC=L40	// jump
	PC=L39	// jump
L40:
LBB6:
.debug
	.dw '.stabn 0x44,0,91,',0,0
	.dd LM50-_main
	.dw 0x0d,0x0a
.code
LM50:
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
	CMP R1,2	// QImode compare
	NSJNG L44	//QImode LE
	PC=L42	// jump
L44:
.debug
	.dw '.stabn 0x44,0,93,',0,0
	.dd LM51-_main
	.dw 0x0d,0x0a
.code
LM51:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,94,',0,0
	.dd LM52-_main
	.dw 0x0d,0x0a
.code
LM52:
	R1=24576	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,95,',0,0
	.dd LM53-_main
	.dw 0x0d,0x0a
.code
LM53:
	R1=4	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,96,',0,0
	.dd LM54-_main
	.dw 0x0d,0x0a
.code
LM54:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,97,',0,0
	.dd LM55-_main
	.dw 0x0d,0x0a
.code
LM55:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L45	//QImode NE
.debug
	.dw '.stabn 0x44,0,98,',0,0
	.dd LM56-_main
	.dw 0x0d,0x0a
.code
LM56:
	PC=L33	// jump
L45:
.debug
	.dw '.stabn 0x44,0,99,',0,0
	.dd LM57-_main
	.dw 0x0d,0x0a
.code
LM57:
	R1=8192	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,100,',0,0
	.dd LM58-_main
	.dw 0x0d,0x0a
.code
LM58:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,101,',0,0
	.dd LM59-_main
	.dw 0x0d,0x0a
.code
LM59:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,102,',0,0
	.dd LM60-_main
	.dw 0x0d,0x0a
.code
LM60:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L43	//QImode NE
.debug
	.dw '.stabn 0x44,0,103,',0,0
	.dd LM61-_main
	.dw 0x0d,0x0a
.code
LM61:
	PC=L33	// jump
L46:
.debug
	.dw '.stabn 0x44,0,91,',0,0
	.dd LM62-_main
	.dw 0x0d,0x0a
.code
LM62:
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
	.dw '.stabn 0x44,0,106,',0,0
	.dd LM63-_main
	.dw 0x0d,0x0a
.code
LM63:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,107,',0,0
	.dd LM64-_main
	.dw 0x0d,0x0a
.code
LM64:
	R1=20480	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,108,',0,0
	.dd LM65-_main
	.dw 0x0d,0x0a
.code
LM65:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM66-_main
	.dw 0x0d,0x0a
.code
LM66:
	R1=100	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,110,',0,0
	.dd LM67-_main
	.dw 0x0d,0x0a
.code
LM67:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L47	//QImode NE
.debug
	.dw '.stabn 0x44,0,111,',0,0
	.dd LM68-_main
	.dw 0x0d,0x0a
.code
LM68:
	PC=L33	// jump
L47:
.debug
	.dw '.stabn 0x44,0,113,',0,0
	.dd LM69-_main
	.dw 0x0d,0x0a
.code
LM69:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,114,',0,0
	.dd LM70-_main
	.dw 0x0d,0x0a
.code
LM70:
	R1=4096	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,115,',0,0
	.dd LM71-_main
	.dw 0x0d,0x0a
.code
LM71:
	R1=1	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,116,',0,0
	.dd LM72-_main
	.dw 0x0d,0x0a
.code
LM72:
	R1=100	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,117,',0,0
	.dd LM73-_main
	.dw 0x0d,0x0a
.code
LM73:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L48	//QImode NE
.debug
	.dw '.stabn 0x44,0,118,',0,0
	.dd LM74-_main
	.dw 0x0d,0x0a
.code
LM74:
	PC=L33	// jump
L48:
.debug
	.dw '.stabn 0x44,0,120,',0,0
	.dd LM75-_main
	.dw 0x0d,0x0a
.code
LM75:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L49:
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,2	// QImode compare
	NSJNG L52	//QImode LE
	PC=L50	// jump
L52:
.debug
	.dw '.stabn 0x44,0,122,',0,0
	.dd LM76-_main
	.dw 0x0d,0x0a
.code
LM76:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,123,',0,0
	.dd LM77-_main
	.dw 0x0d,0x0a
.code
LM77:
	R1=8192	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,124,',0,0
	.dd LM78-_main
	.dw 0x0d,0x0a
.code
LM78:
	R1=2	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,125,',0,0
	.dd LM79-_main
	.dw 0x0d,0x0a
.code
LM79:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,126,',0,0
	.dd LM80-_main
	.dw 0x0d,0x0a
.code
LM80:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L53	//QImode NE
.debug
	.dw '.stabn 0x44,0,127,',0,0
	.dd LM81-_main
	.dw 0x0d,0x0a
.code
LM81:
	PC=L33	// jump
L53:
.debug
	.dw '.stabn 0x44,0,128,',0,0
	.dd LM82-_main
	.dw 0x0d,0x0a
.code
LM82:
	R1=0	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,129,',0,0
	.dd LM83-_main
	.dw 0x0d,0x0a
.code
LM83:
	R1=2	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,130,',0,0
	.dd LM84-_main
	.dw 0x0d,0x0a
.code
LM84:
	R1=5	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayTime	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,131,',0,0
	.dd LM85-_main
	.dw 0x0d,0x0a
.code
LM85:
	R1=[_stop]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L51	//QImode NE
.debug
	.dw '.stabn 0x44,0,132,',0,0
	.dd LM86-_main
	.dw 0x0d,0x0a
.code
LM86:
	PC=L33	// jump
L54:
.debug
	.dw '.stabn 0x44,0,120,',0,0
	.dd LM87-_main
	.dw 0x0d,0x0a
.code
LM87:
L51:
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
	PC=L49	// jump
L50:
.debug
	.dw '.stabn 0x44,0,134,',0,0
	.dd LM88-_main
	.dw 0x0d,0x0a
.code
LM88:
LBE6:
	PC=L38	// jump
L39:
.debug
	.dw '.stabn 0x44,0,135,',0,0
	.dd LM89-_main
	.dw 0x0d,0x0a
.code
LM89:
	R1=0	// QImode move
	PC=L32	// jump
.debug
	.dw '.stabn 0x44,0,136,',0,0
	.dd LM90-_main
	.dw 0x0d,0x0a
.code
LM90:
LBE5:
.debug
	.dw '.stabn 0x44,0,136,',0,0
	.dd LM91-_main
	.dw 0x0d,0x0a
.code
LM91:
L32:

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
