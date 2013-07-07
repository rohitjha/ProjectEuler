#! /usr/bin/env python
# PE004.py

'''

Author: Rohit Jha
File: PE004.py
July 5, 2013

Problem 4:
A palindromic number reads the same both ways. The largest palindrome made from
the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.
'''

largest = 0

for i in range(999,99,-2):
    for j in range(i,99,-2):
        x = i*j
        if x%11==0:
            y = str(x)
            if x > largest and y == y[::-1]:
                largest = x

print (largest)

'''
906609

real	0m0.093s
user	0m0.080s
sys		0m0.010s
'''
