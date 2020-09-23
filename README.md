# CPSC-240-Computer-Organization-Assembly-Language

2020 Fall CPSC 240
Assignment 1: Circumference of Circle



Brief statement

Make a program that will compute the approximate circumference of a circle using only integers.


General statement

Make a program that will accept as input an integer representing the radius of a circle.  Compute the area of the circle with that radius.  The ancient Egyptians computed the value of π to be 22/7, which is a value composed of two integers.  With the technology of that time period, this fraction was the best value they could compute for π.  Use the Egyptian value for  π to complete this assignment.

To be absolutely clear your program will use only integer data.  It will compute the circumference of a circle using the Egyptian value of π.


Modular structure of the program















The C++ program egyptian (main) calls the X86 program (circle), but main does not pass any data to circle.  “main” calls “circle”; “main” does not send any data to “circle”.  However, near the end of the execution “circle” sends the whole number answer back to “main”.

Because this program does not use any floating point values, the final output will not be mathematically correct.  It will only be correct according to calculations that would have been done by ancient Egyptians.
Sample run

Welcome to your friendly circle circumference calculator.
The main program will now call the circle function.
This circle function is brought to you by William .
Please enter the radius of a circle in whole number of meters:  6
The number 6 was received.
The circumference of a circle with this radius is 18 and 6/7 meters.
The integer part of the area will be returned to the main program.  Please enjoy your circles.
The main received this integer: 18
Have a nice day.  Main will now return 0 to the operating system.





The text with yellow background is produced by the X86 function.  The text outside the yellow area is produced by the main function.  Often we refer to the main function as the “driver function”.  The driver function is not involved with the solution of the application problem other than to simply call the function that does solves the problem.

When you create this program, replace the fake name shown above with your real name.

The file named run.sh is written in bash script language.  Its only purpose is to rapidly compile the two source files and run the program.

The word “program” refers to the collection of all 3 files.  Each of the individual files within the program may be called a “module” or a “function”.

Think of a name for each program you create in any course.  The name should be descriptive of what the program does, and the name should have reasonable length.  About 40 characters is an upper limit for the length of a program name.  Create a folder on your computer with the name of the program.  In that folder collect all files related to the program you are developing.
What to do when you are done

Test the program with small integer inputs such as 3, 4, 7, and 10.

Try to break the program: try entering 900 million, 17 billion, or even larger inputs.  The program has broken when it produces a junk answer.  For example, if the computed area is negative then it is broken (for that one input).  What is the largest integer radius your program can handle correctly?


This is a voluntary assignment.

This is an extra credit assignment.  The grading system was explained in the first or second class meeting of this semester.

Here are your options:

1.  You may choose to omit this elementary assignment.  Perhaps you don’t need extra credit because you are already an A-level programmer in computer languages in general.  Omission of an assignment will not reduce your final letter grade.

2.  You may choose to do part of this program and keep your program on your computer for use during test day.

3.  You may choose to make your program meet the requirements of a “professional program”.  It has to produce expected mathematical answers for all inputs.  It must carry an open source license.  It must be document at the level of assembly documentation.  It has to assemble and run in bash from a script file.  When you have a professional program you may send all the individual files of the program to the professor.  I will read your program and test run it in a derivative of Debian.

There are many derivatives of Debian such as MX, Ubuntu, Lubuntu, Kubuntu, Mythbuntu, Mint, Kali, Tuffix, and many others.  I believe that the Windows Subsystem for Linux is a derivative of Debian, but I have not found an online authority to collaborate that claim.

Hopefully, your program passes at the 100% level.  Send the files to me as attachments at holliday@ fullerton.edu.  Each person is allowed one submission for credit.

Measure your own progress:  If you finish this assignment by September 10, 2020 then you are making normal progress in the course.



Last date submission accepted for extra credit:  October 1, 2020.
If you are submitting a file of source code seeking debugging help during office hours, then place in the subject area a description such as “need help with integer input”.  Tell me something that indicates that you are seeking assistance and are not submitting a program for credit.

If you are submitting a program for credit, place in the subject line a message such as “Assignment 1 submitted for credit”.
