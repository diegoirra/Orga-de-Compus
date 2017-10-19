#define _POSIX_C_SOURCE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include <unistd.h>

#define SUCCESS 0
#define ERROR_INPUT_FILE 1
#define ERROR_OUTPUT_FILE 2

#define VERSION "2"

#define INPUT_BUFFER_DEFAULT 1
#define OUTPUT_BUFFER_DEFAULT 1
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

char get_char(int fd, char* buffer, int* buffer_size_ptr, int* buffer_pos_ptr) {
	if(*buffer_pos_ptr == *buffer_size_ptr) {
		printf("trying to reading %d bytes to buffer...\n", *buffer_size_ptr);
		int read_bytes = read(fd, (void *)buffer, *buffer_size_ptr);
		printf("read %d bytes to buffer...\n", read_bytes);
		if(read_bytes < *buffer_size_ptr) {
			printf("Adjusting buffer size...\n");
			*buffer_size_ptr = read_bytes;
		}
		*buffer_pos_ptr = 0;
	}

	//printf("buffer contents: %s\n", buffer + *buffer_pos_ptr);

	return buffer[(*buffer_pos_ptr)++];
}

void put_char(int fd, char* buffer, int buffer_size, int* buffer_pos_ptr, char c) {
	if(*buffer_pos_ptr == buffer_size) {
		write(fd, (void *)buffer, buffer_size);
		*buffer_pos_ptr = 0;
	}

	buffer[(*buffer_pos_ptr)++] = c;
}

void palindrome(int in_fd, int input_buffer_size, int out_fd, int output_buffer_size) {
	char* input_buffer = (char*)malloc(sizeof(char)*input_buffer_size);
	//char* output_buffer = (char*)malloc(sizeof(char)*output_buffer_size);
	int input_buffer_pos = input_buffer_size;
	//int output_buffer_pos = output_buffer_size;

	while(input_buffer_size > 0) {
		printf("size: %d pos: %d\n", input_buffer_size, input_buffer_pos);
		char c = get_char(in_fd, input_buffer, &input_buffer_size, &input_buffer_pos);
		printf("%c\n", c);
	}
	free(input_buffer);
	//free(output_buffer);
}

void handle(char* input_file_name, char* output_file_name, int input_buffer_size, int output_buffer_size) {

	FILE* in_f;
	FILE* out_f;

	if (input_file_name != NULL){
		in_f = fopen( input_file_name, "r" );
		if (in_f == NULL) {
			fprintf(stderr, "ERROR:\nNo se pudo abrir el archivo de entrada: %s\n", input_file_name);
			perror("Saliendo con error"); //perror imprime el mensaje de error correspondiente al ERRNO
			exit(ERROR_INPUT_FILE);
		}
	}
	else {
		in_f = stdin;
	}

	if (output_file_name != NULL){
		out_f = fopen( output_file_name, "w" );
		if (out_f == NULL) {
			fprintf(stderr, "No se pudo abrir el archivo de salida: %s\n", output_file_name);
			perror("Saliendo con error");
			exit(ERROR_OUTPUT_FILE);
		}
	}
	else {
		out_f = stdout;
	}

	palindrome(fileno(in_f), input_buffer_size, fileno(out_f), output_buffer_size);

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
			if (strcmp(argv[i+1],"-")!=0) {
				ifile = argv[i+1];
			}
			i=i+1;
		}
		if(strcmp(argv[i], "-o") == 0 || strcmp(argv[i], "--output") == 0){
			if (strcmp(argv[i+1],"-")!=0) {
				ofile = argv[i+1];
			}
			i=i+1;
		}
		if(strcmp(argv[i], "-I") == 0 || strcmp(argv[i], "--ibuf-bytes") == 0){
			ibuffer = atoi(argv[i+1]);
			i=i+1;
		}
		if(strcmp(argv[i], "-O") == 0 || strcmp(argv[i], "--obuf-bytes") == 0){
			obuffer = atoi(argv[i+1]);
			i=i+1;
		}
  }

  handle(ifile, ofile, ibuffer, obuffer);
	return SUCCESS;
}
