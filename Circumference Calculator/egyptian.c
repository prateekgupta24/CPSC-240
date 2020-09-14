/******************************************************************************************************************************
Program name: "Circumference Calculator".  This program demonstrates calculates the circumference of a circle.
Copyright ©️ All Rights Reserved 2020 Prateek Gupta                                               *
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License  *
Version 3 as published by the Free Software Foundation.                                                                    *
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied         *
Warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>.                           *
*****************************************************************************************************************************

Author information
  Author name: Prateek Gupta
  Author email: pgupta24@csu.fullerton.edu

Program information
  Program name: Circumference Calculator
  Programming languages: One modules in C and one module in X86
  Date program began:     2020-Aug-24
  Date program completed: 2020-Sept-09
  Files in this program: egyptian.c, circle.asm, r.sh
  Status: Complete.  No errors found after extensive testing.

Purpose
  To calculate the circumference of a circle

This file
   File name: egyptian.c
   Language: C
   Assemble: gcc -c -g -Wall -m64 -no-pie -o egyptian.o egyptian.c -std=c11
   Link: gcc -m64 -no-pie -o math.out -std=c11 circle.o egyptian.o */

//===== Begin code area ===========================================================================================================

#include <stdio.h>
#include <stdint.h>

long int circle();

int main()
{long int result_code = -999;
 result_code = circle();
 printf("%s%ld\n","The main received this integer: ",result_code);
 return 0;
}//End of main
