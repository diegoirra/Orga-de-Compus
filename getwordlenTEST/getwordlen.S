#include <mips/regdef.h>

.text
.abicalls
.align 2
.global getwordlen
.ent getwordlen

getwordlen:
    .frame $fp, 16, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,     sp,     16                  #save SRA
    .cprestore 28
    sw      gp,     12(sp)
    sw      $fp,    8(sp)                     
    sw      ra,     4(sp)
    move    $fp,    sp                   

	move 	t1, 	a0							#guardo el puntero

#ascii codes
#A = 65
#a = 97
#Z = 90
#z = 122
#ascii 0 = 48
#9 = 57
#- = 45
#_ = 95

    li		v0,    0                          #return value len=0
strlen_loop:
    lb      t0,    0(a0)                      #load byte desde a0. Puntero
    jal 	checkchar
    addi    a0,    a0,    1                   #else: mueve indice al siguiente
    addi    v0,    v0,    1                   #len++
    j       strlen_loop

checkchar:
	beq		t0, 95,		back	#if _
	beq		t0, 45,		back	#if -

	bgt		t0, 122,	return	#if over z
	bgt		t0, 96, 	back	#if over a, below z

	blt		t0, 48,		return	#if below 0
	blt		t0, 57,		back	#if below 9, over 0

	blt		t0, 65,		return	#if below A
	blt		t0, 90,		back	#if below Z, over A
back:
	jr		ra

	
return:
    lw      gp,     12(sp)
    lw      $fp,    8(sp)
    lw      ra,     4(sp) 
    addu    sp,     sp,    16                  
    jr      ra        


.end getwordlen
