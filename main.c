#include <stdio.h>

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
	print_usage();
	return 0;
}
