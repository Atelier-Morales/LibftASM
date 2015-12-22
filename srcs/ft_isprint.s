

section .text
    global _ft_isprint

_ft_isprint:
    cmp rdi, 32
    jb ret0
    cmp rdi, 126
    ja ret0
    jmp ret1
    ret

ret1:
		mov rax, 1
		ret

ret0:
		mov rax, 0
		ret