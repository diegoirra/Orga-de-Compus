#include <mips/regdef.h>
#include <sys/syscall.h>
#include "is_pal.h"

    .text
    .abicalls
    .allign 2
    .global palindrome
    .ent palindrome
	.extern getch
	.extern putch
	
palindrome:
    .fram $fp, 40, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		52              #guardo los registros del SRA
    .cprestore 28
    sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp                  

    sw      a0,  40($fp)                    #save arg1 ifd
    sw      a1,  44($fp)                    #save arg2 ibytes
    sw      a2,  48($fp)                    #save arg3 ofd
    sw      a3,  52($fp)                    #save arg4 obytes

	jal     getch								
	
	move	t0,		v0						#guardo el retorno de getch: puntero al buffer?	
	move 	a0, 	t0						#el puntero a la linea como argumento.
											#se podria hacer todo de una? is that safe?
	
	#si el sys_read nos tira por linea, y leemos de a bytes, deberiamos
	#cargar bytes hasta completar la palabra. Revisando contra los 'separadores'? (tipo ver al final)
	
	#CREO QUE lee por tam de buffer, asi que va a haber que buscar la palabra:
	#recorrer byte a byte hasta encontrar un separador,
	#siguiendo un indice SIMILAR a strlen, mas hay que controlar contra separadores
	
	#comienza algoritmo
	#recibe el puntero a la palabra, por a0
		
    jal     strlen							  
	move    t0,    v0				   		   #t0 = strlen()
    subi	t1,	   t0,	  1					   #t1: j = t0-1
    div     t3,    t0,    2                    #t3 = t0 / 2
    
    li      t2,    1                           #t2:contador i = 1
    li      v0,    1                           #v0 return value = 1    
palindrome_for:
    bge     t2,    t3     palindrome_exit	   #if i==len/2: exit (con v0=1)
    lb      t4,    0(a0)                       #word[i] -> t4

    sub     t5,    t0,    t2				   #t5 = t0-t2
    add     t6,    t5,    t1				   #get indice del final.    
    lb      t7,    0(t6)					   #word[j] -> t7

    beq     t4,    t7,    palindrome_continue   
    li      v0,    0                           #if t4 != t7: return value=0
    j       palindrom_break					   #break

palindrome_continue:
    addi    a0,    a0,    1                    #siguiente indice
    addi    t2,    t2,    1                    #i++
    j       palindrom_for

palindrome_exit:
	#salida correcta del ciclo con v0=1 => es palindromo
	
	#imprimir en el buffer de salida
	#	a2: arg3 ofd
    #   a3: arg4 obytes
	#	hay que pasarle el puntero a la palabra
	#	y cantidad de bytes?
	
	move a0, a2
	move a1, a3
	
	jal putch
	#ESTO IMPRIMIO UNA PALABRA? VARIAS?
	
	#hay que hacer que imprima la palabra si es palindromo 
	#y volver a loop de buscar palabras
	
	#y cuando el buffer esta lleno? putch llena el buffer? sys_write escribe directo?
	#escribe del buffer? hay que llenar el buffer?

palindrome_break:
	#salida por break v0=0: no es palindromo.	
	#retornar al loop de buscar palabras de una
	
return_to_main:
    lw      ra,     32(sp)                     
    lw		$fp,	24(sp)
    lw 		gp,		28(sp)
    addu    sp,    	sp,    40                   
    jr      ra                                

strlen:
    li		v0,    0                          #return value len=0
strlen_loop:
    lb      t0,    0(a0)                      #load byte desde a0. Puntero
    beq     t0,    0,     strlen_exit         #if 0: fin de str => exit
    addi    a0,    a0,    1                   #else: mueve indice al siguiente
    addi    v0,    v0,    1                   #len++
    j       strlen_loop

strlen_exit:
    jr      ra                                 #return

.data
    separador: .asciiz " " #algo tipo asi?
	sep2: .asciiz "$"