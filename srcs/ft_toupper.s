section .text
	global _ft_toupper
	global _retrdi1
	global _retmod1

_ft_toupper:
	cmp rdi, 97
	jb _retrdi1
	cmp rdi, 122
	ja _retrdi1
	jmp _retmod1

_retrdi1:
	mov rax, rdi
	ret

_retmod1:
	mov rbx, rdi
	sub rbx, 32
	mov rax, rbx
	ret