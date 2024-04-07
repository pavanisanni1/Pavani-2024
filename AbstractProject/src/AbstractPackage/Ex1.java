package AbstractPackage;
//import java.util.Scanner;
public class Ex1{
		public static void main(String[] args) {
		//swap
		//Scanner sc=new Scanner(System.in);		
		/*System.out.println("enter two values");
		int x=sc.nextInt();
		int y=sc.nextInt();
		x=x+y;
		y=x-y;
		x=x-y;
		System.out.println("x is:"+x+"y is:"+y);
		//factorial
		int fact=1;
		int num=6;
		do {
		fact=fact*num;
				num--;
				System.out.println("fact"+fact);
		}while(num>1);

		System.out.println(fact);*/
		
	//ascending
		
		int[] x={4,1,3,5,2};
		int i=0,j=0,c;
		for(i=0;i<5;i++) {
			for(j=i+1;j<5;j++) {
				if (x[i]>x[j]) {
					c=x[i];x[i]=x[j];x[j]=c;
				}
			}
		}		
		for(i=0;i<5;i++) {
			System.out.println(x[i]);
		}
		
		//prime
			/*int num;
		System.out.println("enter a number");
		num=sc.nextInt();
		int count=0;
		
		for(int i=2;i<num;i++) {
			
			if (num%i==0){
				System.out.println("not prime");
				count++;
				break;
			}
		}
			if (count==0)System.out.println("prime");
		//vowel
		String s="pavani";
		for (int i=0;i<6;i++) {
			System.out.println(s.charAt(i));
			if ((s.charAt(i)=='a')||(s.charAt(i)=='e')||(s.charAt(i)=='o')||(s.charAt(i)=='u')||(s.charAt(i)=='i'))
			System.out.println("has vowel");
		}*/
		
		
		
		}
				

}

