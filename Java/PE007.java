/*

Author: Rohit Jha
File: PE007.java
July 8, 2013

Problem 7:
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
that the 6th prime is 13.

What is the 10001st prime number?

*/

class PE007
{
	static boolean isPrime(long n)
	{
		if(n == 2 || n == 3) return true;
		if(n < 2 || n % 2 == 0) return false;
		if(n % 3 == 0) return false;
		if(n < 9) return true;
		
		long r = (long) Math.sqrt(n);
		long f = 5;
		
		while(f <= r)
		{
			if(n % f == 0 || n % (f + 2) == 0) return false;
			f += 6;
		}
		return true;
	}
	
	public static void main(String args[])
	{
		int limit = 10001;
		int count = 1, num = 1;
		
		while(count < 10001)
		{
			num += 2;
			if(isPrime(num))
				count++;
		}
		System.out.println(num);
	}
}

/*
104743

real	0m0.112s
user	0m0.110s
sys	0m0.010s
*/
