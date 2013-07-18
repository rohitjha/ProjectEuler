#!/usr/bin/env python
# PE006.py

'''

Author: Rohit Jha
File: PE006.py
July 7, 2013

Problem 6:
The sum of the squares of the first ten natural numbers is,
1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten natural
numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one hundred
natural numbers and the square of the sum.

'''

n = 100
sum1 = ((n * (n + 1)) / 2)**2
sum2 = (n * (n + 1) * (2 * n + 1)) / 6

print(int(sum1 - sum2))

'''
25164150

real	0m0.040s
user	0m0.037s
sys	0m0.000s
'''
