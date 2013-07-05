'''

Author: Rohit Jha
File: PE003.py
July 5, 2013

Problem 3:
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

'''

#! /usr/bin/env python
# PE003.py

from math import sqrt

def factorize(n):
    response, p, np = 0, 2, n
    while p <= sqrt(np):
        if np % p == 0:
            response = p
            np /= p
        else:
            if p > 2: p += 2
            else: p += 1
    
    if np != n:
        return np

num = 600851475143
print (int(factorize(num)))

'''
6857

real	0m0.042s
user	0m0.030s
sys		0m0.010s
'''
