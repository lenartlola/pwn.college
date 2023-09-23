section .text
global _start

; f(x) = mx + b, where:
; m = rdi
; x = rsi
; b = rdx
; Place the value into rax given the above.

_start:
	imul rdi, rsi
	add rdi, rdx
	mov rax, rdi
