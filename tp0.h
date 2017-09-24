/*
 * tpo.h
 *
 *  Created on: 24 sep. 2017
 *      Author: Diego
 */

#ifndef TP0_H_
#define TP0_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>

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
#define VERSION "1.5"

/*
 * Imprime la versión actual del proyecto
 * Sin retorno.
 */
void print_version();

/*
 * Imprime los parametros aceptados al ejectuar el programa por linea de comandos
 * Sin retorno.
 */
void print_usage();

/*
 * Evalúa si la palabra pasada por parametro es un palindromo
 * PARAMETRO: puntero a cadena de chars 'word' a evaluar
 * RETORNO: int booleano correspondiente a si la palabra es palindromo:
 * 			1 para true, 0 para false.
 */
int es_palindromo(char* word);


/*
 * Procesa los archivos de entrada y salida pasados por parametros, o asigna los
 * standard inout o output si no fueran dados.
 * PRAMETROS: dos punteros a cadenas de caracteres corespondientes a nombres de archivos
 * 			  de input y output. De ser NULL, se tomará el archivo standard.
 * Sin retorno.
 */
void handle(char* input_file_name, char* output_file_name);

/*
 * Main para ejecutar el programa. Toma los paramétros agregados en la linea de comando.
 * RETORNO: código int SUCCES definido como 1.
 */
int main(int argc, char** argv);

#endif /* TP0_H_ */
