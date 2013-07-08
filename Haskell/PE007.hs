{-

Author: Rohit Jha
File: PE007.py
July 8, 2013

Problem 7:
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
that the 6th prime is 13.

What is the 10001st prime number?

-}

primes = 2 : filter ((==1) . length . primeFactors) [3,5..]
 
primeFactors n = factor n primes
  where
    factor n (p:ps) 
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      = factor n ps

main = putStrLn $ show $ primes !! 10000

{-
104743

real	0m0.072s
user	0m0.070s
sys	0m0.003s
-}
