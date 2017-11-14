#include <mips/regdef.h>

.text
.abicalls
.align 2
.global clear_buf
.ent clear_buf

clear_buf:
    .frame $fp, 16, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,     sp,     16                  #save SRA
    .cprestore 12
    sw      $fp,    8(sp)                     
    sw      ra,     4(sp)
    move    $fp,    sp

    move    t0,     a0                          #buffer a limpiar
loop:
    lb      t1,     0(t0)
    beqz    t1,     return
    sb      zero,   0(t0)
    add     t0, t0, 1
    j       loop
    

return:
    lw      gp,     12(sp)
    lw      $fp,    8(sp)
    lw      ra,     4(sp) 
    addu    sp,     sp,    16                  
    jr      ra                        

.end clear_buf
