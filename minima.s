section .data
hello:
	.string db "hello World!", 10
	.len equ $ - hello.string

section .text
	global start
	global _main
	extern _printf

start:
	call _main
	ret

_main: 
	push rbp
	sub rbp, 16
	lea rdi, [rel hello.string]
	call _printf
	leave
	ret