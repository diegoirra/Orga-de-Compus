
#define _POSIX_C_SOURCE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "putch.h"

#define SUCCESS 0


int main(int argc, char** argv) {

	char* buf = "this is a putch test\n";

	int v0 = putch(1, 20, buf);

	printf("putch result: %d\n", v0);

    return SUCCESS;
}
