{-

Author: Rohit Jha
File: PE006.hs
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

-}

main = putStrLn $ show $ (sum [1..100])^2 - sum (map (^2) [1..100])

{-
25164150

real	0m0.001s
user	0m0.000s
sys	0m0.000s
-}
