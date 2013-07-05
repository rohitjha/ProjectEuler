/*

Author: Rohit Jha
File: PE001.java
July 5, 2013

Problem 1:
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

*/

class PE001 {
	static int sumDivisibleBy(int n) {
		int limit = 999;
		int p = limit / n;
		return n * (p * (p + 1)) / 2;
	}
	
	public static void main(String args[]) {
		System.out.println(sumDivisibleBy(3) + sumDivisibleBy(5) - sumDivisibleBy(15));
	}
}

/*
233168

real	0m0.090s
user	0m0.073s
sys		0m0.017s
*/
