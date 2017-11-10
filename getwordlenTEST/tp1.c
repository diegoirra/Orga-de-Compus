
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

void print_result(char* buf, int v0){


	printf("word detected: \n");

	int i;
	for (i=0; i<v0; i++){
		printf("%c", buf[i]);
	}
	printf("\n");
	printf("%d\n", v0);
	printf("\n");
}


int main(int argc, char** argv) {

	char* buf = "thisnigga is a getword test\n";
	int v0 = getwordlen(buf);

	print_result(buf, v0);

	buf = "Detect thisw ord";
	v0 = getwordlen(buf);
	print_result(buf, v0);

	buf = "te-st thisw ord";
	v0 = getwordlen(buf);
	print_result(buf, v0);

	buf = "De_test thisw ord";
	v0 = getwordlen(buf);
	print_result(buf, v0);

	buf = "Test0123 thisw ord";
	v0 = getwordlen(buf);
	print_result(buf, v0);

	buf = "Test23 thisw ord";
	v0 = getwordlen(buf);
	print_result(buf, v0);

    return SUCCESS;
}
