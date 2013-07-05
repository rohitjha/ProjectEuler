/*

Author: Rohit Jha
File: PE002.java
July 5, 2013

Problem 2:
Each new term in the Fibonacci sequence is generated by adding the previous
two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed
four million, find the sum of the even-valued terms.

*/

class PE002
{
	public static void main(String args[])
	{
		long limit = 4000000L;
		long x = 1L;
		long y = 1L;
		long sum = 0L;
		
		while(sum < limit)
		{
			sum += (x+y);
			x = x + 2*y;
			y = 2*x - y;
		}
		
		System.out.println(sum);
	}
}
/*
4613732

real	0m0.093s
user	0m0.090s
sys		0m0.003s
*/
