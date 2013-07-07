{-

Author: Rohit Jha
File: PE005.hs
July 7, 2013

Problem 5:
2520 is the smallest number that can be divided by each of the numbers from
1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the
numbers from 1 to 20?

-}

main = putStrLn $ show $ foldr1 lcm [3,5,7,11,13,16,17,18,19]

{-
232792560

real	0m0.002s
user	0m0.000s
sys	0m0.000s
-}
