#include <stdio.h>
#include <string.h>

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

int main(int argc, char** argv) {

	if(argc != 2 && argc != 5)
		print_usage();

	if(argc == 2) {

		if(strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help")==0) {
			print_usage();
		}

		if(strcmp(argv[1], "-V") == 0 || strcmp(argv[1], "--version")==0) {
			print_version();
		}
	}
	return 0;
}
