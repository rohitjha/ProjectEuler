#! /usr/bin/env python
# PE007.py

'''

Author: Rohit Jha
File: PE007.py
July 8, 2013

Problem 7:
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
that the 6th prime is 13.

What is the 10001st prime number?

'''

from math import sqrt

def is_prime(n):
	if n == 2 or n == 3: return True
	if n < 2 or n % 2 == 0: return False
	if n % 3 == 0: return False
	if n < 9: return True

	r, f = int(sqrt(n)), 5
        
	while f <= r:
		if n % f == 0 or n % (f + 2) == 0:
			return False
		f += 6
	return True


limit = 10001
count, num = 1, 1

while count < limit:
	num += 2
	if is_prime(num):
		count += 1

print (num)


'''
104743

real	0m0.359s
user	0m0.347s
sys	0m0.010s
'''
