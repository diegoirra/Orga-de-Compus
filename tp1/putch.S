#include <mips/regdef.h>
#include <sys/syscall.h>

.text
.abicalls
.align 2
.globl	putch
.ent	putch

putch:
    .frame $fp, 16, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		16                	#save SRA
    .cprestore 12
	sw		$fp, 	8(sp)                     
    sw      ra,		4(sp)
    move    $fp,	sp               
	
	move      s0,		a0                      #guardo primer argumento: file descriptor
    move      s1,		a1					    #guardo segundo argumento: tam del buffer
    move	  s2,		a2						#save data pointer
	
	li	v0, SYS_write
	move	a0, s0         # a0: file descriptor number.
	move	a1, s2		   # a1: output data pointer.
	move	a2, s1         # a2: output byte size.
	syscall

	# Revisamos el retorno de SYS_write: si $a3 es no-nulo, quiere
	# decir que ha ocurrido un error. En caso contrario, imitamos
	# lo hecho en SYS_read, revisando el valor de la cantidad de
	# información que ha sido enviada.
	#
	bne		a3, zero, write_error
	bne		v0, s1, write_error_tam

return:
	lw 		gp,		12(sp)
	lw 		$fp,	8(sp)
	lw 		ra,		4(sp) 
	addu    sp,    	sp,    16                  
    jr      ra      


write_error:
	li	v0, -1
	j return

write_error_tam:
	li	v0, -2
	j return


.end putch
