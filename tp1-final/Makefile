CC=gcc
CFLAGS := -g -Wall
INPUT=tp1.c mymalloc.S is_pal.S getch.S getwordlen.S putch.S palindrome.S strcopy.S clear_buf.S
OUTPUT=tp1
TESTS_DIR=tests

compile:
	$(CC) $(CFLAGS) -o $(OUTPUT) $(INPUT) 

asm:
	$(CC) $(CFLAGS) -O0 -S $(INPUT)

test: compile
	./$(OUTPUT) -i $(TESTS_DIR)/test1.in > $(TESTS_DIR)/test1.res
	diff $(TESTS_DIR)/test1.out $(TESTS_DIR)/test1.res

	./$(OUTPUT) -i $(TESTS_DIR)/test2.in > $(TESTS_DIR)/test2.res
	diff $(TESTS_DIR)/test2.out $(TESTS_DIR)/test2.res

	./$(OUTPUT) -i $(TESTS_DIR)/test3.in > $(TESTS_DIR)/test3.res
	diff $(TESTS_DIR)/test3.out $(TESTS_DIR)/test3.res

	./$(OUTPUT) -i $(TESTS_DIR)/test4.in > $(TESTS_DIR)/test4.res
	diff $(TESTS_DIR)/test4.out $(TESTS_DIR)/test4.res

clean:
	rm -f $(OUTPUT)
	rm -f $(OUTPUT).s
	rm -f $(TESTS_DIR)/*.res
