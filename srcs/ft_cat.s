section .bss
	buf resb 1
	bufsize equ $-buf

section .data
	retline db 1
	
section .text
	global _ft_cat

_ft_cat:
	cmp rdi, 0
	jb ret_err
	push rdi
	jmp loop_read

loop_read:
	pop rdi
	mov rax, 0x2000003
	lea rsi, [rel buf]
	mov rdx, bufsize
	syscall
	jc ret_err
	cmp rax, 1
	jb ret_err2
	push rdi
	jmp loop_write

loop_write:	
	mov rdi, 1
	lea rsi, [rel buf]
	mov rdx, bufsize
	mov rax, 0x2000004
	syscall
 	jmp loop_read
	
ret_err:
	ret

ret_err2:
	mov rdi, 1
	lea rsi, [rel buf]
	mov rdx, rax
	mov rax, 0x2000004
	syscall
	ret