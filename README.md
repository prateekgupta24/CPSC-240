# CPSC-240-Computer-Organization-Assembly-Language
Preface

In the previous assignment you learned to manage the I/O of arrays of char.  In this assignment you learn how to manage the I/O of 64-bit float numbers.



Basic requirements

Make a program satisfying the structure given in the diagram that follows.   The application purpose of the program is that you input  the lengths of two sides of a right triangle and your program outputs some computed values, namely, the area and the length of the hypotenuse.

The academic purpose of this program is that you experience how to input a float in assembly and how to output a float number with proper formatting.  There are no integers in this assignment.


Calling structure

The system structure has three files as shown in the diagram above.  Each rectangle represents one file.  Inside of each rectangle is the name of the file and the language of the rectangle.  The name of the language is usually in smaller font.

The top level file begins the execution of the system.  Its job is to welcome the user in a friendly manner.  Typically the top level file does not know what the file below it is doing.

C language is required for the top level.

The file r.sh is written in bash.



Sample dialog with the program

Welcome to the Right Triangles program maintained by Juan Diaz.

If errors are discovered please report them to Juan Diaz at juan@columbia.com  for a quick fix.  At Columbia Software the customer comes first.

Please enter your last name:  Finkelstein

Please enter your title (Mr, Ms, Nurse, Engineer, etc):  Fishmonger

Please enter the sides of your triangle separated by ws:  3.95   4.61

The area of this triangle is 9.10475 square units

The length of the hypotenuse is 6.070798959 units.

Please enjoy your triangles Fishmonger Finkelstein.

The main function received this number  6.0708 and plans to keep it.

An integer zero will be returned to the operating system.  Bye.

------------------------------------------------------------------------------------------------------------

Legend.  The text in light blue is output from the welcome pythagoras module written in C.

The text in yellow is output from the triangle module (X86).

The text in pink is input from the keyboard.



The requirements of this program

The calling structure diagram must be preserved.  That means pythagoras must call triangle.

An essential ingredient of assembly programming is commonly called block structuring.  That is the practice of grouping instructions that jointly accomplish a single purpose.  Block structuring of X86 source code is seen in all the posted examples.  The purpose of each block is shown in the comments.

The program must run without seg faults.

The two source files must carry the proper correct open source license.

The two source files must carry the professional identification in areas of author, program, and module

Comments are your own words.  You may borrow the source statements, but at least enter comments that you create, and therefore, you understand.

It is ok to copy executable source code from other programs found on the web, but don’t copy the comments found on the web.  Create your own comments.  You must personalize the program to make it your own.
