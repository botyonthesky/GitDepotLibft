#include "../include/libft.h"

void	ft_print_list(t_listp *a)
{
	if (ft_is_empty(a))
	{
		printf("liste vide\n");
		return ;
	}
	while (a != NULL)
	{
		printf("%d\n", a->value);
		a = a->next;
	}
}