global _start

section .data
	helloworld db "Hello_World!",10
	len equ $ - helloworld

section .text
_start:	
	xor eax, eax
	mov al, 4
	xor ebx, ebx
	mov bl, 1
	mov ecx, helloworld
	xor edx, edx
	mov edx, len
	int 0x80

	xor eax, eax
	mov al , 1
	xor ebx,ebx
	int 0x80

	
