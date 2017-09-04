CC=gcc
CLFAGS := -g -std=c99 -Wall -Wextra -Wpedantic
INPUT=main.c
OUTPUT=tp0

compile:
	$(CC) $(CLFAGS) -o $(OUTPUT) $(INPUT) 
	objdump -S tp0 >tp0.asm

clean:
	rm $(OUTPUT)

