import java.util.*;
class W1P2
{
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		double x1,x2,img;
		int choice;

		System.out.println("Enter coeff of x2");
		int a=sc.nextInt();

		System.out.println("Enter coeff of x");
		int b=sc.nextInt();

		System.out.println("Enter constant ");
		int c=sc.nextInt();

		int disc=(b*b)-(4*a*c);
		if (disc>0)
			choice=1;
		else if (disc==0)
			choice=0;
		else
			choice=-1; 	
		switch(choice)
		{
			case -1:
			{	
				x1=-(b/(2*a));
				img=Math.sqrt(-disc)/(2*a);
				System.out.println("Imaginary: "+x1+"+i"+img+"and "+x1+"-i"+img);
				break;
			}	
			case 0:
			{
				x1=-b/(2*a);
				System.out.println("real and equal:"+x1);
				break;
			}
			case 1:
			{
				x1=(-b+Math.sqrt(disc))/(2*a);
				x2=(-b-Math.sqrt(disc))/(2*a);			
				System.out.println("Real and different: "+x1+"and "+x2);
			}
		}
	}
}