;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    hello.s                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fmorales <fmorales@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/12 11:02:01 by fmorales          #+#    #+#              ;
;    Updated: 2015/10/12 11:02:06 by fmorales         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .data
message db "hello, world!", 10
len equ $ - message

section .text
    global start
    global _main

start:
	call _main
	ret

_main:
	push rbp,
	mov rbp, rsp
	sub rsp, 16
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel message]
	mov rdx, len
	syscall
	leave
	ret
