//WEEK2 W2P3C

#include<stdio.h>


int main()
{
	int **pp,*p, a;

	printf("Enter an element: ");
	scanf("%d", &a);

		p = &a;

		pp = &p;

	printf("Int A Value= %d, Address = %p\n", a , &a);
	printf("Pointer to Int P Value= %p, Address = %p\n", p , &p);
	printf("Pointer to Pointer to Int PP Value= %p, Address = %p\n", pp , &pp);

	return 0;
}