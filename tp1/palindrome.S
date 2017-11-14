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

    subu    sp,		sp,		64              #guardo 16 bytes sra (gp, fp, ra, padding), 16 bytes aba, 16 bytes reg s
    .cprestore 60
    sw      $fp,	56(sp)                      
    sw      ra,		52(sp)
    move    $fp,	sp                  

    move    s0,     a0                      #fd input file
    move    s1,     a1                      #guardo input buffer tam
    move    s2,     a2                      #fd output file
    move    s3,     a3                      #output buffer tam

    move    a0,     s1
    jal     save_regs                       #guardo los regs s
    jal     mymalloc                        #creo buffer de entrada
    jal     restore_regs                    #restauro regs s
    move    s4,     v0                      #guardo puntero al buffer de entrada en s4

    move    a0,     s3
    jal     save_regs                       #guardo los regs s
    jal     mymalloc                        #creo buffer de salida
    jal     restore_regs                    #restauro regs s
    move    s5,     v0                      #guardo en s5 buffer de salida
    sw      s5,     64($fp)                 #guardo el puntero al principio del buffer
        
    li      a0,     4096                    #buffer interno grande
    jal     save_regs                       #guardo los regs s
    jal     mymalloc                        #pide la memoria de ese buffer
    jal     restore_regs                    #restauro regs s
    move    s6,     v0                      #guarda puntero al buffer interno en s6

    li      s7,     0                       #en s7 mantengo cuantos bytes ya guarde en buf de salida

get_words:                                  #loop para obtener palabras del archivo
    move    a0,     s0                      #input file primer parametro del getch
    move    a1,     s1                      #tam buffer segundo parametro del getch
    move    a2,     s4                      #puntero al buffer tercer parametro de getch
    jal     save_regs                       #guardo los regs s
    jal     getch                       
    jal     restore_regs                    #restauro regs s
    beqz    v0,     end
    addu    s0,     v0,     s0              #adelanto el puntero a fd

get_next_len:                               #loop para obtener len de la siguiente palabra
    lb      t0,     0(s4)
    beqz    t0,     get_words               #se llego al final del buffer de entrada, hay que cargarlo nuevamente TODO: VER SI ES BLTZ

    move    a0,     s4                      #vamos a obtener tam de la proxima palabra
    jal     save_regs                       #guardo los regs s
    jal     getwordlen
    jal     restore_regs                    #restauro regs s

    move    a0,     v0                      #guardo resultado como primer param de strcopy
    move    a1,     s4                      #buffer a copiar, segundo parametro
    move    a2,     s6                      #buffer donde debe copiar, tercer parametro
    jal     save_regs                       #guardo los regs s
    jal     strcopy
    jal     restore_regs                    #restauro regs s
    addu    s4,     v0,     s4              #adelanto buffer de entrada
    addi    s4,     s4,     1

    move    a0,     s6                      #llamada a is_pal, con el buffer interno
    jal     save_regs                       #guardo los regs s
    jal     is_pal
    jal     restore_regs                    #restauro regs s
    beqz    v0,     get_next_len            #si no es pal retorno al main

save_words:                                 #guardar palabras a imprimir en buffer de salida
    move    a0,     s6                      
    jal     save_regs                       #guardo los regs s
    jal     getwordlen                      #obtengo len de la palabra a guardar en buf de salida
    jal     restore_regs                    #restauro regs s
    
    move    a0,     v0                      #preparo parametros strcopy
    move    a1,     s6
    move    a2,     s5
    jal     save_regs                       #guardo los regs s
    jal     strcopy                         #copio la palabra en el buffer de salida
    jal     restore_regs                    #restauro regs s
    addu    s5,     v0,     s5              #adelanto buffer de salida

    addu    s7,     v0,     s7              #sumo bytes copiados a s7
    bgt     s7,     s3,     print           #si llegue a la cant de bytes del buf de salida imprimo

print:
    move    a0,     s2                      #fd output file primer parametro del putch
    move    a1,     s3                      #tam buffer a imprimir segundo parametro del putch
    lw      a2,     64($fp)                 #buffer a imprimir tercer parametro del putch
    jal     save_regs                       #guardo los regs s
    jal     putch    
    jal     restore_regs                    #restauro regs s

    jal     get_next_len

end:
    move    a0,     s2                      #fd output file primer parametro del putch
    move    a1,     s3                      #tam buffer a imprimir segundo parametro del putch
    lw      a2,     64($fp)                 #buffer a imprimir tercer parametro del putch
    jal     save_regs                       #guardo los regs s
    jal     putch    
    jal     restore_regs                    #restauro regs s
    
    jal     return


save_regs:
    sw      s0,     48(sp)
    sw      s1,     44(sp)
    sw      s2,     40(sp)
    sw      s3,     36(sp)
    sw      s4,     32(sp)
    sw      s5,     28(sp)
    sw      s6,     24(sp)
    sw      s7,     20(sp)
    jr      ra

restore_regs:
    lw      s0,     48(sp)
    lw      s1,     44(sp)
    lw      s2,     40(sp)
    lw      s3,     36(sp)
    lw      s4,     32(sp)
    lw      s5,     28(sp)
    lw      s6,     24(sp)
    lw      s7,     20(sp)
    jr      ra

return:
    move    a0,     s4
    jal     myfree

    move    a0,     s5
    jal     myfree

    move    a0,     s6
    jal     myfree

    lw      ra,     52(sp)                     
    lw      $fp,    56(sp)
    lw      gp,     60(sp)
    addu    sp,     sp,    64                   
    jr      ra                

.end palindrome
