# Assembly challenges

Compile code
```sh
nasm -f elf64 prog.asm
```

Link
```sh
ld prog.o -o prog
```

Extract bytecode
```sh
objcopy --dump-section .text=shellcode prog
```

Sending bytecode on stdin
```
cat shellcode | ./vuln_prog
```

