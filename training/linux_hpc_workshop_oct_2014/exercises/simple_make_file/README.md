In this example you will compile a c program using make.

    $ make -f Makefile
    gcc -c simple_make_file.c
    gcc -o simple_make_file simple_make_file.o
    $./simple_make_file
    Simple make file compiled properly!

Now try make once again

    $ make
    $ make: `simple_make_file' is up to date.

This is because the soure-file simple_make_file.c has not bean modified.
Now modify the line `printf("Simple make file compiled properly!\n");` to
'printf("Simple make file modified properly!\n");' and save the file.
Try make again. You will see that make does the compilation process again

    $ make
    gcc -c simple_make_file.c
    gcc -o simple_make_file simple_make_file.o
    $./simple_make_file
    Simple make file modified properly!
