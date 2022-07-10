NAME 	= libft.a
INCLUDE = inc/
SRC_DIR	= src/
OBJ_DIR	= obj/
GCC = gcc -c -Wall -Wextra -Werror -I
AR = ar rcs
RM = rm -f

//src

LIBFT_DIR	=	libft/
LIBFT		=	ft_isalnum ft_isalpha ft_isascii ft_isdigit ft_isprint\
				ft_bzero ft_calloc ft_memchr ft_memcmp ft_memmove ft_memset\
				ft_putchar_fd ft_putendl_fd ft_putnbr_fd ft_putstr_fd\
				ft_atoi ft_itoa ft_tolower ft_toupper ft_split ft_strchr ft_strdup\
				ft_striteri ft_strjoin ft_strlcat ft_strlcpy ft_strlen ft_strmapi ft_strncmp\
				ft_strnstr ft_strrchr ft_strtrim ft_substr

GNL_DIR		= GNL/
GNL			

all: $(NAME)

$(NAME): $(OBJECTS)
		$(AR) $(NAME) $(OBJECTS)

%.o: %.c $(HEADER)
		$(GCC) $<

clean:
		$(RM) $(OBJECTS)

fclean: clean
		$(RM) $(NAME)

re: fclean all
