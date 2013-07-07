#! /usr/bin/env python
# PE001.py

'''

Author: Rohit Jha
File: PE001.py
July 5, 2013

Problem 1:
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

'''

def sumDivisibleBy(n):
	p = 999 / n
	return n * (p * (p + 1)) / 2

print(int(sumDivisibleBy(3) + sumDivisibleBy(5) - sumDivisibleBy(15)))

'''
233366

real	0m0.041s
user	0m0.037s
sys	0m0.003s
'''
