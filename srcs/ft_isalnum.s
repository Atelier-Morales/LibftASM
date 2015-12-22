%include "./srcs/ft_isalpha.s"

section .text
	global start2
	global _ft_isalnum

start2:
	call _ft_isalnum
	ret

_ft_isalnum:
	cmp rdi, 58
	jae _ft_isalpha
	jb sup48

sup48:
	cmp rdi, 48
	jae ret1b
	jb ret0b

ret1b:
	mov rax, 1
	ret

ret0b:
	mov rax, 0
	ret
