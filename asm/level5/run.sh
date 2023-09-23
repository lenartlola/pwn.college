nasm -f elf64 solve.asm && ld solve.o && objcopy --dump-section .text=shellcode a.out && cat shellcode | /challenge/run && rm solve.o a.out shellcode
