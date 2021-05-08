NAME	=	libasm.a

NA		=	nasm

NFLAGS	=	-f elf64

SRCS	=	ft_strlen.s \
			ft_strcpy.s \
			ft_strcmp.s \
			ft_write.s \
			ft_read.s \
			ft_strdup.s

OBJS	=	$(SRCS:.s=.o)



all:		$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

%.o:%.s
	$(NA) $(NFLAGS) $<

clean:
		rm -f $(OBJS)

fclean: clean
		rm -f $(NAME)

re: fclean all

test:re
	gcc -L. -o libasm main.c $(OBJS)
	./libasm