section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	
_ft_strdup:
	push rdi
	call _ft_strlen
	push rax
	inc rax
	mov	rdi, rax
	push rdi
	call _malloc
	pop rdi
	cmp rax, 0
	je failret
	jmp ft_memcpy2

ft_memcpy2:
	pop rcx						;len
	pop rsi						;str
	mov	rdi, rax
	push rdi
	cld
	rep movsb
	pop rax
	ret

failret:
	ret