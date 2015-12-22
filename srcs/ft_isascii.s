
section .text
	global _ft_isascii
	
_ft_isascii:
	cmp rdi, 0
	jb ret0
	cmp rdi, 127
	ja ret0
	jmp ret1
	ret

ret1:
		mov rax, 1
		ret

ret0:
		mov rax, 0
		ret