section .text
	global _ft_memcpy

_ft_memcpy:
	mov rcx, rdx
	mov rax, rsi
	mov rdx, rdi
	cld
	rep movsb
	jmp return

return:
	mov rax, rdx
	ret