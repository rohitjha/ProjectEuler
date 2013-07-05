{-

Author: Rohit Jha
File: PE004.hs
July 5, 2013

Problem 4:
A palindromic number reads the same both ways. The largest palindrome made from
the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.

-}

main = putStrLn $ show $ maximum [x | y <- [999,998..100], z <- [999,998..y], let x = y*z, let s = show x, s == reverse s]

{-
906609

real	0m0.081s
user	0m0.077s
sys		0m0.003s
-}
