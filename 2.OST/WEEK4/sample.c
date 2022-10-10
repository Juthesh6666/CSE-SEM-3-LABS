#include <stdio.h>
#include "maths.h"

int main(){
	int x,y;
	scanf("%d%d", &x,&y);
	int z;
	z=add(x,y);
	printf("%d\n",z);
	z=sub(x,y);
	printf("%d\n",z);
}
