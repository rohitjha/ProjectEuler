/*

Author: Rohit Jha
File: PE005.java
July 7, 2013

Problem 5:
2520 is the smallest number that can be divided by each of the numbers from
1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the
numbers from 1 to 20?

*/

class PE005
{
	static int gcd(int a, int b)
	{
		int x,y;
		x = (a > b) ? a : b;
		y = a + b - x;
		
		if(a == 0)
			return b;
		else if(b == 0)
			return a;
		else
			return gcd(y, (x % y));
	}
	
	static int lcm(int a, int b)
	{
		return ((a * b) / gcd(a, b));
	}
	
	public static void main(String args[])
	{
		int result = lcm(1, 2);
		for(int i = 3; i < 20; i++)
			result = lcm(result, i);

		System.out.println(result);
	}
}

/*
232792560

real	0m0.090s
user	0m0.070s
sys	0m0.020s
*/
