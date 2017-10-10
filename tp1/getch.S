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
	sw      $fp,	28(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp     


    sw      a0,		40($fp)                     #guardo el primer parametro de la funcion en el ABA
    move    t0,		a0                          #a0 -> t0
    sw      a1,     36($fp)					    #guardo segundo argumento, que es el tam del buffer
    lw  	a0,		36($fp)       				#en a0 le paso el tam a mymalloc
    jal		mymalloc

    move	a1,		v0							#cargo parametros para el read
    move	a0,		t0							#primero el file descriptor en a0
    lw  	a2,		36($fp)						#el tamaño del buffer en a2
    li		v0,		SYS_read					
    syscall										#llamado a la syscall

    
getch_exit:

	addu    sp,    	sp,    40                   
    jr      ra      

	.end getch

	.globl	putch
	.ent	putch
putch:
	subu    sp,		sp,		40                 #save SRA
	#FALTA IMPLEMENTAR

	.end putch