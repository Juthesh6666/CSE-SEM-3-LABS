import java.util.Scanner;
class W1P1
{

public static void main(String args[])
{
	Scanner sc= new Scanner(System.in);
	int a=sc.nextInt();
	int b=sc.nextInt();
	int c=sc.nextInt();

	int large=largest(a,b,c);
	System.out.println("Largest number is" + large);

}

static int largest(int a,int b,int c)
{
	int num;
	if(a>b && a>c)
		num=a;
	else if(b>c && b>a)
		num=b;
	else
		num=c;		

	return num;	

}
}