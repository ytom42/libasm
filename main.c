#include "libasm.h"

int main()
{
	int		n;
	char	str1[10] = "abc";
	char	str2[10] = "42tokyo";
	char	*tmp;

	printf("\nstr1 = [%s]\n", str1);
	n = strlen(str1);
	printf("strlen    -> %d\n", n);
	n = ft_strlen(str1);
	printf("ft_strlen -> %d\n\n", n);

	printf("\nstr1 = [%s]\nstr2 = [%s]\n", str1, str2);
	tmp = strcpy(str1, str2);
	printf("strcpy   -> [%s]\n", tmp);

	printf("\n");
	return 0;
}
