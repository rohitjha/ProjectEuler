/*

Author: Rohit Jha
File: PE007.c
July 8, 2013

Problem 7:
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
that the 6th prime is 13.

What is the 10001st prime number?

*/

#include <stdio.h>
#include <math.h>

#define true 1
#define false 0

int isPrime(unsigned long n)
{
	if(n == 2 || n == 3)
		return true;
	if(n < 2 || n % 2 == 0)
		return false;
	if(n % 3 == 0)
		return false;
	if(n < 9)
		return true;
	
	unsigned long r = (unsigned long) sqrt(n);
	unsigned long f = 5;
	
	while(f <= r) {
		if(n % f == 0 || n % (f + 2) == 0)
			return false;
		f += 6;
	}
	return true;
}

int main()
{
	unsigned int limit = 10001;
	unsigned int count = 1, num = 1;
	
	while(count < 10001) {
		num += 2;
		if(isPrime(num) == true)
			count++;
	}
	printf("%d\n", num);
	return 0;
}

/*
104743

real	0m0.011s
user	0m0.007s
sys	0m0.003s
*/
