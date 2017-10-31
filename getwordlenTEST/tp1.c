
#define _POSIX_C_SOURCE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "getwordlen.h"
#include "putch.h"

#define SUCCESS 0
#define ERROR_INPUT_FILE 1
#define ERROR_OUTPUT_FILE 2
#define BUFFER_TAM 4


int main(int argc, char** argv) {

	char* buf = "this is a getword test\n";

	int v0 = getwordlen(buf);

	printf("word detected: \n");

	int i;
	for (i=0; i<v0; i++){
		printf("%c", buf[i]);
	}
	printf("\n");

    return SUCCESS;
}
