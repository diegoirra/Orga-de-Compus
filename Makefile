CC=gcc
INPUT=main.c
OUTPUT=tp0

compile:
	$(CC) -o $(OUTPUT) $(INPUT) 

clean:
	rm $(OUTPUT)

