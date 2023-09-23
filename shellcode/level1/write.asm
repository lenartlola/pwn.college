section .text
global _start

_start:
	mov rdi, 0x1337
	mov eax, 60
	syscall

