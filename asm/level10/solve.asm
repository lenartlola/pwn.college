section .text

global _start

_start:
	mov rax, [0x404000]
	add qword [0x404000], 0x1337

; In x86 we can access the thing at a memory location, called dereferencing, like so:
; mov rax, [some_address]        <=>     Moves the thing at 'some_address' into rax
; This also works with things in registers:
; mov rax, [rdi]         <=>     Moves the thing stored at the address of what rdi holds to rax
; This works the same for writing:
; mov [rax], rdi         <=>     Moves rdi to the address of what rax holds.
; So if rax was 0xdeadbeef, then rdi would get stored at the address 0xdeadbeef:
; [0xdeadbeef] = rdi
; Note: memory is linear, and in x86_64, it goes from 0 - 0xffffffffffffffff (yes, huge).

; Please perform the following:
; 1. Place the value stored at 0x404000 into rax
; 2. Increment the value stored at the address 0x404000 by 0x1337
; Make sure the value in rax is the original value stored at 0x404000 and make sure
; that [0x404000] now has the incremented value.

