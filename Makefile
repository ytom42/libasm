NAME	=	libasm.a

NA		=	nasm

NFLAGS	=	-f elf64

SRCS	=	ft_strlen.s

OBJS	=	$(SRCS:.s=.o)



all:		$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

%.o:%.s
	$(NA) $(NFLAGS) $(SRCS)

clean:
		rm -f $(OBJS)

fclean: clean
		rm -f $(NAME)

re: fclean all

test:re
	gcc -L. -lasm -o test main.c