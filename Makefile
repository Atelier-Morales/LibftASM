#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fmorales <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/10/12 11:02:45 by fmorales          #+#    #+#              #
#    Updated: 2015/10/12 12:13:53 by fmorales         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME		=	libfts.a
DIRSRC		=	./srcs/
DIROBJ		=	./obj/
INC 		=	includes
SRC			=	ft_bzero.s
OBJ			=	$(SRC:.c=.o)
FLAGS		=	-f macho64
CC			=	nasm
RM			=	/bin/rm -f
ECHO		=	/bin/echo -e
OUTPUT		=	$(shell find . | grep "\~")

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
	@echo "libftASM : done"

$(DIROBJ)%.o: $(DIRSRC)%.s
	mkdir -p $(DIRSRC)
	$(CC) $(FLAGS) -o $@ $< -I $(INC)

clean:
	$(RM) $(OBJ) $(OUTPUT)
	@$(ECHO) "objects deleted"

fclean: clean
	$(RM) $(NAME)
	@$(ECHO) "LibftASM deleted"

re: fclean all
