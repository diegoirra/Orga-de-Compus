#include <mips/regdef.h>
#include <sys/syscall.h>

    .text
    .abicalls
    .align 2
    .globl palindrome
    .ent palindrome
	
palindrome:
    .frame $fp, 40, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		52              #guardo los registros del SRA
    .cprestore 28
    sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp
	
	la	t0, palabra
	move 	a0, 	t0

    jal     strlen
	move    t0,    v0				   		   #t0 = strlen()
    
    li      t2,    1                           #t2:contador i = 1
    li      v0,    1                           #v0 return value = 1
    la 		a0,    palabra
    move	t1,    a0

    div     t3,    t0,    2                   #t3= strlen/2
    addi    t3,    t3,    1   				  #t3++ (por si es impar)
palindrome_for:
    bge     t2,    t3,     palindrome_exit	   #if i==len/2: exit (con v0=1)
    lb      t4,    0(a0)                       #word[i] -> t4

    sub     t5,    t0,    t2				   #t5 = t0-t2
    add     t6,    t5,    t1				   #get address indice del final.
    lb      t7,    0(t6)					   #word[j] -> t7

    beq     t4,    t7,    palindrome_continue
    li      v0,    0                           #if t4 != t7: return value=0
    j       palindrome_break					   #break

palindrome_continue:
    addi    a0,    a0,    1                    #siguiente indice
    addi    t2,    t2,    1                    #i++
    j       palindrome_for

palindrome_exit:
	

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

.end palindrome
.data
	palabra: .asciiz "ispal_lapsi"
