// GCC for SUNPLUS u'nSP version 1.0.23
// Command: C:\PROGRA~1\Sunplus\UNSPID~1.2D\toolchain\cc1.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\ccKMaaaa.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -Wall -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "H:/Light/light/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "H:/Light/light/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
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
.code
.debug
	.dw '.stabs "Delay:F19",36,0,0,',0,0,offset _Delay,seg _Delay,0x0d,0x0a
.CODE
.public _Delay
_Delay:	.proc
.debug
	.dw '.stabn 0x44,0,13,',0,0
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
	.dw '.stabn 0x44,0,15,',0,0
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
	.dw '.stabn 0x44,0,17,',0,0
	.dd LM3-_Delay
	.dw 0x0d,0x0a
.code
LM3:
	R2=1	// QImode move
	[28690]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,15,',0,0
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
	.dw '.stabn 0x44,0,19,',0,0
	.dd LM5-_Delay
	.dw 0x0d,0x0a
.code
LM5:
LBE2:
.debug
	.dw '.stabn 0x44,0,19,',0,0
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
	.dw '.stabs "KeyScan:F4",36,0,0,',0,0,offset _KeyScan,seg _KeyScan,0x0d,0x0a
.CODE
.public _KeyScan
_KeyScan:	.proc
.debug
	.dw '.stabn 0x44,0,22,',0,0
	.dd LM7-_KeyScan
	.dw 0x0d,0x0a
.code
LM7:
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
LBB3:
.debug
	.dw '.stabn 0x44,0,25,',0,0
	.dd LM8-_KeyScan
	.dw 0x0d,0x0a
.code
LM8:
	R1=[28672]	// QImode move
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,26,',0,0
	.dd LM9-_KeyScan
	.dw 0x0d,0x0a
.code
LM9:
	R1=[BP]	// QImode move
	CMP R1,0	// QImode test
	NSJZ L9	//QImode EQ
.debug
	.dw '.stabn 0x44,0,28,',0,0
	.dd LM10-_KeyScan
	.dw 0x0d,0x0a
.code
LM10:
	CALL _Delay	// call without return value
.debug
	.dw '.stabn 0x44,0,29,',0,0
	.dd LM11-_KeyScan
	.dw 0x0d,0x0a
.code
LM11:
	R1=BP	// QImode move
	R2=BP+1
	R1=[28672]	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,30,',0,0
	.dd LM12-_KeyScan
	.dw 0x0d,0x0a
.code
LM12:
	R1=BP	// QImode move
	R2=BP+1
	R1=[BP]	// QImode move
	R3=R2	// QImode move
	CMP R1,[R3]	// QImode compare
	NSJZ L9	//QImode EQ
.debug
	.dw '.stabn 0x44,0,31,',0,0
	.dd LM13-_KeyScan
	.dw 0x0d,0x0a
.code
LM13:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L10:
L9:
.debug
	.dw '.stabn 0x44,0,33,',0,0
	.dd LM14-_KeyScan
	.dw 0x0d,0x0a
.code
LM14:
	R2=[BP]	// QImode move
	R1=R2	// QImode move
	PC=L8	// jump
.debug
	.dw '.stabn 0x44,0,34,',0,0
	.dd LM15-_KeyScan
	.dw 0x0d,0x0a
.code
LM15:
LBE3:
.debug
	.dw '.stabn 0x44,0,34,',0,0
	.dd LM16-_KeyScan
	.dw 0x0d,0x0a
.code
LM16:
L8:

	SP+=3
	POP BP from [SP]
	RETF
	.endp	// end of KeyScan

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB3-_KeyScan
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "uiData:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "uiTemp:4",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE3-_KeyScan
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME2-_KeyScan
	.dw 0x0d,0x0a
.code
LME2:
.code
.debug
	.dw '.stabs "delayMs:F19",36,0,0,',0,0,offset _delayMs,seg _delayMs,0x0d,0x0a
.CODE
.public _delayMs
_delayMs:	.proc
.debug
	.dw '.stabn 0x44,0,37,',0,0
	.dd LM17-_delayMs
	.dw 0x0d,0x0a
.code
LM17:
	// total=16, vars=16
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,16',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=16
	BP=SP+1

	R1=BP+19
	[BP+1]=R1	// QImode move
LBB4:
.debug
	.dw '.stabn 0x44,0,39,',0,0
	.dd LM18-_delayMs
	.dw 0x0d,0x0a
.code
LM18:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L14:
	R3=[BP]
	R4=0
	//split [BP+2]=R3
	[BP+2]=R3	// QImode move
	[BP+3]=R4	// QImode move
	R2=[BP+1]	// QImode move
	R1=[R2]
	R2=0
	//split [BP+4]=R1
	[BP+4]=R1	// QImode move
	[BP+5]=R2	// QImode move
	//split R1=[BP+4]
	R1=[BP+4]	// QImode move
	R2=[BP+5]	// QImode move
	R3=4	// QImode move
	[SP--]=R3	// QImode move
	PUSH R1,R2 to [SP]	// pushhi
	CALL __lshiu2	// call with return value
	SP = SP + 3	//SP
	//split [BP+14]=R1
	[BP+14]=R1	// QImode move
	[BP+15]=R2	// QImode move
	R3=[BP+14]	// QImode move
	[BP+6]=R3	// QImode move
	R4=[BP+4]	// QImode move
	R4 = R4 + [BP+6]	//addqi3
	[BP+6]=R4	// QImode move
	R1=[BP+6]	// QImode move
	R3=1	// QImode move
	[BP+7]=R3	// QImode move
	R4=[BP+6]	// QImode move
	R3=[BP+14]	// QImode move
	CMP R4,R3	// QImode compare
	NSJB L18	//QImode LTU
	R4=0	// QImode move
	[BP+7]=R4	// QImode move
L18:
	R4=[BP+15]	// QImode move
	R3=R4	// QImode move
	R4=[BP+5]	// QImode move
	R3 = R3 + R4	//addqi3
	R2=R3	// QImode move
	R3 = R3 + [BP+7]	//addqi3
	R2=R3	// QImode move
	R3=3	// QImode move
	[SP--]=R3	// QImode move
	PUSH R1,R2 to [SP]	// pushhi
	CALL __lshiu2	// call with return value
	SP = SP + 3	//SP
	//split [BP+14]=R1
	[BP+14]=R1	// QImode move
	[BP+15]=R2	// QImode move
	R3=[BP+14]	// QImode move
	[BP+8]=R3	// QImode move
	R4=[BP+4]	// QImode move
	R4 = R4 + [BP+8]	//addqi3
	[BP+8]=R4	// QImode move
	R1=[BP+8]	// QImode move
	R3=1	// QImode move
	[BP+9]=R3	// QImode move
	R4=[BP+8]	// QImode move
	R3=[BP+14]	// QImode move
	CMP R4,R3	// QImode compare
	NSJB L19	//QImode LTU
	R4=0	// QImode move
	[BP+9]=R4	// QImode move
L19:
	R4=[BP+15]	// QImode move
	R3=R4	// QImode move
	R4=[BP+5]	// QImode move
	R3 = R3 + R4	//addqi3
	R2=R3	// QImode move
	R3 = R3 + [BP+9]	//addqi3
	R2=R3	// QImode move
	R3=2	// QImode move
	[SP--]=R3	// QImode move
	PUSH R1,R2 to [SP]	// pushhi
	CALL __lshiu2	// call with return value
	SP = SP + 3	//SP
	//split [BP+14]=R1
	[BP+14]=R1	// QImode move
	[BP+15]=R2	// QImode move
	R3=[BP+14]	// QImode move
	[BP+10]=R3	// QImode move
	R4=[BP+10]	// QImode move
	R3=[BP+4]	// QImode move
	R4 = R4 - R3	//subqi3
	[BP+10]=R4	// QImode move
	R1=[BP+10]	// QImode move
	R4=1	// QImode move
	[BP+11]=R4	// QImode move
	R3=[BP+10]	// QImode move
	R4=[BP+14]	// QImode move
	CMP R3,R4	// QImode compare
	NSJA L20	//QImode GTU
	R3=0	// QImode move
	[BP+11]=R3	// QImode move
L20:
	R4=[BP+15]	// QImode move
	R3=R4	// QImode move
	R4=[BP+5]	// QImode move
	R3 = R3 - R4	//subqi3
	R2=R3	// QImode move
	R3 = R3 - [BP+11]	//subqi3
	R2=R3	// QImode move
	R3=3	// QImode move
	[SP--]=R3	// QImode move
	PUSH R1,R2 to [SP]	// pushhi
	CALL __lshiu2	// call with return value
	SP = SP + 3	//SP
	//split [BP+14]=R1
	[BP+14]=R1	// QImode move
	[BP+15]=R2	// QImode move
	R3=[BP+14]	// QImode move
	[BP+12]=R3	// QImode move
	R4=[BP+12]	// QImode move
	R3=[BP+4]	// QImode move
	R4 = R4 - R3	//subqi3
	[BP+12]=R4	// QImode move
	R1=[BP+12]	// QImode move
	R4=1	// QImode move
	[BP+13]=R4	// QImode move
	R3=[BP+12]	// QImode move
	R4=[BP+14]	// QImode move
	CMP R3,R4	// QImode compare
	NSJA L21	//QImode GTU
	R3=0	// QImode move
	[BP+13]=R3	// QImode move
L21:
	R4=[BP+15]	// QImode move
	R3=R4	// QImode move
	R4=[BP+5]	// QImode move
	R3 = R3 - R4	//subqi3
	R2=R3	// QImode move
	R3 = R3 - [BP+13]	//subqi3
	R2=R3	// QImode move
	R3=4	// QImode move
	[SP--]=R3	// QImode move
	PUSH R1,R2 to [SP]	// pushhi
	CALL __lshiu2	// call with return value
	SP = SP + 3	//SP
	//split R3=[BP+2]
	R3=[BP+2]	// QImode move
	R4=[BP+3]	// QImode move
	CMP R4,R2	// HImode 1st compare
	JG  L27	// HImode LE
	NSJNZ L17
	CMP R3,R1
	NSJNA  L17
L27:
	PC=L15	// jump
L17:
.debug
	.dw '.stabn 0x44,0,41,',0,0
	.dd LM19-_delayMs
	.dw 0x0d,0x0a
.code
LM19:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,39,',0,0
	.dd LM20-_delayMs
	.dw 0x0d,0x0a
.code
LM20:
L16:
	R1=[BP]	// QImode move
	R2=R1+1
	[BP]=R2	// QImode move
	PC=L14	// jump
L15:
.debug
	.dw '.stabn 0x44,0,43,',0,0
	.dd LM21-_delayMs
	.dw 0x0d,0x0a
.code
LM21:
LBE4:
.debug
	.dw '.stabn 0x44,0,43,',0,0
	.dd LM22-_delayMs
	.dw 0x0d,0x0a
.code
LM22:
L13:

	SP+=16
	POP BP from [SP]
	RETF
	.endp	// end of delayMs

.debug
	.dw '.stabs "millis:p4",160,0,0,19',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB4-_delayMs
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "uiCount:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE4-_delayMs
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME3-_delayMs
	.dw 0x0d,0x0a
.code
LME3:
.code
.debug
	.dw '.stabs "loop:F19",36,0,0,',0,0,offset _loop,seg _loop,0x0d,0x0a
.CODE
.public _loop
_loop:	.proc
.debug
	.dw '.stabn 0x44,0,46,',0,0
	.dd LM23-_loop
	.dw 0x0d,0x0a
.code
LM23:
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
.debug
	.dw '.stabn 0x44,0,50,',0,0
	.dd LM24-_loop
	.dw 0x0d,0x0a
.code
LM24:
	R1=32767	// QImode move
	[28674]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,51,',0,0
	.dd LM25-_loop
	.dw 0x0d,0x0a
.code
LM25:
	R1=32767	// QImode move
	[28675]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM26-_loop
	.dw 0x0d,0x0a
.code
LM26:
	R1=0	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,54,',0,0
	.dd LM27-_loop
	.dw 0x0d,0x0a
.code
LM27:
	R1=7	// QImode move
	[28679]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,55,',0,0
	.dd LM28-_loop
	.dw 0x0d,0x0a
.code
LM28:
	R1=7	// QImode move
	[28680]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,56,',0,0
	.dd LM29-_loop
	.dw 0x0d,0x0a
.code
LM29:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,58,',0,0
	.dd LM30-_loop
	.dw 0x0d,0x0a
.code
LM30:
L29:
	PC=L31	// jump
	PC=L30	// jump
L31:
.debug
	.dw '.stabn 0x44,0,60,',0,0
	.dd LM31-_loop
	.dw 0x0d,0x0a
.code
LM31:
	CALL _KeyScan	// call with return value
	R2=BP	// QImode move
	R3=BP+1
	R2=R3	// QImode move
	[R2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,61,',0,0
	.dd LM32-_loop
	.dw 0x0d,0x0a
.code
LM32:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,(-32768)	// QImode compare
	NSJNZ L32	//QImode NE
.debug
	.dw '.stabn 0x44,0,63,',0,0
	.dd LM33-_loop
	.dw 0x0d,0x0a
.code
LM33:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,64,',0,0
	.dd LM34-_loop
	.dw 0x0d,0x0a
.code
LM34:
	PC=L30	// jump
L32:
.debug
	.dw '.stabn 0x44,0,66,',0,0
	.dd LM35-_loop
	.dw 0x0d,0x0a
.code
LM35:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,67,',0,0
	.dd LM36-_loop
	.dw 0x0d,0x0a
.code
LM36:
	PC=L29	// jump
L30:
.debug
	.dw '.stabn 0x44,0,69,',0,0
	.dd LM37-_loop
	.dw 0x0d,0x0a
.code
LM37:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L33:
	R1=[BP]	// QImode move
	CMP R1,2	// QImode compare
	NSJNG L36	//QImode LE
	PC=L34	// jump
L36:
.debug
	.dw '.stabn 0x44,0,71,',0,0
	.dd LM38-_loop
	.dw 0x0d,0x0a
.code
LM38:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,72,',0,0
	.dd LM39-_loop
	.dw 0x0d,0x0a
.code
LM39:
	R1=24576	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM40-_loop
	.dw 0x0d,0x0a
.code
LM40:
	R1=4	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,74,',0,0
	.dd LM41-_loop
	.dw 0x0d,0x0a
.code
LM41:
	R1=500	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,75,',0,0
	.dd LM42-_loop
	.dw 0x0d,0x0a
.code
LM42:
	R1=8192	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,76,',0,0
	.dd LM43-_loop
	.dw 0x0d,0x0a
.code
LM43:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,77,',0,0
	.dd LM44-_loop
	.dw 0x0d,0x0a
.code
LM44:
	R1=500	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,69,',0,0
	.dd LM45-_loop
	.dw 0x0d,0x0a
.code
LM45:
L35:
	R1=[BP]	// QImode move
	R2=R1+1
	[BP]=R2	// QImode move
	PC=L33	// jump
L34:
.debug
	.dw '.stabn 0x44,0,80,',0,0
	.dd LM46-_loop
	.dw 0x0d,0x0a
.code
LM46:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,81,',0,0
	.dd LM47-_loop
	.dw 0x0d,0x0a
.code
LM47:
	R1=20480	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM48-_loop
	.dw 0x0d,0x0a
.code
LM48:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,83,',0,0
	.dd LM49-_loop
	.dw 0x0d,0x0a
.code
LM49:
	R1=10000	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,85,',0,0
	.dd LM50-_loop
	.dw 0x0d,0x0a
.code
LM50:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,86,',0,0
	.dd LM51-_loop
	.dw 0x0d,0x0a
.code
LM51:
	R1=4096	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,87,',0,0
	.dd LM52-_loop
	.dw 0x0d,0x0a
.code
LM52:
	R1=1	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,88,',0,0
	.dd LM53-_loop
	.dw 0x0d,0x0a
.code
LM53:
	R1=10000	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,90,',0,0
	.dd LM54-_loop
	.dw 0x0d,0x0a
.code
LM54:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L37:
	R1=[BP]	// QImode move
	CMP R1,2	// QImode compare
	NSJNG L40	//QImode LE
	PC=L38	// jump
L40:
.debug
	.dw '.stabn 0x44,0,92,',0,0
	.dd LM55-_loop
	.dw 0x0d,0x0a
.code
LM55:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,93,',0,0
	.dd LM56-_loop
	.dw 0x0d,0x0a
.code
LM56:
	R1=8192	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,94,',0,0
	.dd LM57-_loop
	.dw 0x0d,0x0a
.code
LM57:
	R1=2	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,95,',0,0
	.dd LM58-_loop
	.dw 0x0d,0x0a
.code
LM58:
	R1=500	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,96,',0,0
	.dd LM59-_loop
	.dw 0x0d,0x0a
.code
LM59:
	R1=0	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,97,',0,0
	.dd LM60-_loop
	.dw 0x0d,0x0a
.code
LM60:
	R1=2	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,90,',0,0
	.dd LM61-_loop
	.dw 0x0d,0x0a
.code
LM61:
L39:
	R1=[BP]	// QImode move
	R2=R1+1
	[BP]=R2	// QImode move
	PC=L37	// jump
L38:
.debug
	.dw '.stabn 0x44,0,99,',0,0
	.dd LM62-_loop
	.dw 0x0d,0x0a
.code
LM62:
LBE5:
.debug
	.dw '.stabn 0x44,0,99,',0,0
	.dd LM63-_loop
	.dw 0x0d,0x0a
.code
LM63:
L28:

	SP+=3
	POP BP from [SP]
	RETF
	.endp	// end of loop

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB5-_loop
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "i:1",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "uiKey:4",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE5-_loop
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME4-_loop
	.dw 0x0d,0x0a
.code
LME4:
.code
.debug
	.dw '.stabs "main:F1",36,0,0,',0,0,offset _main,seg _main,0x0d,0x0a
.CODE
.public _main
_main:	.proc
.debug
	.dw '.stabn 0x44,0,102,',0,0
	.dd LM64-_main
	.dw 0x0d,0x0a
.code
LM64:
	// total=1, vars=1
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,1',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=1
	BP=SP+1

	R1=BP+4
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,103,',0,0
	.dd LM65-_main
	.dw 0x0d,0x0a
.code
LM65:
L45:
	PC=L47	// jump
	PC=L46	// jump
L47:
.debug
	.dw '.stabn 0x44,0,105,',0,0
	.dd LM66-_main
	.dw 0x0d,0x0a
.code
LM66:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,106,',0,0
	.dd LM67-_main
	.dw 0x0d,0x0a
.code
LM67:
	CALL _loop	// call without return value
.debug
	.dw '.stabn 0x44,0,107,',0,0
	.dd LM68-_main
	.dw 0x0d,0x0a
.code
LM68:
	PC=L45	// jump
L46:
.debug
	.dw '.stabn 0x44,0,108,',0,0
	.dd LM69-_main
	.dw 0x0d,0x0a
.code
LM69:
	R1=0	// QImode move
	PC=L44	// jump
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM70-_main
	.dw 0x0d,0x0a
.code
LM70:
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM71-_main
	.dw 0x0d,0x0a
.code
LM71:
L44:

	SP+=1
	POP BP from [SP]
	RETF
	.endp	// end of main

.debug
	.dw '.stabf ',0,0
	.dd LME5-_main
	.dw 0x0d,0x0a
.code
LME5:
.external __lshiu2
	.end
