//WEEK2 W2P2

#include<stdio.h>
#include<stdlib.h>

void smallest(int*p,int n,int *s)
{int i;
	*s=*p;
	for(i=0;i<n;i++)
	{  if(*s>*(p+i))
			{
				*s=*(p+i);
			}
	}
}
int main()
{int *p;int *small;

	int n,i,l;

	printf("enter the number of element in array: ");
	scanf("%d",&n);
	p=(int*)malloc(n*sizeof(int));
	for(i=0;i<n;i++)
	{
		printf("enter the array arr[%d]=",i);
		scanf("%d",p+i);

	}

	small=p;
	smallest(p,n,small);
printf("the Smallest value is %d",*small);
}