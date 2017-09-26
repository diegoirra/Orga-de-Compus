#include "tp0.h"

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

int is_pal(char* word){
	unsigned int i, j;
	int is_pal = 1;
	j = strlen(word)-1;
	for(i=0; i< (strlen(word)/2); i++, j--) {
		if (tolower(word[i]) != tolower(word[j])) {
			is_pal = 0;
			break;
		}
	}
	return is_pal;
}

void chomp(char* s) {
	if(s[strlen(s) - 1] == '\n') {
		s[strlen(s) - 1] = '\0';
	}
}

void handle_line(char* line, FILE* out_f) {
	char* word = strtok(line, " ");
	while (word) {
		chomp(word);
		if(is_pal(word)) {
			fputs(word, out_f);
			fputs("\n", out_f);
		}			
		word = strtok(NULL, " ");	
	}
}

void handle(char* input_file_name, char* output_file_name) {

	FILE *in_f;
	FILE *out_f;

	if (input_file_name != NULL && strcmp(input_file_name, "-") != 0) {
		in_f = fopen( input_file_name, "r" );

		if (in_f == NULL) {
			fprintf(stderr, "ERROR:\nNo se pudo abrir el archivo de entrada: %s\n", input_file_name);
			perror("Saliendo con error");
			exit(ERROR_INPUT_FILE);
		}
	} else { 
		in_f = stdin;
	}

	if (output_file_name!=NULL && strcmp(output_file_name, "-") != 0) {
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

	char* line = NULL;
	size_t len = 0;
 	while (getline(&line, &len, in_f) != -1) {
		handle_line(line, out_f);
	}

	if(in_f != NULL && in_f != stdin) {
		fclose(in_f);
	}

	if(out_f != NULL && out_f != stdout) {
		fclose(out_f);
	}

	exit(SUCCESS);
}

int main(int argc, char** argv) {

	if(argc == 1) {
		handle(NULL, NULL);

	} else if (argc == 2) {
		if(strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help")==0) {
			print_usage();
		}

		if(strcmp(argv[1], "-V") == 0 || strcmp(argv[1], "--version")==0) {
			print_version();
		}

	} else if(argc == 3) {
		if(strcmp(argv[1], "-i") == 0) {
			handle(argv[2], NULL);
		}

		if(strcmp(argv[1], "-o") == 0) {
			handle(NULL, argv[2]);
		}

	} else if(argc == 5) {
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
