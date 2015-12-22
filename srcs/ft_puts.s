%include "./srcs/ft_strlen.s"

section .data
	retline db 10
	retline2 db "(null)", 10	
	
section .text
	global _ft_puts

_ft_puts:
	mov r11, rdi
	cmp r11, 0
	je ret10
	push rdi
	call _ft_strlen
	pop rdi
	mov r10, rdi
	mov rdi, 1
	mov rsi, r10
	mov rdx, rax
	mov rax, 0x2000004
	syscall
	mov rdi, 1
	lea rsi, [rel retline]
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	mov rax, 10
	ret

ret10:
	mov rdi, 1
	lea rsi, [rel retline2]
	mov rdx, 7
	mov rax, 0x2000004
	syscall
	mov rax, 10
	ret