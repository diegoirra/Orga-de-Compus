#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SUCCESS 0
#define VERSION "1.0"

void print_version() {
	printf("%s\n", VERSION);
}


void print_usage() {
	printf("Usage:\n");
	printf("\ttp0 -h\n");
	printf("\ttp0 -V\n");
	printf("\ttp0 [options]\n");
	printf("Options:\n");
	printf("\t-V, --version\tPrint version and quit.\n");
	printf("\t-h, --help\tPrint this information.\n");
	printf("\t-i, --input\tLocation of the input file.\n");
	printf("\t-o, --output\tLocation of the output file.\n");
	printf("Examples:\n");
	printf("\ttp0 -i ~/input -o ~/output\n");
}

void handle(char* input_file_name, char* output_file_name) {
	printf("input: %s\n", input_file_name);
	printf("output: %s\n", output_file_name);
	exit(SUCCESS);
} 

int main(int argc, char** argv) {

	if(argc == 1) {
		handle(NULL, NULL);
	}

	if(argc == 3) {

		if(strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help")==0) {
			print_usage();
		}

		if(strcmp(argv[1], "-V") == 0 || strcmp(argv[1], "--version")==0) {
			print_version();
		}

		if(strcmp(argv[1], "-i") == 0) {
			handle(argv[2], NULL);
		}

		if(strcmp(argv[1], "-o") == 0) {
			handle(NULL, argv[2]);
		}
	}

	if(argc == 5) {

		if(strcmp(argv[1], "-i") == 0 && strcmp(argv[3], "-o") == 0) {
			handle(argv[2], argv[4]);
		}

		if(strcmp(argv[1], "-o") == 0 && strcmp(argv[3], "-i") == 0) {
			handle(argv[4], argv[2]);
		}
	}

	print_usage();

	return 0;
}
