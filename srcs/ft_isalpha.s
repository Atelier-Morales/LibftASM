section .text
		global start
		global _ft_isalpha

start:
	    call _ft_isalpha
	    ret

_ft_isalpha:
		cmp rdi, 64
		ja sup64
		jbe ret0
		ret

sup64:
		cmp rdi, 90
		jbe ret1
		ja inf122

inf122:
		cmp rdi, 122
		jbe sup96
		ja ret0

sup96:
		cmp rdi, 96
		ja ret1
		jbe ret0

ret1:
		mov rax, 1
		ret

ret0:
		mov rax, 0
		ret
	