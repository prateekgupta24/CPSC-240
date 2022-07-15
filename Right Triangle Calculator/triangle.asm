;*****************************************************************************************************************************
;Program name: "Right Triangle Area Calculator".  This program calculates the area of a right triangle.
;Copyright ©️ All Rights Reserved 2021                                              *
;This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License  *
;version 3 as published by the Free Software Foundation.                                                                    *
;This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied         *
;Warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
;A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>.                           *
;*****************************************************************************************************************************


;
;Program information
;  Program name: Circumference Calculator
;  Programming languages: One modules in C and one module in X86
;  Date program began:     2021-Sept-06
;  Date program completed: 2020-Sept-09
;  Files in this program: pythagoras.c, triangle.asm, r.sh
;  Status: Complete.  No errors found after extensive testing.
;
;Purpose
;  To calculate the circumference of a circle
;
;This file
;   File name: circle.asm
;   Language: X86-64 with Intel syntax
;   Assemble: nasm -g -F dwarf -f elf64 -l triangle.lis -o triangle.o triangle.asm
;   Link: gcc -m64 -no-pie -o math.out -std=c11 triangle.o pythagoras.o



;===== Begin code area ===========================================================================================================

extern scanf
extern printf
global triangle

;Declare constants
divisor equ 2

section .data

text1 db "What is your name: ", 0
text2 db "Enter your title (Mr, Ms, Programmer, Grunt, High Lord) ", 0
inputprompt db "Please input 2 floating point numbers separated by ws and press enter. ", 0
areamsg db "The area of this triangle is ", 0
stringFormat db "%s", 0
two_float_format db "%lf %lf", 0

section .bss
name resb 16
title resb 15


section .text

triangle:
;16 Pushes
    push rbp
    mov rbp, rsp
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15
    push rbx
    pushf

    push qword 0


;Prompt user for name
mov rdi, stringFormat
mov rsi, text1
mov rax, 0
call printf

;Receive user input and set to variable 'name'
mov rdi, stringFormat
mov rsi, name                  ; stack pointer points to rsi were scanf input will be placed
mov rax, 0
call scanf

;Prompt user for title
mov rdi, stringFormat
mov rsi, text2
mov rax, 0
call printf

;Receive user input and set to variable 'title'
mov rdi, stringFormat
mov rsi, title                  ; stack pointer points to rsi were scanf input will be placed
mov rax, 0
call scanf

;Display a prompt message asking for inputs
push qword 99
mov rax, 0
mov rdi, inputprompt          ;"Please input 2 floating point numbers using the keyboard: "
call printf
pop rax

push qword 99 ;Get on boundary
;Create space for 2 float numbers
push qword -1
push qword -2
mov rax, 0
mov rdi, two_float_format      ;"%lf%lf"
mov rsi, rsp                   ;rsi points to first quadword on the stack
mov rdx, rsp
add rdx, 8                     ;rdx points to second quadword on the stack
call scanf

movsd xmm12, [rsp]
movsd xmm13, [rsp+8]
pop rax                        ;Reverse the previous "push qword -2"
pop rax                        ;Reverse the previous "push qword -1"
pop rax                        ;Reverse the previous "push qword 99"

;Calculate the area of the Triangle
mov rbx, divisor
mulsd xmm12, xmm13
divsd xmm12, divisor
movsd  xmm12, [rsp]
pop rax

push qword 0
movsd  [rsp], xmm14

mov rax, 3
mov rdi, areamsg



end:
    ;16 pops
    pop rax
    popf
    pop rbx
    pop r15
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    pop rbp

    ret
