section .text

global _start

; Please compute the following:
; rdi % rsi
; Place the value in rax

_start:
	mov rdx, 0	; clear the reminder
	mov rax, rdi
	mov rcx, rsi	; ecx contains the divisor
	div rcx
	mov rax, rdx	; rdx contains the reminder
