

section .text
    	global _ft_isdigit

_ft_isdigit:
		cmp rdi, 48
		jb ret0
		cmp rdi, 57
		jg ret0
		jmp ret1
		ret

ret1:
		mov rax, 1
		ret

ret0:
		mov rax, 0
		ret