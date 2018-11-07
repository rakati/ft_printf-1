# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abiri <kerneloverseer@protonmail>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/04 10:29:36 by abiri             #+#    #+#              #
#    Updated: 2018/11/07 20:24:12 by abiri            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_printf.c\
	  ft_printf_itob.c\
	  ft_printf_justify.c\
	  ft_printf_number.c\
	  ft_printf_printdata.c\
	  ft_printf_parse.c\
	  ft_printf_putwchar.c\
	  ft_printf_itoal.c\
	  ft_printf_putlongf.c\
	  ft_printf_hex.c

LFTSRC = ./libft/ft_atoi.c\
		 ./libft/ft_itoa.c\
		 ./libft/ft_memalloc.c\
		 ./libft/ft_memset.c\
		 ./libft/ft_putchar.c\
		 ./libft/ft_putstrf.c\
		 ./libft/ft_putwchar.c\
		 ./libft/ft_strchr.c\
		 ./libft/ft_strdup.c\
		 ./libft/ft_strequ.c\
		 ./libft/ft_strjoin.c\
		 ./libft/ft_strlen.c\
		 ./libft/ft_strsub.c\
		 ./libft/ft_strzero.c\
		 ./libft/ft_tolower.c\
		 ./libft/ft_wcharlen.c\
		 ./libft/ft_wstrlen_min.c\
		 ./libft/ft_putchar_fd.c\
		 ./libft/ft_strcpy.c\
		 ./libft/ft_wstrlen.c

OBJ = $(SRC:.c=.o)
LFTDIR = libft
NAME = libftprintf.a

all: $(NAME)

$(NAME):
	gcc -c $(SRC) $(LFTSRC) -I $(LFTDIR)
	ar rc $(NAME) *.o
clean:
	rm -rf *.o
fclean: clean
	rm -rf $(NAME)
re: fclean all
