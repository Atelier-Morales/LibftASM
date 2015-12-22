#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fmorales <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/10/12 11:02:45 by fmorales          #+#    #+#              #
#    Updated: 2015/10/16 11:31:21 by fmorales         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME		=	libfts.a
DIRSRC		=	./srcs/
DIROBJ		=	./obj/
INC 		=	includes
SRC			=	ft_isdigit.s ft_isalpha.s ft_isalnum.s ft_isprint.s \
				ft_isascii.s ft_toupper.s ft_tolower.s ft_bzero.s \
				ft_strlen.s ft_puts.s ft_memset.s ft_memcpy.s ft_strdup.s \
				ft_cat.s ft_strcat.s
OBJ			=	$(SRC:.s=.o)
OBJ_NAME    =   $(addprefix $(DIROBJ),$(OBJ))
FLAGS		=	-f macho64
CC			=	nasm
RM			=	/bin/rm -f
ECHO		=	/bin/echo -e
OUTPUT		=	$(shell find . | grep "\~")

all: $(NAME)

$(NAME): $(OBJ_NAME)
	ar rc $(NAME) $(OBJ_NAME)
	ranlib $(NAME)
	@echo "libftASM : done"

$(DIROBJ)%.o: $(DIRSRC)%.s
	mkdir -p $(DIROBJ)
	$(CC) $(FLAGS) -o $@ $< -I $(INC)

clean:
	$(RM) $(OBJ) $(OUTPUT)
	@$(ECHO) "objects deleted"

fclean: clean
	$(RM) $(NAME)
	@$(ECHO) "LibftASM deleted"

re: fclean all

test:
	@gcc -Wall -Wextra -Werror -c main.c
	@gcc -o libftASM main.o libfts.a

.PHONY:     all clean fclean re test