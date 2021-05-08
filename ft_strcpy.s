global	ft_strcpy

section	.text

ft_strcpy:
		mov		rax, -1

loop:
		inc		rax
		mov		dl, byte[rsi + rax]
		mov		byte[rdi + rax], dl
		cmp		dl, 0
		jne		loop
		mov		rax, rdi
		ret