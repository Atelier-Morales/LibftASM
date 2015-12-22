section .text
	global _ft_memset
	
_ft_memset:
	mov rcx, rdx
	mov rax, rsi
	mov rdx, rdi
	cld
	rep stosb
	jmp rets
	
rets:
	mov rax, rdx
	ret