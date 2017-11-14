#define _POSIX_C_SOURCE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "mymalloc.h"
#include "palindrome.h"

#define SUCCESS 0
#define ERROR_INPUT_FILE 1
#define ERROR_OUTPUT_FILE 2

#define VERSION "2"

#define INPUT_BUFFER_DEFAULT 24
#define OUTPUT_BUFFER_DEFAULT 24
#define INPUT_FILE_DEFAULT NULL
#define OUTPUT_FILE_DEFAULT NULL


#define SUCCESS 0

void print_version() {
	printf("%s\n", VERSION);
	exit(SUCCESS);
}

void print_usage() {
	printf("Usage:\n");
	printf("\ttp1 -h\n");
	printf("\ttp1 -V\n");
	printf("\ttp1 [options]\n");
	printf("Options:\n");
	printf("\t-V, --version\tPrint version and quit.\n");
	printf("\t-h, --help\tPrint this information.\n");
	printf("\t-i, --input\tLocation of the input file.\n");
	printf("\t-o, --output\tLocation of the output file.\n");
	printf("\t-I, --ibuf-bytes\tByte-count of the input buffer\n");
	printf("\t-O, --obuf-bytes\tByte-count of the output buffer\n");

	printf("Examples:\n");
	printf("\ttp1 -i ~/input -o ~/output\n");
	exit(SUCCESS);
}

void handle(char* input_file_name, char* output_file_name, int input_buffer, int output_buffer) {

	FILE* in_f;
	FILE* out_f;

	if (input_file_name != NULL){
		in_f = fopen( input_file_name, "r" );
		if (in_f == NULL) {
			fprintf(stderr, "ERROR:\nNo se pudo abrir el archivo de entrada: %s\n", input_file_name);
			perror("Saliendo con error"); //perror imprime el mensaje de error correspondiente al ERRNO
			exit(ERROR_INPUT_FILE);
		}
	}else
		in_f = stdin;

	if (output_file_name != NULL){
		out_f = fopen( output_file_name, "w" );
		if (out_f == NULL) {
			fprintf(stderr, "No se pudo abrir el archivo de salida: %s\n", output_file_name);
			perror("Saliendo con error");
			exit(ERROR_OUTPUT_FILE);
		}
	} else
		out_f = stdout;

	int result = palindrome(fileno(in_f), input_buffer, fileno(out_f), output_buffer);
	printf("%d\n", result);

	if(in_f != NULL && in_f != stdin) {
		fclose(in_f);
	}

	if(out_f != NULL && out_f != stdout) {
		fclose(out_f);
	}

	exit(SUCCESS);
}

int main(int argc, char** argv) {

	char* ifile = INPUT_FILE_DEFAULT;
	char* ofile = OUTPUT_FILE_DEFAULT;
	int ibuffer = INPUT_BUFFER_DEFAULT;
	int obuffer = OUTPUT_BUFFER_DEFAULT;

	int i;
    for (i = 1; i < argc; i++){
		if(strcmp(argv[i], "-V") == 0 || strcmp(argv[i], "--version")==0){
			print_version();
			exit(SUCCESS);
		}
        if (strcmp(argv[i], "-h")==0 || strcmp(argv[i], "--help")==0){
        	print_usage();
			exit(SUCCESS);
        }
		if(strcmp(argv[i], "-i") == 0 || strcmp(argv[i], "--input") == 0){
			if (strcmp(argv[i+1],"-")!=0)
				ifile = argv[i+1];
		}
		if(strcmp(argv[i], "-o") == 0 || strcmp(argv[i], "--output") == 0){
			if (strcmp(argv[i+1],"-")!=0)
				ofile = argv[i+1];
		}
		if(strcmp(argv[i], "-I") == 0 || strcmp(argv[i], "--ibuf-bytes") == 0){
			ibuffer = atoi(argv[i+1]);
		}
		if(strcmp(argv[i], "-O") == 0 || strcmp(argv[i], "--obuf-bytes") == 0){
			obuffer = atoi(argv[i+1]);
		}
    }
    printf("Parameters: %s, %s, %d, %d\n",ifile, ofile, ibuffer, obuffer);
    handle(ifile, ofile, ibuffer, obuffer);
	return SUCCESS;
}
