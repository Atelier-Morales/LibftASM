section .text
	global _ft_strcat
	extern _ft_strlen
	
_ft_strcat:
	push rdi
	call _ft_strlen
	add rdi, rax
	pop	rax
	jmp loopcat

loopcat:
	cmp [rsi], byte 0
	je end
	mov bl, [rsi]
	mov [rdi], bl
	inc rdi
	inc rsi
	jmp loopcat

end:
	ret
