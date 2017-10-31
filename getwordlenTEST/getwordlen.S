#include <mips/regdef.h>

.text
.abicalls
.align 2
.global getwordlen
.ent getwordlen

getwordlen:
    .frame $fp, 40, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		44                	#save SRA
    .cprestore 28
    sw      $fp,	24(sp)                      
    sw      ra,		32(sp)
    move    $fp,	sp                  

	move 	t1, 	a0							#guardo el puntero

#ascii codes
#a = 97
#z = 122

    li		v0,    0                          #return value len=0
strlen_loop:
    lb      t0,    0(a0)                      #load byte desde a0. Puntero
    jal 	checkchar
    addi    a0,    a0,    1                   #else: mueve indice al siguiente
    addi    v0,    v0,    1                   #len++
    j       strlen_loop

checkchar:
	blt		t0, 97,		 return
	bgt		t0, 122,	 return
	jr		ra

	
return:
	lw 		gp,		28(sp)
	lw 		$fp,	24(sp)
	lw 		ra,		32(sp) 
	addu    sp,    	sp,    40                   
    jr      ra      


.end getwordlen
