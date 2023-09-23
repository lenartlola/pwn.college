section .text

global _start

; Another cool concept in x86 is the independent access to lower register bytes.
; Each register in x86_64 is 64 bits in size, in the previous levels we have accessed
; the full register using rax, rdi or rsi. We can also access the lower bytes of
; each register using different register names. For example the lower
; 32 bits of rax can be accessed using eax, lower 16 bits using ax,
; lower 8 bits using al, etc.
; MSB                                    LSB
; +----------------------------------------+
; |                   rax                  |
; +--------------------+-------------------+
;                      |        eax        |
;                      +---------+---------+
;                                |   ax    |
;                                +----+----+
;                                | ah | al |
;                                +----+----+
; Lower register bytes access is applicable to all registers_use.
; 
; Using only the following instruction(s)
; mov
; Please compute the following:
; rax = rdi modulo 256
; rbx = rsi modulo 65536

; Solution:
;	The maximum value al can contain is 255, and ax is 65535

_start:
	mov al, dil	; Since al can only contain 255, 
			; it ensures the value of rax is within the range
			; we simply extract 8 bit of rdi
	mov bx, si	; Same with different sizes
