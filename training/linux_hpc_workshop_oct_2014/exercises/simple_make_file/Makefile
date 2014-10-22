CC=gcc

simple_make_file:simple_make_file.o
	$(CC) -o simple_make_file simple_make_file.o
simple_make_file.o:simple_make_file.c
	$(CC) -c simple_make_file.c

clean:
	rm simple_make_file simple_make_file.o
