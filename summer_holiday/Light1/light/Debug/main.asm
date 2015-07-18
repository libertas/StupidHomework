// GCC for SUNPLUS u'nSP version 1.0.23
// Command: C:\PROGRA~1\Sunplus\UNSPID~1.2D\toolchain\cc1.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\ccozaaaa.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -Wall -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "D:/Light/light/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "D:/Light/light/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
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
	.dw '.stabs "clearTimer:F19",36,0,0,',0,0,offset _clearTimer,seg _clearTimer,0x0d,0x0a
.CODE
.public _clearTimer
_clearTimer:	.proc
.debug
	.dw '.stabn 0x44,0,16,',0,0
	.dd LM1-_clearTimer
	.dw 0x0d,0x0a
.code
LM1:
	// total=0, vars=0
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,0',0x0d, 0x0a
.code
	PUSH BP to [SP]
	BP=SP+1

	R1=BP+3
.debug
	.dw '.stabn 0x44,0,17,',0,0
	.dd LM2-_clearTimer
	.dw 0x0d,0x0a
.code
LM2:
	R2=1	// QImode move
	[28690]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,18,',0,0
	.dd LM3-_clearTimer
	.dw 0x0d,0x0a
.code
LM3:
	R2=0	// QImode move
	[28682]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,19,',0,0
	.dd LM4-_clearTimer
	.dw 0x0d,0x0a
.code
LM4:
.debug
	.dw '.stabn 0x44,0,19,',0,0
	.dd LM5-_clearTimer
	.dw 0x0d,0x0a
.code
LM5:
L2:

	POP BP from [SP]
	RETF
	.endp	// end of clearTimer

.debug
	.dw '.stabf ',0,0
	.dd LME1-_clearTimer
	.dw 0x0d,0x0a
.code
LME1:
.code
.debug
	.dw '.stabs "Delay:F19",36,0,0,',0,0,offset _Delay,seg _Delay,0x0d,0x0a
.CODE
.public _Delay
_Delay:	.proc
.debug
	.dw '.stabn 0x44,0,22,',0,0
	.dd LM6-_Delay
	.dw 0x0d,0x0a
.code
LM6:
	// total=2, vars=2
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,2',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=2
	BP=SP+1

	R1=BP+5
	[BP+1]=R1	// QImode move
LBB2:
.debug
	.dw '.stabn 0x44,0,24,',0,0
	.dd LM7-_Delay
	.dw 0x0d,0x0a
.code
LM7:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L4:
	R1=[BP]	// QImode move
	CMP R1,3000	// QImode compare
	NSJNA L7	//QImode LEU
	PC=L5	// jump
L7:
.debug
	.dw '.stabn 0x44,0,26,',0,0
	.dd LM8-_Delay
	.dw 0x0d,0x0a
.code
LM8:
	CALL _clearTimer	// call without return value
.debug
	.dw '.stabn 0x44,0,24,',0,0
	.dd LM9-_Delay
	.dw 0x0d,0x0a
.code
LM9:
L6:
	R1=[BP]	// QImode move
	R2=R1+1
	[BP]=R2	// QImode move
	PC=L4	// jump
L5:
.debug
	.dw '.stabn 0x44,0,28,',0,0
	.dd LM10-_Delay
	.dw 0x0d,0x0a
.code
LM10:
LBE2:
.debug
	.dw '.stabn 0x44,0,28,',0,0
	.dd LM11-_Delay
	.dw 0x0d,0x0a
.code
LM11:
L3:

	SP+=2
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
	.dd LME2-_Delay
	.dw 0x0d,0x0a
.code
LME2:
.code
.debug
	.dw '.stabs "KeyScan:F4",36,0,0,',0,0,offset _KeyScan,seg _KeyScan,0x0d,0x0a
.CODE
.public _KeyScan
_KeyScan:	.proc
.debug
	.dw '.stabn 0x44,0,31,',0,0
	.dd LM12-_KeyScan
	.dw 0x0d,0x0a
.code
LM12:
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
	.dw '.stabn 0x44,0,34,',0,0
	.dd LM13-_KeyScan
	.dw 0x0d,0x0a
.code
LM13:
	R1=[28672]	// QImode move
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,35,',0,0
	.dd LM14-_KeyScan
	.dw 0x0d,0x0a
.code
LM14:
	R1=[BP]	// QImode move
	CMP R1,0	// QImode test
	NSJZ L10	//QImode EQ
.debug
	.dw '.stabn 0x44,0,37,',0,0
	.dd LM15-_KeyScan
	.dw 0x0d,0x0a
.code
LM15:
	CALL _Delay	// call without return value
.debug
	.dw '.stabn 0x44,0,38,',0,0
	.dd LM16-_KeyScan
	.dw 0x0d,0x0a
.code
LM16:
	R1=BP	// QImode move
	R2=BP+1
	R1=[28672]	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,39,',0,0
	.dd LM17-_KeyScan
	.dw 0x0d,0x0a
.code
LM17:
	R1=BP	// QImode move
	R2=BP+1
	R1=[BP]	// QImode move
	R3=R2	// QImode move
	CMP R1,[R3]	// QImode compare
	NSJZ L10	//QImode EQ
.debug
	.dw '.stabn 0x44,0,40,',0,0
	.dd LM18-_KeyScan
	.dw 0x0d,0x0a
.code
LM18:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L11:
L10:
.debug
	.dw '.stabn 0x44,0,42,',0,0
	.dd LM19-_KeyScan
	.dw 0x0d,0x0a
.code
LM19:
	R2=[BP]	// QImode move
	R1=R2	// QImode move
	PC=L9	// jump
.debug
	.dw '.stabn 0x44,0,43,',0,0
	.dd LM20-_KeyScan
	.dw 0x0d,0x0a
.code
LM20:
LBE3:
.debug
	.dw '.stabn 0x44,0,43,',0,0
	.dd LM21-_KeyScan
	.dw 0x0d,0x0a
.code
LM21:
L9:

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
	.dd LME3-_KeyScan
	.dw 0x0d,0x0a
.code
LME3:
.code
.debug
	.dw '.stabs "delayMs:F19",36,0,0,',0,0,offset _delayMs,seg _delayMs,0x0d,0x0a
.CODE
.public _delayMs
_delayMs:	.proc
.debug
	.dw '.stabn 0x44,0,46,',0,0
	.dd LM22-_delayMs
	.dw 0x0d,0x0a
.code
LM22:
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
	.dw '.stabn 0x44,0,47,',0,0
	.dd LM23-_delayMs
	.dw 0x0d,0x0a
.code
LM23:
L15:
	PC=L17	// jump
	PC=L16	// jump
L17:
.debug
	.dw '.stabn 0x44,0,49,',0,0
	.dd LM24-_delayMs
	.dw 0x0d,0x0a
.code
LM24:
	R1=0	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,50,',0,0
	.dd LM25-_delayMs
	.dw 0x0d,0x0a
.code
LM25:
	R2=[BP]	// QImode move
	R1=[R2]	// QImode move
	R2=R1	// QImode move
	R1=R2 lsl 1
	R2=[28682]	// QImode move
	CMP R1,R2	// QImode compare
	NSJA L18	//QImode GTU
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM26-_delayMs
	.dw 0x0d,0x0a
.code
LM26:
	R2=[BP]	// QImode move
	R1=[R2]	// QImode move
	R2=R1+(-1)
	R1=[BP]	// QImode move
	[R1]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,53,',0,0
	.dd LM27-_delayMs
	.dw 0x0d,0x0a
.code
LM27:
	R1=0	// QImode move
	[28682]=R1	// QImode move
L18:
.debug
	.dw '.stabn 0x44,0,55,',0,0
	.dd LM28-_delayMs
	.dw 0x0d,0x0a
.code
LM28:
	R2=[BP]	// QImode move
	R1=[R2]	// QImode move
	CMP R1,0	// QImode test
	NSJNZ L19	//QImode NE
.debug
	.dw '.stabn 0x44,0,56,',0,0
	.dd LM29-_delayMs
	.dw 0x0d,0x0a
.code
LM29:
	PC=L16	// jump
L19:
.debug
	.dw '.stabn 0x44,0,57,',0,0
	.dd LM30-_delayMs
	.dw 0x0d,0x0a
.code
LM30:
	PC=L15	// jump
L16:
.debug
	.dw '.stabn 0x44,0,58,',0,0
	.dd LM31-_delayMs
	.dw 0x0d,0x0a
.code
LM31:
	CALL _clearTimer	// call without return value
.debug
	.dw '.stabn 0x44,0,59,',0,0
	.dd LM32-_delayMs
	.dw 0x0d,0x0a
.code
LM32:
.debug
	.dw '.stabn 0x44,0,59,',0,0
	.dd LM33-_delayMs
	.dw 0x0d,0x0a
.code
LM33:
L14:

	SP+=1
	POP BP from [SP]
	RETF
	.endp	// end of delayMs

.debug
	.dw '.stabs "millis:p4",160,0,0,4',0x0d,0x0a
.CODE
.debug
	.dw '.stabf ',0,0
	.dd LME4-_delayMs
	.dw 0x0d,0x0a
.code
LME4:
.code
.debug
	.dw '.stabs "loop:F19",36,0,0,',0,0,offset _loop,seg _loop,0x0d,0x0a
.CODE
.public _loop
_loop:	.proc
.debug
	.dw '.stabn 0x44,0,62,',0,0
	.dd LM34-_loop
	.dw 0x0d,0x0a
.code
LM34:
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
LBB4:
.debug
	.dw '.stabn 0x44,0,66,',0,0
	.dd LM35-_loop
	.dw 0x0d,0x0a
.code
LM35:
	R1=5	// QImode move
	[28683]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,67,',0,0
	.dd LM36-_loop
	.dw 0x0d,0x0a
.code
LM36:
	R1=0	// QImode move
	[28682]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,69,',0,0
	.dd LM37-_loop
	.dw 0x0d,0x0a
.code
LM37:
	R1=32767	// QImode move
	[28674]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,70,',0,0
	.dd LM38-_loop
	.dw 0x0d,0x0a
.code
LM38:
	R1=32767	// QImode move
	[28675]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,71,',0,0
	.dd LM39-_loop
	.dw 0x0d,0x0a
.code
LM39:
	R1=0	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM40-_loop
	.dw 0x0d,0x0a
.code
LM40:
	R1=7	// QImode move
	[28679]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,74,',0,0
	.dd LM41-_loop
	.dw 0x0d,0x0a
.code
LM41:
	R1=7	// QImode move
	[28680]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,75,',0,0
	.dd LM42-_loop
	.dw 0x0d,0x0a
.code
LM42:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,77,',0,0
	.dd LM43-_loop
	.dw 0x0d,0x0a
.code
LM43:
L23:
	PC=L25	// jump
	PC=L24	// jump
L25:
.debug
	.dw '.stabn 0x44,0,79,',0,0
	.dd LM44-_loop
	.dw 0x0d,0x0a
.code
LM44:
	CALL _KeyScan	// call with return value
	R2=BP	// QImode move
	R3=BP+1
	R2=R3	// QImode move
	[R2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,80,',0,0
	.dd LM45-_loop
	.dw 0x0d,0x0a
.code
LM45:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,(-32768)	// QImode compare
	NSJNZ L26	//QImode NE
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM46-_loop
	.dw 0x0d,0x0a
.code
LM46:
	CALL _clearTimer	// call without return value
.debug
	.dw '.stabn 0x44,0,83,',0,0
	.dd LM47-_loop
	.dw 0x0d,0x0a
.code
LM47:
	PC=L24	// jump
L26:
.debug
	.dw '.stabn 0x44,0,85,',0,0
	.dd LM48-_loop
	.dw 0x0d,0x0a
.code
LM48:
	CALL _clearTimer	// call without return value
.debug
	.dw '.stabn 0x44,0,86,',0,0
	.dd LM49-_loop
	.dw 0x0d,0x0a
.code
LM49:
	PC=L23	// jump
L24:
.debug
	.dw '.stabn 0x44,0,88,',0,0
	.dd LM50-_loop
	.dw 0x0d,0x0a
.code
LM50:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L27:
	R1=[BP]	// QImode move
	CMP R1,2	// QImode compare
	NSJNG L30	//QImode LE
	PC=L28	// jump
L30:
.debug
	.dw '.stabn 0x44,0,90,',0,0
	.dd LM51-_loop
	.dw 0x0d,0x0a
.code
LM51:
	CALL _clearTimer	// call without return value
.debug
	.dw '.stabn 0x44,0,91,',0,0
	.dd LM52-_loop
	.dw 0x0d,0x0a
.code
LM52:
	R1=24576	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,92,',0,0
	.dd LM53-_loop
	.dw 0x0d,0x0a
.code
LM53:
	R1=4	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,93,',0,0
	.dd LM54-_loop
	.dw 0x0d,0x0a
.code
LM54:
	R1=500	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,94,',0,0
	.dd LM55-_loop
	.dw 0x0d,0x0a
.code
LM55:
	R1=8192	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,95,',0,0
	.dd LM56-_loop
	.dw 0x0d,0x0a
.code
LM56:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,96,',0,0
	.dd LM57-_loop
	.dw 0x0d,0x0a
.code
LM57:
	R1=500	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,88,',0,0
	.dd LM58-_loop
	.dw 0x0d,0x0a
.code
LM58:
L29:
	R1=[BP]	// QImode move
	R2=R1+1
	[BP]=R2	// QImode move
	PC=L27	// jump
L28:
.debug
	.dw '.stabn 0x44,0,99,',0,0
	.dd LM59-_loop
	.dw 0x0d,0x0a
.code
LM59:
	CALL _clearTimer	// call without return value
.debug
	.dw '.stabn 0x44,0,100,',0,0
	.dd LM60-_loop
	.dw 0x0d,0x0a
.code
LM60:
	R1=20480	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,101,',0,0
	.dd LM61-_loop
	.dw 0x0d,0x0a
.code
LM61:
	R1=0	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,102,',0,0
	.dd LM62-_loop
	.dw 0x0d,0x0a
.code
LM62:
	R1=10000	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,104,',0,0
	.dd LM63-_loop
	.dw 0x0d,0x0a
.code
LM63:
	CALL _clearTimer	// call without return value
.debug
	.dw '.stabn 0x44,0,105,',0,0
	.dd LM64-_loop
	.dw 0x0d,0x0a
.code
LM64:
	R1=4096	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,106,',0,0
	.dd LM65-_loop
	.dw 0x0d,0x0a
.code
LM65:
	R1=1	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,107,',0,0
	.dd LM66-_loop
	.dw 0x0d,0x0a
.code
LM66:
	R1=10000	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM67-_loop
	.dw 0x0d,0x0a
.code
LM67:
	R1=0	// QImode move
	[BP]=R1	// QImode move
L31:
	R1=[BP]	// QImode move
	CMP R1,2	// QImode compare
	NSJNG L34	//QImode LE
	PC=L32	// jump
L34:
.debug
	.dw '.stabn 0x44,0,111,',0,0
	.dd LM68-_loop
	.dw 0x0d,0x0a
.code
LM68:
	CALL _clearTimer	// call without return value
.debug
	.dw '.stabn 0x44,0,112,',0,0
	.dd LM69-_loop
	.dw 0x0d,0x0a
.code
LM69:
	R1=8192	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,113,',0,0
	.dd LM70-_loop
	.dw 0x0d,0x0a
.code
LM70:
	R1=2	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,114,',0,0
	.dd LM71-_loop
	.dw 0x0d,0x0a
.code
LM71:
	R1=500	// QImode move
	[SP--]=R1	// QImode move
	CALL _delayMs	// call without return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,115,',0,0
	.dd LM72-_loop
	.dw 0x0d,0x0a
.code
LM72:
	R1=0	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,116,',0,0
	.dd LM73-_loop
	.dw 0x0d,0x0a
.code
LM73:
	R1=2	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM74-_loop
	.dw 0x0d,0x0a
.code
LM74:
L33:
	R1=[BP]	// QImode move
	R2=R1+1
	[BP]=R2	// QImode move
	PC=L31	// jump
L32:
.debug
	.dw '.stabn 0x44,0,118,',0,0
	.dd LM75-_loop
	.dw 0x0d,0x0a
.code
LM75:
LBE4:
.debug
	.dw '.stabn 0x44,0,118,',0,0
	.dd LM76-_loop
	.dw 0x0d,0x0a
.code
LM76:
L22:

	SP+=3
	POP BP from [SP]
	RETF
	.endp	// end of loop

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB4-_loop
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
	.dd LBE4-_loop
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME5-_loop
	.dw 0x0d,0x0a
.code
LME5:
.code
.debug
	.dw '.stabs "main:F1",36,0,0,',0,0,offset _main,seg _main,0x0d,0x0a
.CODE
.public _main
_main:	.proc
.debug
	.dw '.stabn 0x44,0,121,',0,0
	.dd LM77-_main
	.dw 0x0d,0x0a
.code
LM77:
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
	.dw '.stabn 0x44,0,122,',0,0
	.dd LM78-_main
	.dw 0x0d,0x0a
.code
LM78:
L39:
	PC=L41	// jump
	PC=L40	// jump
L41:
.debug
	.dw '.stabn 0x44,0,124,',0,0
	.dd LM79-_main
	.dw 0x0d,0x0a
.code
LM79:
	CALL _clearTimer	// call without return value
.debug
	.dw '.stabn 0x44,0,125,',0,0
	.dd LM80-_main
	.dw 0x0d,0x0a
.code
LM80:
	CALL _loop	// call without return value
.debug
	.dw '.stabn 0x44,0,126,',0,0
	.dd LM81-_main
	.dw 0x0d,0x0a
.code
LM81:
	PC=L39	// jump
L40:
.debug
	.dw '.stabn 0x44,0,127,',0,0
	.dd LM82-_main
	.dw 0x0d,0x0a
.code
LM82:
	R1=0	// QImode move
	PC=L38	// jump
.debug
	.dw '.stabn 0x44,0,128,',0,0
	.dd LM83-_main
	.dw 0x0d,0x0a
.code
LM83:
.debug
	.dw '.stabn 0x44,0,128,',0,0
	.dd LM84-_main
	.dw 0x0d,0x0a
.code
LM84:
L38:

	SP+=1
	POP BP from [SP]
	RETF
	.endp	// end of main

.debug
	.dw '.stabf ',0,0
	.dd LME6-_main
	.dw 0x0d,0x0a
.code
LME6:
	.end
