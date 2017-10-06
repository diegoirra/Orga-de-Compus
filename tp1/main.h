#ifndef MAIN_H_
#define MAIN_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "main.h"
#include "is_pal.h"
#include "mymalloc.h"


/* Valores posibles de ERRNO para chequear error:
 *
 * www.virtsync.com/c-error-codes-include-errno
 *
 * Valores que puede tomar ERRNO con fopen:
 * http://man7.org/linux/man-pages/man3/fopen.3.html#ERRORS
 *
 * Valores que puede tomar ERRNO con fclose:
 * http://man7.org/linux/man-pages/man3/fclose.3.html#ERRORS
 */

#define SUCCESS 0
#define ERROR_INPUT_FILE 1
#define ERROR_OUTPUT_FILE 2

#define VERSION "2"
#define MAX_LINE_LENGTH 256

#define INPUT_BUFFER_DEFAULT 1
#define OUTPUT_BUFFER_DEFAULT 1
#define INPUT_FILE_DEFAULT NULL
#define OUTPUT_FILE_DEFAULT NULL


/*
 * Imprime la version actual del proyecto
 * Sin retorno.
 */
void print_version();

/*
 * Imprime los parametros aceptados al ejectuar el programa por linea de comandos
 * Sin retorno.
 */
void print_usage();

/*
 * >>>>>>>>>>> Implementada en ASM MIPS32
 * Identifica, procesa e imprime los componentes lexicos que resulten ser palindromos.
 * PARAMETROS: ifd y ofd los descriptores abiertos de los archivos deentrada y salida respectivamente.
 * 			   ibytes y obytes describen los tama˜nos en bytes de las unidades de transferencia
 * 			   de datos desde y hacia el kernel de NetBSD
 * RETORNO: int booleano correspondiente al exito de la funcion.
 */
int palindrome(int ifd, size_t ibytes, int ofd, size_t obytes);

/*
 * Evalua si la palabra pasada por parametro es un palindromo
 * PARAMETRO: puntero a cadena de chars 'word' a evaluar
 * RETORNO: int booleano correspondiente a si la palabra es palindromo:
 * 			1 para true, 0 para false.
 */
//int is_pal(char* word);


/*
 * Procesa los archivos de entrada y salida pasados por parametros, o asigna los
 * standard inout o output si no fueran dados.
 * PRAMETROS: dos punteros a cadenas de caracteres corespondientes a nombres de archivos
 * 			  de input y output. De ser NULL, se tomara el archivo standard.
 * 			  dos enteros representantes de bytes para los buffers de input y output
 * Sin retorno.
 */
void handle(char* input_file_name, char* output_file_name, int ibuffer, int obuffer);

/*
 * Main para ejecutar el programa. Toma los paramétros agregados en la linea de comando.
 * RETORNO: código int SUCCES definido como 1.
 */
int main(int argc, char** argv);

#endif /* MAIN_H_ */


