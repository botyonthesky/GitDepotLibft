# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmaillar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/04 16:40:00 by tmaillar          #+#    #+#              #
#    Updated: 2023/05/10 07:58:18 by tmaillar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 			= libft.a

SRCS_FILES 			= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c \
					ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
					ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c \
					ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
       				ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
					ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_printf.c \
					ft_put_memory_adress.c ft_putchar_p.c ft_putnbr_p.c ft_putstr_p.c ft_check.c \
					ft_convert.c get_next_line.c get_next_line_utils.c ft_lstnew.c ft_lstadd_front.c \
					ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c \
					ft_lstiter.c ft_lstmap.c ft_strtok.c ft_merge_split.c ft_strchr_p.c \
					ft_remove_quote.c ft_print_list.c ft_lst_isempty.c ft_atol.c

SRCS_DIR		= src

HEADERS			= libft.h

HEADERS_DIR		= include

SRCS			= $(addprefix $(SRCS_DIR)/, $(SRCS_FILES))

OBJS			= $(SRCS:.c=.o)

CC				= cc

RM				= rm -f

CFLAGS			= -Wall -Wextra -Werror -fPIE -g -MD

all:			${NAME}

${NAME}:		${OBJS}
				ar rcs ${NAME} ${OBJS}

clean: 
				${RM} ${OBJS}

fclean:			clean
				${RM} ${NAME}
				$(RM) $(OBJS:.o=.d)

re:				fclean ${NAME}

.PHONY:			all clean fclean re

-include $(OBJS:.o=.d)



