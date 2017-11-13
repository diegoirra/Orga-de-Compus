#include <mips/regdef.h>
#include <sys/syscall.h>
#include "palindrome.h"

    .text
    .abicalls
    .global palindrome
    .ent palindrome
	.extern getch
    .extern mymalloc
	
palindrome:
    .frame $fp, 48, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		48              #guardo 16 bytes sra (gp, fp, ra, padding), 16 bytes aba, 16 bytes reg s
    .cprestore 28
    sw      gp,     44(sp)
    sw      $fp,	40(sp)                      
    sw      ra,		36(sp)
    move    $fp,	sp                  

    sw      a0,  48($fp)                    #save arg1 ifd
    sw      a1,  52($fp)                    #save arg2 ibytes
    sw      a2,  56($fp)                    #save arg3 ofd
    sw      a3,  60($fp)                    #save arg4 obytes

    move    s0,     a0                      #fd input file
    move    s1,     a1                      #guardo input buffer tam
    move    s2,     a2                      #fd output file
    move    s3,     a3                      #output buffer tam

    move    a0,     s1
    jal     mymalloc

    move    t0,     v0
    move    a0,     s0
    move    a1,     s1
    move    a2,     t0
	jal     getch								
	jal    return_to_main

return_to_main:
    lw      ra,     36(sp)                     
    lw      $fp,    40(sp)
    lw      gp,     44(sp)
    addu    sp,     sp,    48                   
    jr      ra                

.end palindrome
