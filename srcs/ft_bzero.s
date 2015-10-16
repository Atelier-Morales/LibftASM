;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fmorales <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/16 11:23:03 by fmorales          #+#    #+#              ;
;    Updated: 2015/10/16 11:25:36 by fmorales         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_bzero

_ft_bzero:
	xor		rax, rax
	mov		rcx, rsi

ft_loop:
	dec		rcx
	cmp		rcx, 0
	jl		Lret
	mov		byte [rdi + rcx], 0
	jmp		ft_loop

Lret:
	ret