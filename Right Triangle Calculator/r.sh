#!/bin/bash

#Program: Right Triangle Area Calculator
#Author: P. Gupta

rm *.o
rm *.out

echo "The script file for Right Triangle Area Calculator has begun"

echo "Assemble triangle.asm"
nasm -g -F dwarf -f elf64 -l triangle.lis -o triangle.o triangle.asm

echo "Compile pythagoras.c"
gcc -c -g -Wall -m64 -no-pie -o pythagoras.o pythagoras.c -std=c11

echo "Link the object files"
gcc -m64 -no-pie -o math.out -std=c11 triangle.o pythagoras.o

echo "Run the program Right Triangle Area Calculator:"
./math.out

echo "Have a nice day.  Main will now return 0 to the operating system."
