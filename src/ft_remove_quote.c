#include "../include/libft.h"

void	ft_remove_quotes(char *str)
{
	int	i;
	int	j;

	i = 0;
	j = 0;
	while (str[i] != '\0')
	{
		if (str[i] != '\'')
		{
			str[j++] = str[i];
		}
		i++;
	}
	str[j] = '\0';
}
