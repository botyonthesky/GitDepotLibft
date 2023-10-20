#include "../include/libft.h"

char	**ft_merge_split(char **final_base, char **to_add)
{
	int	i;
	int	j;

	i = 0;
	j = 0;
	while (final_base[i])
		i++;
	while (to_add[j])
	{
		j++;
		final_base[i] = to_add[j];
		i++;
		j++;
	}
	final_base[i] = NULL;
	return (final_base);
}