#####################################################################
#																	 
#	Created by u'nSP IDE		16:28:23	07/17/15
#
#####################################################################




APPDIR	= C:\PROGRA~1\Sunplus\UNSPID~1.2D

OUTDIR	= .\Debug

CC	= $(APPDIR)\toolchain\gcc

AS	= $(APPDIR)\toolchain\xasm16

LD	= $(APPDIR)\toolchain\xlink16

AR	= $(APPDIR)\toolchain\xlib16

RESC	= $(APPDIR)\toolchain\resc

RM	= $(APPDIR)\toolchain\rm -f

INCLUDES	= -I"D:/Light/light" -I"C:/Program Files/Sunplus/unSP IDE 2.6.2D/library/include" -I"C:/Program Files/Sunplus/unSP IDE 2.6.2D/library/include/sys"

BODY	= -body SPCE060A_061A -bfile "C:\Program Files\Sunplus\unSP IDE Common\Body\SPCE060A_061A.cpt"

BINFILE	= "$(OUTDIR)\light.S37"

ARYFILE	= "$(OUTDIR)\light.ary"

SBMFILE	= "$(OUTDIR)\light.sbm"

OPT	= -S -gstabs -Wall -mglobal-var-iram

ASFLAGS	= -t2 -d

CASFLAGS	= -t2 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\Resource.obj" 

"$(OUTDIR)\main.asm": "D:\Light\light\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/Light/light/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\Resource.obj": "D:\Light\light\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\Light\light\Resource.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS)

compile :	 $(OBJFILES)

clean :
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

