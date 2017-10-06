#include <mips/regdef.h>
#include <sys/syscall.h>
#include "is_pal.h"

.text
.abicalls
.allign 2
.global palindrome
.ent palindrome

palindrome:
.fram $fp, 40, ra
.set noreorder
.cpload t9
.set reorder

    subu    sp,		sp,		40                 #save SRA
.cprestore 28
    sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp                  

    jal     strlen							  
	move    t0,    vo				   		   #t0 = strlen()

    lw      a0     40(sp)                      #load arg
    move    t1,    a0                          #a0 -> t1

    li      t2,    1                           #t2:counter i = 1
    li      v0,    1                           #v0 return value = 1
    div     t3,    t0,    2                    #t3 = len / 2
    addi    t3,    t3,    1                    #t3++ ###################### REVISAR NO HICIMOS ASI EN C 
palindrom_for:
    bge     t2,    t3     palindrom_break	   #if i==len/2 (t3): exit
    lb      t4,    0(a0)                       #word[i]

    sub     t5,    t0,    t2				   #t5 = t0-t2
    add     t6,    t5,    t1				   #add index from the end of the string to start address (get indice del final?)
    lb      t7,    0(t6)					   #word[j]
     										   #### NO SE COMO TRADUCIR ESTO A NUESTRAS PALABRAS

    beq     t4,    t7,    palindrom_continue   
    li      v0,    0                           #if not t4==t7 return 0
    j       palindrom_break					   #break

palindrom_continue:
    addi    a0,    a0,    1                    #siguiente indice
    addi    t2,    t2,    1                    #i++
    j       palindrom_for

palindrom_exit:
    lw      ra,     32(sp)                     #return
    lw		$fp,	24(sp)
    lw 		gp,		28(sp)
    addu    sp,    	sp,    40                   
    jr      ra                                

strlen:
    li		v0,    0                          #return value len=0
strlen_loop:
    lb      t0,    0(a0)                      
    beq     t0,    0,     strlen_exit         #if 0: fin de str => exit
    addi    a0,    a0,    1                   #else: mueve indice al siguiente
    addi    v0,    v0,    1                   #len++
    j       strlen_loop

strlen_exit:
    jr      ra                                 #return

/******************************
main:
    #entry point
    la      $a0,    str                         #load string
    jal     palindrome                          #call palindrom

    move    $a0,    $v0                         #set a0 to palindrom return value
    li      $v0,    1                           #set 1 to v0 - as this is system call for print int
    syscall                                     #make the call

    li      $v0,    10                          #set 10 to v0 - as this is system call for exit program
    syscall                                     #make the call
********************************/
.data
    str: .asciiz "thiispalindrome_emordnilapsiiht"