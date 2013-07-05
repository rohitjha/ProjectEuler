{-

Author: Rohit Jha
File: PE003.hs
July 5, 2013

Problem 3:
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

-}

primes = 2 : filter ((==1) . length . primeFactors) [3,5..]
 
primeFactors n = factor n primes
  where
    factor n (p:ps) 
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      = factor n ps
 
main = putStrLn $ show $ last (primeFactors 600851475143)

{-
6857

real	0m0.004s
user	0m0.003s
sys		0m0.000s
-}
