#include <mips/regdef.h>
#include <sys/syscall.h>

.text
.abicalls
.align 2
.globl	putch
.ent	putch

putch:
    .frame $fp, 40, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		44                	#save SRA
    .cprestore 28
    sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp                  
	
	move      t0,		a0                      #guardo primer argumento: file descriptor
    move      t1,		a1					    #guardo segundo argumento: tam del buffer
    move	  t2,		a2						#save data pointer
	
	li	v0, SYS_write
	move	a0, t0         # a0: file descriptor number.
	move	a1, t2		   # a1: output data pointer.
	move	a2, t1         # a2: output byte size.
	syscall

	# Revisamos el retorno de SYS_write: si $a3 es no-nulo, quiere
	# decir que ha ocurrido un error. En caso contrario, imitamos
	# lo hecho en SYS_read, revisando el valor de la cantidad de
	# información que ha sido enviada.
	#
	bne		a3, zero, write_error
	bne		v0, t2, write_error
	
write_error:
	li	v0, -1
	syscall

	.end putch
