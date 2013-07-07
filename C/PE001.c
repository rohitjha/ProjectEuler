/*

Author: Rohit Jha
File: PE001.c
July 5, 2013

Problem 1:
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

*/

#include <stdio.h>

int sumDivisibleBy(int n) {
	int limit = 999;
	int p = limit / n;
	return n * (p * (p + 1)) / 2;
}

int main() {
	printf("%d\n", sumDivisibleBy(3) + sumDivisibleBy(5) - sumDivisibleBy(15));
	return 0;
}

/*
233168

real	0m0.001s
user	0m0.000s
sys	0m0.000s
*/
