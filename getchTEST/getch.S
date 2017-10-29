#include <mips/regdef.h>
#include <sys/syscall.h>

.text
.abicalls
.align 2
.global getch
.ent getch

getch:
    .frame $fp, 40, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		44                	#save SRA
    .cprestore 28
    sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp                  

	move 	t1, 	a0							#guardo el file descriptor 
	move 	t2, 	a1							#guardo buffer tam
	move	t3,		a2							#guardo puntero a buffer
	
	#preparo syscall
	li			v0,		 SYS_read 					
	move		a0,		 t1        					# a0: file descriptor number.
	move		a1,		 t3 	   					# a1: data pointer.
	move		a2,		 t2       					# a2: available space.
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
	# decir que tenemos leído esos caracteres en memoria; si es nula,
	# quiere decir que el stream ha llegado al final. Si ocurren
	# otros valores, los tratamos como error.
	#
	beq	v0, zero, eof 
	bne	v0, t2, read_error
	
	#Y AHORA??? SALIR?
	
return:
	lw 		gp,		28(sp)
	lw 		$fp,	24(sp)
	lw 		ra,		32(sp) 
	addu    sp,    	sp,    40                   
    jr      ra      

read_error:
#esto sale del programa, quizas hay que hacer otra cosa?
	li	v0, -1
	b return


eof:
#ESTO TAMBIEN HAY QUE REVISAR PORQUE EL EJEMPLO LEE DE BYTES
# Y NOSOTROS LLENAMOS UN BUFFER 
	# Finalmente, volvemos al sistema operativo devolviendo un
	# código de retorno nulo.
	#
	# Primero, restauramos los valores de los registros relevantes,
	# y luego destruímos nuestro stack frame.
	#
	move	v0, zero
	move	sp, $fp
	j return
	
	.end getch
