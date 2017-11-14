#include <mips/regdef.h>
#include <sys/syscall.h>

    .text
    .abicalls
    .align 2
    .globl is_pal
    .ent is_pal
	
is_pal:
    .frame $fp, 16, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		16              #guardo los registros del SRA
    .cprestore 12
    sw      $fp,    8(sp)                     
    sw      ra,     4(sp)
    move    $fp,    sp   
	
	sw		a0, 	16(sp)					 #guardo el argumento

    jal     strlen
	move    t0,     v0				   		   #t0 = strlen()
	lw		a0,		16(sp)						#re cargo el argumento
    
    li      t2,    1                           #t2:contador i = 1
    li      v0,    1                           #v0 return value = 1
    move	t1,    a0

    div     t3,    t0,    2                   #t3= strlen/2
    addi    t3,    t3,    1   				  #t3++ (por si es impar)
is_pal_for:
    bge     t2,    t3,     is_pal_exit	   #if i==len/2: exit (con v0=1)
    lb      t4,    0(a0)                       #word[i] -> t4

    sub     t5,    t0,    t2				   #t5 = t0-t2
    add     t6,    t5,    t1				   #get address indice del final.
    lb      t7,    0(t6)					   #word[j] -> t7

    beq     t4,    t7,    is_pal_continue	#if t4==t7

    add		t8,		t7, 32
    beq     t4,    t8,    is_pal_continue	#if t4==caps(t7)

    add		t8,		t4, 32
    beq     t8,    t7,    is_pal_continue	#if caps(t4)==t7

    li      v0,    0                           #else ==> t4 != t7: return value=0
    j       is_pal_break					   #break

is_pal_continue:
    addi    a0,    a0,    1                    #siguiente indice
    addi    t2,    t2,    1                    #i++
    j       is_pal_for

is_pal_exit:
	

is_pal_break:
	#salida por break v0=0: no es palindromo.	
	#retornar al loop de buscar palabras de una
	
return_to_main:
    lw      gp,     12(sp)
    lw      $fp,    8(sp)
    lw      ra,     4(sp) 
    addu    sp,     sp,    16                  
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

.end is_pal
