;*****************************************************************************************************************************
;Program name: "Circumference Calculator".  This program calculates the circumference of a circle.
;Copyright ©️ All Rights Reserved 2020 Prateek Gupta                                               *
;This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License  *
;version 3 as published by the Free Software Foundation.                                                                    *
;This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied         *
;Warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
;A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>.                           *
;*****************************************************************************************************************************

;Author information
;  Author name: Prateek Gupta
;  Author email: pgupta24@csu.fullerton.edu
;
;Program information
;  Program name: Circumference Calculator
;  Programming languages: One modules in C and one module in X86
;  Date program began:     2020-Aug-24
;  Date program completed: 2020-Sept-09
;  Files in this program: egyptian.c, circle.asm, r.sh
;  Status: Complete.  No errors found after extensive testing.
;
;Purpose
;  To calculate the circumference of a circle
;
;This file
;   File name: circle.asm
;   Language: X86-64 with Intel syntax
;   Assemble: nasm -g -F dwarf -f elf64 -l circle.lis -o circle.o circle.asm
;   Link: gcc -m64 -no-pie -o math.out -std=c11 circle.o egyptian.o



;===== Begin code area ===========================================================================================================


extern printf
extern scanf

;Declare constants
null equ 0
newline equ 10
pi_num equ 22
num equ 2
digit equ 7

global circle

segment .data

welcome db "Welcome to your Friendly Circle Circumference Calculator", newline, null
name db "This circle function is brought to you by Prateek", newline, null
promptforradius db "Please enter the radius of a circle in whole number of meters: ", null
stringoutputformat db "%s", 0
signedintegerinputformat db "%ld", null
circumferenceoutputformat db "The circumference of a circle with this radius is %ld", 10, 0
remainderformat db "The remainder is %ld", 10, 0
farewell db "The integer part of the area will be returned to the main program.  Please enjoy your circles", 10, 0


segment .bss                                      ;Uninitialized data are declared in this segment

;Empty segment: there are no un-initialized arrays.

segment .text                                     ;Instructions are placed in this segment
circle:                                          ;Entry point for execution of this program.

;Back up the general purpose registers for the sole purpose of protecting the data of the caller.
push rbp                                                    ;Backup rbp
mov  rbp,rsp                                                ;The base pointer now points to top of stack
push rdi                                                    ;Backup rdi
push rsi                                                    ;Backup rsi
push rdx                                                    ;Backup rdx
push rcx                                                    ;Backup rcx
push r8                                                     ;Backup r8
push r9                                                     ;Backup r9
push r10                                                    ;Backup r10
push r11                                                    ;Backup r11
push r12                                                    ;Backup r12
push r13                                                    ;Backup r13
push r14                                                    ;Backup r14
push r15                                                    ;Backup r15
push rbx                                                    ;Backup rbx
pushf                                                       ;Backup rflags

;There are 15 pushes above.  Make one more push of any value so that the number of pushes is an even number
push qword -1                                               ;Now the number of pushes is even
;Registers rax, rip, and rsp are usually not backed up.

;Output the welcome message
mov qword rdi, stringoutputformat
mov qword rsi, welcome
mov qword rax, 0
call printf

;Output name
mov qword rdi, stringoutputformat
mov qword rsi, name
mov qword rax, 0
call printf

;Prompt for the radius
mov qword rdi, stringoutputformat
mov qword rsi, promptforradius    ;place the address of prompt into rdi
mov qword rax, 0
call printf

;Input the radius
mov qword rdi, signedintegerinputformat
push qword -1
mov qword rsi, rsp
mov qword rax, 0
call scanf
pop qword r14

;defining variables
mov qword r12,pi_num
mov qword r11,num
mov qword r13, digit

;multiplication
mov qword rax, r14               ;r14 holds inputted number and is copying to rax
imul qword r12                   ;multiply rax with 22 leaving product in rax
imul qword r11                   ;multiply rax with 2 leaving product in rax

;division
idiv qword r13                   ;divide rax with 7
mov r13, rdx

;quotient is now in rax and remainder is in rdx

;show circumference
mov qword rdi, circumferenceoutputformat
mov qword rsi, rax
mov qword rdx, rax
mov qword rax, 0
call printf

;show remainder
mov qword rdi, remainderformat
mov qword rsi, r13
mov qword rdx, r13
mov qword rax, 0
call printf

;Output the farewell message
mov qword rdi, stringoutputformat
mov qword rsi, farewell
mov qword rax, 0
call printf

;Restore the original values to the general registers before returning to the caller.
pop rax                                                     ;Remove the extra -1 from the stack
popf                                                        ;Restore rflags
pop rbx                                                     ;Restore rbx
pop r15                                                     ;Restore r15
pop r14                                                     ;Restore r14
pop r13                                                     ;Restore r13
pop r12                                                     ;Restore r12
pop r11                                                     ;Restore r11
pop r10                                                     ;Restore r10
pop r9                                                      ;Restore r9
pop r8                                                      ;Restore r8
pop rcx                                                     ;Restore rcx
pop rdx                                                     ;Restore rdx
pop rsi                                                     ;Restore rsi
pop rdi                                                     ;Restore rdi
pop rbp                                                     ;Restore rbp

mov qword rax, 0                                  ;Return value 0 indicates successful conclusion.
ret                                               ;Pop the integer stack and jump to the address represented by the popped value.
