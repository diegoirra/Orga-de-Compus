#define _POSIX_C_SOURCE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "is_pal.h"

#define SUCCESS 0
#define ERROR_INPUT_FILE 1
#define ERROR_OUTPUT_FILE 2


int main(int argc, char** argv) {

	char* word = "bob";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "notapal";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "palWlap";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "PALwlap";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "pal_lap";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "pal-lap";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "1pal-LAP1";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "1_pal-LAP_1";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "1pa-wew-AP1";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "1_pal-LAP_1";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    word = "1_pal-LBP_1";
    printf("is_pal: %s? %d \n", word, palindrome(word));

    return SUCCESS;
}
