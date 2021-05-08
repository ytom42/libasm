FROM	ubuntu

RUN		apt update;
RUN		apt install -y gcc;
RUN		apt install nasm;
RUN		apt install make;
RUN		apt install -y lldb;

WORKDIR	/aaa/libasm/

# nasm -f macho64 ft_strlen.s
# nasm -f elf64 ft_strlen.s
# gcc ft_strlen.o