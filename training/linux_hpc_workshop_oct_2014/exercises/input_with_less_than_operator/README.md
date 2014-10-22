In this example you will learn how to pass input using `<` operator
Compile the program by

    $ g++ input.cpp -o input

First try the program without any arguments

    $ ./input
    $ Please enter a number : 1234.5
    $ Now enter another number :92034.8

    Thank you, the numbers you entered are 1234.5 and 92034.8


Now you can use the `<` operator to the same as follows

    $ ./input < my_input.txt
    Please enter a number :Now enter another number :
    Thank you, the numbers you entered are 1234.5 and 92034.8
