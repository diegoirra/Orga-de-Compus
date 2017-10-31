#define _POSIX_C_SOURCE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "getch.h"

#define SUCCESS 0
#define ERROR_INPUT_FILE 1
#define ERROR_OUTPUT_FILE 2
#define BUFFER_TAM 4


int main(int argc, char** argv) {

    char buffer[BUFFER_TAM];
    printf("Ingresar chars. Tam=%d\n", BUFFER_TAM);

    int v0 = getch(1, BUFFER_TAM, buffer);

    printf("getch result: %d\n", v0);

//    free(buffer);

    return SUCCESS;
}
