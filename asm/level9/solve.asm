section .text

global _start

_start:
	and rdi, 1
	xor rdi, 1
	and rax, rdi

; Using only the following instructions:
; and, or, xor
; Implement the following logic:

; if x is even then
;   y = 1
; else
;   y = 0
; where:
; x = rdi
; y = rax
