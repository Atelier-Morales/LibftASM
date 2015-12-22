section .text
	global _ft_tolower
	global _retrdi
	global _retmod

_ft_tolower:
	cmp rdi, 65
	jb _retrdi
	cmp rdi, 90
	ja _retrdi
	jmp _retmod

_retrdi:
	mov rax, rdi
	ret

_retmod:
	mov rbx, rdi
	add rbx, 32
	mov rax, rbx
	ret