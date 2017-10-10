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

    subu    sp,		sp,		40                 #guardo los registros del SRA
    .cprestore 28
    sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp                  

    sw      a0,  40($fp)                      #save arg1
    sw      a1,  44($fp)                      #save arg2
    sw      a2,  48($fp)                      #save arg3
    sw      a3,  52($fp)                      #save arg4

	jal     getch								




	#comienza algoritmo
	#utiliza los tX. REGISTROS A CAMBIAR
    jal     strlen							  
	move    t0,    v0				   		   #t0 = strlen()
    subi	t0,	   t0,	  1					   #t0--
    div     t3,    t0,    2                    #t3 = len / 2
    
    li      t2,    1                           #t2:contador i = 1
    li      v0,    1                           #v0 return value = 1
    
    
palindrome_for:
    bge     t2,    t3     palindrome_break	   #if i==len/2 (t3): exit
    lb      t4,    0(a0)                       #word[i]

    sub     t5,    t0,    t2				   #t5 = t0-t2
    add     t6,    t5,    t1				   #get indice del final.    
    lb      t7,    0(t6)					   #word[j]

    beq     t4,    t7,    palindrome_continue   
    li      v0,    0                           #si t4 y t7 no son iguales return =0
    j       palindrom_break					   #break

palindrome_continue:
    addi    a0,    a0,    1                    #siguiente indice
    addi    t2,    t2,    1                    #i++
    j       palindrom_for

palindrome_break:
    lw      ra,     32(sp)                     #return
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

