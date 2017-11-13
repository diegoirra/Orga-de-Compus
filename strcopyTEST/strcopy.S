#include <mips/regdef.h>

.text
.abicalls
.align 2
.global strcopy
.ent strcopy

strcopy:
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

	#a0 = bytes to be copied
	#a1 = pointer src
	#a2 = pointer dst

	li 		v0,		0							#return value: bytes copied
loop:
	beq		v0,		a0,		return				#if B copied == B to be: return
	lb		t1,		0(a1)						#else:cargo byte en t1
	sb		t1,		0(a2)						#	  lo guardo en dst

	addi	a1,		a1,		1
	addi	a2,		a2,		1					#next index
	addi	v0,		v0,		1
	j		loop

return:
    lw      gp,     12(sp)
    lw      $fp,    8(sp)
    lw      ra,     4(sp)
    addu    sp,     sp,    16
    jr      ra

.end strcopy
