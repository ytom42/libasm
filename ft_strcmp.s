global	ft_strcmp

section	.text
ft_strcmp:
		mov		rcx, -1				; i = -1

loop:
		inc		rcx
		mov		al, byte[rdi + rcx]
		mov		bl, byte[rsi + rcx]
		cmp		al, 0
		je		finish
		cmp		bl, 0
		je		finish
		cmp		al, bl
		je		loop
		jmp		finish


finish:
		sub		rax, rbx
		ret
