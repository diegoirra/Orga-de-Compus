
#define _POSIX_C_SOURCE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "clear_buf.h"

#define SUCCESS 0


int main(int argc, char** argv) {

	char* buf = "this is a clear_buf test\n";

	clear_buf(buf);

	printf("buf result: %s\n", buf);

    return SUCCESS;
}
