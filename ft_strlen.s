global ft_strlen

section .text
ft_strlen:
		mov		rax, -1				; i = 0
loop:
		inc		rax					; i++
		mov		cl, byte [rdi+rax]	; cl = str[i]
		cmp		cl, 0				; if cl == \0
		jne		loop				; then loop
		ret
