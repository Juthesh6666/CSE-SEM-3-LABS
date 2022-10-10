//WEEK2 W2P3A

#include<stdio.h>

void Swap(int* a, int* b)
{
   int temp;

   temp = *a;
   *a = *b;
   *b = temp;

}

int main()
{
   int *p, a, b;

   printf("Enter 2 elements (a, b): ");
   scanf("%d%d", &a, &b);

   Swap(&a, &b);

   printf("Swapped Elements are a = %d, b = %d\n", a , b);

   return 0;
}
