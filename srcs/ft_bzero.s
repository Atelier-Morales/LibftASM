section .text
	global _ft_bzero
	
_ft_bzero:
	xor rcx, rcx
	jmp bz

bz:
	cmp rcx, rsi
	jae ret0
	mov [rdi], byte 0
	inc rdi
	inc rcx
	jmp bz


ret0:
	mov rax, rdi
	ret