
#define _POSIX_C_SOURCE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "strcopy.h"

#define SUCCESS 0
#define ERROR_INPUT_FILE 1
#define ERROR_OUTPUT_FILE 2
#define BUFFER_TAM 17


int main(int argc, char** argv) {

	char* in = "Test1ng string copy";
	char copy[BUFFER_TAM];

	int v0 = strcopy(BUFFER_TAM, in, copy);

	printf("bytes copied: %d\n", v0);
	printf("string copied: %s\n", copy);


    return SUCCESS;
}
