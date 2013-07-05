/*

Author: Rohit Jha
File: PE003.c
July 5, 2013

Problem 3:
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

*/

#include <stdio.h>
#include <math.h>

int main() {
	long n = 600851475143;
	int lastFactor,factor,maxFactor;
	
	if(n % 2 == 0)
	{
		lastFactor = 2;
		n /= 2;
		while(n % 2 == 0)
			n /= 2;
	}
	else
		lastFactor = 1;
	
	factor = 3;
	maxFactor = (int) sqrt(n);
	
	while((n > 1) && (factor <= maxFactor))
	{
		if(n % factor == 0)
		{
			n /= factor;
			lastFactor = factor;
			while(n % factor == 0)
				n /= factor;
			maxFactor = (int) sqrt(n);
		}
		factor += 2;
	}
	
	if(n == 1)
		printf("%d\n", lastFactor);
	else
		printf("%d\n", n);
	
	return 0;
}

/*
6857

real	0m0.001s
user	0m0.000s
sys		0m0.000s
*/
