section .text
	global _ft_strlen

_ft_strlen:
	push rdi
	mov rax, 0
	mov rcx, 0
	not rcx
	cld
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	pop rdi
	ret	