#include <mips/regdef.h>
#include <sys/syscall.h>

    .text
    .abicalls
    .global palindrome
    .ent palindrome
	
palindrome:
    .frame $fp, 48, ra
    .set noreorder
    .cpload t9
    .set reorder

    subu    sp,		sp,		48              #guardo 16 bytes sra (gp, fp, ra, padding), 16 bytes aba, 16 bytes reg s
    .cprestore 44
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
    move    s4,     v0                      #guardo puntero al buffer en s4
        
    move    a0,     s0                      #input file primer parametro del getch
    move    a1,     s1                      #tam buffer segundo parametro del getch
    move    a2,     s4                      #puntero al buffer tercer parametro de getch
	jal     getch						

    li      a0,     4096                    #buffer interno grande
    jal     mymalloc                        #pide la memoria de ese buffer
    move    s5,     v0                      #guarda puntero al buffer interno en s5

    move    a0,     s4                      #vamos a obtener tam de la proxima palabra
    jal     getwordlen
    move    a0,     v0                      #guardo resultado como primer param de strcopy

    move    a1,     s4                      #buffer a copiar, segundo parametro
    move    a2,     s5                      #buffer donde debe copiar, tercer parametro
    jal     strcopy

    move    a0,     s5                      #llamada a is_pal, con el buffer interno
    jal     is_pal
    beqz    v0,     return_to_main


print:
    lw      a0,     56($fp)                 #fd output file primer parametro del putch
    lw      a1,     60($fp)                 #tam buffer a imprimir segundo parametro del putch
    move    a2,     s5                      #buffer a imprimir tercer parametro del putch
    jal     putch    

    jal     return_to_main


return_to_main:
    lw      ra,     36(sp)                     
    lw      $fp,    40(sp)
    lw      gp,     44(sp)
    addu    sp,     sp,    48                   
    jr      ra                

.end palindrome
