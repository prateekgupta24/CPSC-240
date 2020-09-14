section    .text
    global _start

_start:

    xor    eax, eax
    lea    edx, [rax+len]
    mov    al, 1
    mov    esi, msg
    mov    edi, eax
    syscall

    xor    edi, edi
    lea    eax, [rdi+60]
    syscall

section    .rodata

msg    db 'hello, world', 0xa
len    equ    $ - msg 

;How to run assembly program in terminals
;nasm -f elf64 hello.asm # assemble the program  
;ld -s -o hello hello.o # link the object file nasm produced into an executable file  
;./hello # hello is an executable file
