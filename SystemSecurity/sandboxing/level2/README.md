# Level2

This is a simple sandbox escaping challenge, the given program creates a `chroot` without changing the directory to the created jail which means we still have access to the actual `root` directory and can read the `flag`.

Compile and link:

```bash
nasm -f elf64 readfile.asm
ld -s readfile.o -o readfile
```

Dump the binary:
```bash
objcopy --dump-section .text=shellcode-raw
```

Send the machine code:
```bash
cat shellcode-raw | ./prog arg
```

