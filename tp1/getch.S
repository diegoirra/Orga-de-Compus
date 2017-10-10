#include <mips/regdef.h>
#include <sys/syscall.h>

.text
.abicalls
.allign 2
.global getch
.ent getch

getch:
   subu    sp,		sp,		40                 #save SRA
.cprestore 28
	sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp     

    #FALTA IMPLEMENTAR
	.end getch

	.globl	putch
	.ent	putch
putch:
	subu    sp,		sp,		40                 #save SRA
	#FALTA IMPLEMENTAR

	.end putch