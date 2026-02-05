global _start
section .data
	isimGiriniz db "Lutfen Isminizi Giriniz: "
	isimLen equ $ - isimGiriniz
	merhaba db "Merhaba "
	merhabaLen equ $ - merhaba

section .bss
	isim resb 64


section .text
_start:
	xor eax, eax
	mov al, 4
	xor ebx, ebx
	mov bl , 1
	xor ecx, ecx
	mov ecx, isimGiriniz
	xor edx, edx
	mov edx, isimLen
	int 0x80         ; Lutfen Ismınızı Giriniz:


	xor eax, eax
	mov al, 3
	xor ebx, ebx
	xor ecx,ecx
	mov ecx, isim
	xor edx,edx
	mov edx , 64
	int 0x80        ; İsim okunuyor


	mov esi, eax ; uzunluk tutuluyor

	xor eax, eax
        mov al, 4
        xor ebx, ebx
        mov bl , 1
        xor ecx, ecx
        mov ecx, merhaba
        xor edx, edx
        mov edx, merhabaLen
        int 0x80        ;merhaba yazdırılıyor

	
	xor eax, eax
	mov al, 4
	xor ebx, ebx
	mov bl, 1
 	xor ecx, ecx
	mov ecx, isim
	xor edx, edx
	mov edx, esi
	int 0x80 

	xor eax, eax
        mov al , 1
        xor ebx,ebx
        int 0x80 ; exit

