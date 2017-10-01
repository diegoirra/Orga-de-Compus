#include <mips/regdef.h>

.text
.align 2
.ent is_pal_mips32
.globl is_pal_mips32

is_pal_mips32:
	li v0, 1
	jr ra
	.end
