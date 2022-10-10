import java.util.Scanner;
class W2P1
{
	public static void main(String args[])
	{
		Scanner sc= new Scanner(System.in);
		int n=sc.nextInt();
		int Array[]=new int[n];
		int c;
		for(c=0;c<n;c++)
		{
			Array[c]=sc.nextInt();
		}
		int i,j;
		int k;
		for(i=0;i<n;i++)
			for(j=0;j<n-i-1;j++)
				if(Array[j]>Array[j+1])
				{
					k=Array[j];
					Array[j]=Array[j+1];
					Array[j+1]=k;
				}
		System.out.println("Ascending Order is:");
		for(c=0;c<n;c++)
		{
			System.out.println(Array[c]+" ");
		}
		for(i=0;i<n;i++)
			for(j=0;j<n-i-1;j++)
				if(Array[j]<Array[j+1])
				{
					k=Array[j];
					Array[j]=Array[j+1];
					Array[j+1]=k;
				}
		System.out.println("Descending Order is:");
		for(c=0;c<n;c++)
		{
			System.out.println(Array[c]+" ");
		}		
	}
}
