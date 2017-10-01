#include "is_pal_mips32.h"

int main(int argc, char** argv) {
	int is_pal = is_pal_mips32("bob");
	printf("%d\n", is_pal);
	return 0;
}
