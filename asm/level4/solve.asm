section .text

global _start

; speed = distance / time, where:
; distance = rdi
; time = rsi
; Place the value of speed into rax given the above.

_start:
	mov rdx, 0	; clear the reminder
	mov rax, rdi
	mov rcx, rsi	; ecx contains the divisor
	div rcx
	mov rax, rax
