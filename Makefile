# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mokoucha <mokoucha@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/01 18:38:39 by mokoucha          #+#    #+#              #
#    Updated: 2022/04/12 01:35:29 by mokoucha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Werror -Wextra
LIB1 = ar -rcs
RM = rm -f

INCLUDE = ft_printf.h

SOURCES =	ft_printf.c \
			hexadecimals.c \
			decimals.c \
			characters.c
OBJECTS =	$(SOURCES:.c=.o)

all: $(NAME)
$(NAME):	$(OBJECTS)	$(INCLUDE)
			$(LIB1)		$(NAME)	$(OBJECTS)
.o: .c
	$(CC) -c $(CFLAGS) $(SOURCES) -I $(INCLUDE) -o $@

clean:
	$(RM)	$(OBJECTS)

fclean: clean
	$(RM)	$(NAME)

re: fclean all

.PHONY: all clean fclean re
