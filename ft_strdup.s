extern	malloc
extern	ft_strlen
extern	ft_strcpy


global	ft_strdup

section	.text
ft_strdup:
		push	rdi
		call	ft_strlen
		mov		rdi + 1

		call	malloc
		pop		rdi

		mov		rsi, rdi
		mov		rdi, rax
		call	ft_strcpy
		ret
