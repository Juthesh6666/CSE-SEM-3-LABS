//WEEK2 W2P3B

#include<stdio.h>

int* Smaller(int* a, int* b)
{
	if (*a > *b)
		return b;
	else
		return a;

}

int main()
{
	int *p, a, b;

	printf("Enter 2 elements (a, b)");
	scanf("%d%d", &a, &b);

	p = Smaller(&a, &b);

	printf("Smaller Element is %d", *p);

	return 0;
}
