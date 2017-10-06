#include "main.h"
#include "is_pal.h"
#include "mymalloc.h"

void print_version() {
	printf("%s\n", VERSION);
	exit(SUCCESS);
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
	printf("\t-I, --ibuf-bytes\tByte-count of the input buffer\n");
	printf("\t-O, --obuf-bytes\tByte-count of the output buffer\n");

	printf("Examples:\n");
	printf("\ttp0 -i ~/input -o ~/output\n");
	exit(SUCCESS);
}

//int is_pal(char* word){
//	unsigned int i, j;
//	int is_pal = 1;
//	j = strlen(word)-1;
//	for(i=0; i< (strlen(word)/2); i++, j--) {
//		if (tolower(word[i]) != tolower(word[j])) {
//			is_pal = 0;
//			break;
//		}
//	}
//	return is_pal;
//}

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

void handle(char* input_file_name, char* output_file_name, int input_buffer, int output_buffer) {

	FILE* in_f;
	FILE* out_f;

	if (input_file_name != NULL){
		in_f = fopen( input_file_name, "r" );
		if (in_f == NULL) {
			fprintf(stderr, "ERROR:\nNo se pudo abrir el archivo de entrada: %s\n", input_file_name);
			perror("Saliendo con error"); //revisar errores más especifico que perror?
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


	char line[MAX_LINE_LENGTH];
	while (fgets(line, sizeof(line), in_f)) {
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

	char* ifile = INPUT_FILE_DEFAULT;
	char* ofile = OUTPUT_FILE_DEFAULT;
	int ibuffer = INPUT_BUFFER_DEFAULT;
	int obuffer = OUTPUT_BUFFER_DEFAULT;

    for (int i = 1; i < argc-1; i++){
		if(strcmp(argv[i], "-V") == 0 || strcmp(argv[i], "--version")==0){
			print_version();
		}
        if (strcmp(argv[i], "-h")==0 || strcmp(argv[i], "--help")==0){
        	print_usage();
        }
		if(strcmp(argv[i], "-i") == 0 && strcmp(argv[i], "--input") == 0){
			if (strcmp(argv[i+1],"-")!=0)
				ifile = argv[i+1];
		}
		if(strcmp(argv[i], "-o") == 0 && strcmp(argv[i], "--output") == 0){
			if (strcmp(argv[i+1],"-")!=0)
				ofile = argv[i+1];
		}
		if(strcmp(argv[i], "-I") == 0 && strcmp(argv[i], "--ibuf-bytes") == 0){
			ibuffer = atoi(argv[i+1]);
		}
		if(strcmp(argv[i], "-O") == 0 && strcmp(argv[i], "--obuf-bytes") == 0){
			obuffer = atoi(argv[i+1]);
		}
		// habría que revisar errores? Si no en los argumentos pasados,
		// el print usage por defecto por lo menos
    }
    handle(ifile, ofile, ibuffer, obuffer);
	return SUCCESS;
}
