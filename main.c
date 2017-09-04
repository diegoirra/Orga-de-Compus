#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

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

int es_palindromo(char* word){
	int i, j;
    int es_palindromo = 1;
	j = strlen(word)-1;
    for(i=0; i< (strlen(word)/2); i++, j--) {
    	if (tolower(word[i]) != tolower(word[j])) {
    		es_palindromo = 0;
            break;
        }
    }
    return es_palindromo;
}

void handle(char* input_file_name, char* output_file_name) {

	FILE *in_f;
	FILE *out_f;
	if (input_file_name!=NULL){
		in_f = fopen( input_file_name, "r" );
		if (in_f==NULL) {fputs ("Input file not in directory",stderr); exit (1);}
		printf("input: %s\n", input_file_name);
	}
	else {fputs ("NO INPUT PROVIDED",stderr); exit(1);}

	if (output_file_name!=NULL && strcmp(output_file_name, "-") != 0){
		out_f = fopen( output_file_name, "w" );
		printf("output: %s\n", output_file_name);
	}
	else {
		out_f = stdout;
		printf("output: terminal\n");
	}


    char word[30];
    while (fscanf(in_f, " %30s", word) == 1) {
    	if (es_palindromo(word)==1){
    		fputs(word, out_f);
    		fputs("\n", out_f);
    	}
    }

	fclose(in_f);
	// fclose(out_f);
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

	return SUCCESS;
}
