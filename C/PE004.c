/*

Author: Rohit Jha
File: PE004.c
July 5, 2013

Problem 4:
A palindromic number reads the same both ways. The largest palindrome made from
the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.

*/

#include <stdio.h>

int is_palindrome(int num) {
    int reversed = 0;
    int original = num;
 
    if (num < 10)
		return 1;
    if (num % 10 == 0)
		return 0;
 
    while (num >= 1) {
        reversed = (reversed * 10) + (num % 10);
        num = num/10;
    }
 
    if (original == reversed) return 1;
    else return 0;
}

int main() {
	int max = 0, x, i, j;
	
	for(i = 999; i > 99; i--)
		for(j = 999; j > 99; j--)
		{
			x = i * j;
			if((is_palindrome(x) == 1) && (x > max))
				max = x;
		}
	printf("%d\n", max);
	return 0;
}

/*
906609

real	0m0.017s
user	0m0.017s
sys	0m0.000s
*/
