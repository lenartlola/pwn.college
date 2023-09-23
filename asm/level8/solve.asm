section .text

global _start

_start:
	and rax, rdi
	and rax, rsi


; Bitwise logic in assembly is yet another interesting concept!
; x86 allows you to perform logic operation bit by bit on registers.
; For the sake of this example say registers only store 8 bits.
; The values in rax and rbx are:
; rax = 10101010
; rbx = 00110011
; 'If we were to perform a bitwise AND of rax and rbx using the and rax, rbx instruction'
; the result would be calculated by ANDing each pair bits 1 by 1 hence why
; it's called a bitwise logic. So from left to right:
; 1 AND 0 = 0, 0 AND 0 = 0, 1 AND 1 = 1, 0 AND 1 = 0 ...
; Finally we combine the results together to get:
; rax = 00100010
; Here are some truth tables for reference:
;     AND          OR           XOR
;  A | B | X    A | B | X    A | B | X
; ---+---+---  ---+---+---  ---+---+---
;  0 | 0 | 0    0 | 0 | 0    0 | 0 | 0
;  0 | 1 | 0    0 | 1 | 1    0 | 1 | 1
;  1 | 0 | 0    1 | 0 | 1    1 | 0 | 1
;  1 | 1 | 1    1 | 1 | 1    1 | 1 | 0
; 
; Without using the following instructions:
; mov, xchg
; Please perform the following:
; rax = rdi AND rsi
; i.e. Set rax to the value of (rdi AND rsi)
