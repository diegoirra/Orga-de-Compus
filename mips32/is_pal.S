#include <mips/regdef.h>
#include <sys/syscall.h>
#include "is_pal.h"

.text
.align 2
.ent is_pal_mips32
.globl is_pal_mips32

is_pal_mips32:
	li v0, 1
	jr ra
	.end
