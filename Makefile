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
SRC			=	ft_bzero.s
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
