#include <mips/regdef.h>
#include <sys/syscall.h>

.text
.abicalls
.allign 2
.global getch
.ent getch

getch:
    .fram $fp, 40, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		44                	#save SRA
    .cprestore 28
    sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp                  

    sw      a0,		40($fp)                     #guardo primer argumento: file descriptor    
    sw      a1,     44($fp)					    #guardo segundo argumento: tam del buffer
         
    jal		mymalloc    
    move 	t0, 	v0							#ptr retorno de mymalloc
	
	lw 		a0,		40($fp)						#re-cargo los argumentos
	lw		a1,		44($fp)
	move 	t1, 	a0							#guardo el file descriptor 
	move 	t2, 	a1							#guardo buffer tam 
	
	#preparo syscall
	li			v0,		 SYS_read 					
	move		a0,		 t1        					# a0: file descriptor number.
	move		a1,		 t0 	   					# a1: data pointer.
	move		a2,		 1       					# a2: available space.
	syscall								
	
	# Verificamos el retorno de la llamada a SYS_read: si terminó
	# bien, continuamos. De lo contrario, retornamos al sistema.
	#
	# Primero, inspeccionamos el valor del registro a3: debe ser
	# cero cuando no han ocurrido errores, y distinto de cero en
	# los demás casos.
	#
	bne	a3, zero, read_error

	# En este punto, sabemos que $a3 es nulo: necesitamos revisar
	# el valor de retorno de SYS_read, i.e. cantidad de bytes que
	# se acaban de leer. Si la cantidad es exactamente el tam del buffer,
	# quiere
	# decir que tenemos leído un caracter en memoria; si es nula,
	# quiere decir que el stream ha llegado al final. Si ocurren
	# otros valores, los tratamos como error.
	#
	beq	v0, zero, eof 
	bne	v0, t2, read_error
	
	#Y AHORA??? SALIR?
	
	
	#RETURN	
	lw 		gp,		28(sp)
	lw 		$fp,	24(sp)
	lw 		ra,		32(sp) 
	addu    sp,    	sp,    40                   
    jr      ra      

read_error: #esto sale del programa, quizas hay que hacer otra cosa?
	li	v0, SYS_exit
	li	a0, 1
	syscall

eof: #ESTO TAMBIEN HAY QUE REVISAR PORQUE EL EJEMPLO LEE DE BYTES
# Y NOSOTROS LLENAMOS UN BUFFER 
	# Finalmente, volvemos al sistema operativo devolviendo un
	# código de retorno nulo.
	#
	# Primero, restauramos los valores de los registros relevantes,
	# y luego destruímos nuestro stack frame.
	#
	move	v0, zero
	move	sp, $fp
	lw gp, 28(sp)
	lw	ra, 32(sp)
	lw	$fp, 24(sp)
	addu	sp, sp, 40
	j	ra
	
	.end getch


	.globl	putch
	.ent	putch
putch:
    .fram $fp, 40, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		44                	#save SRA
    .cprestore 28
    sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp                  

	#FALTA IMPLEMENTAR
	# salida estándar, detectando errores. Ver más abajo.
	#
	li	v0, SYS_write # ver dentro de <sys/syscall.h>.
	li	a0, 1         # a0: file descriptor number.
	la	a1, 28(sp)    # a1: output data pointer.
	li	a2, 1         # a2: output byte size.
	syscall

	# Revisamos el retorno de SYS_write: si $a3 es no-nulo, quiere
	# decir que ha ocurrido un error. En caso contrario, imitamos
	# lo hecho en SYS_read, revisando el valor de la cantidad de
	# información que ha sido enviada.
	#
	bne	a3, zero, write_error
	li	t0, 1
	bne	v0, t0, write_error
	
write_error: #esto sale del programa, quizas hay que hacer otra cosa?
	li	v0, SYS_exit
	li	a0, 1
	syscall

	.end putch