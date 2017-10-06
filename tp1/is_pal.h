#ifndef __IS_PAL_MIPS32_TEST_H__
#define __IS_PAL_MIPS32_TEST_H__

/*
 * >>>>>>>>>>> Implementada en ASM MIPS32
 * Identifica, procesa e imprime los componentes lexicos que resulten ser palindromos.
 * PARAMETROS: ifd y ofd los descriptores abiertos de los archivos deentrada y salida respectivamente.
 * 			   ibytes y obytes describen los tama˜nos en bytes de las unidades de transferencia
 * 			   de datos desde y hacia el kernel de NetBSD
 * RETORNO: int booleano correspondiente al exito de la funcion.
 */
int palindrome(int ifd, size_t ibytes, int ofd, size_t obytes);

#endif
