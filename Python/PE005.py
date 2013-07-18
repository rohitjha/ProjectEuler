#!/usr/bin/env python
# PE005.py

'''

Author: Rohit Jha
File: PE005.py
July 7, 2013

Problem 5:
2520 is the smallest number that can be divided by each of the numbers from
1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the
numbers from 1 to 20?

'''

def gcd(a, b):
        if a == 0: return b
        if b == 0: return a
        if a < 0:  a = -a
        if b < 0:  b = -b
        while b != 0: 
                a, b = b, a%b
        return a

result = 2    # initial value of LCM, LCM of 1 and 2
for i in range(3, 20):
        result = i//gcd(result, i) * result		# LCM of 'result' and i
print(result)

'''
232792560

real	0m0.040s
user	0m0.033s
sys	0m0.007s
'''
