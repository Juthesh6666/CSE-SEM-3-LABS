import java.util.Scanner;
class W1P3
{
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the number n"); 
		int n=sc.nextInt();
		System.out.println("Enter the number r");
		int r=sc.nextInt();

		int c=factorial(n)/(factorial(n-r)*factorial(r));

		System.out.println("The ncr is"+c);
	}



	static int factorial(int n)
	{
		int fact=1;
		int i;
		for(i=1;i<n+1;i++)
		{
			fact=fact*i;
		}
		return fact;
	}
}