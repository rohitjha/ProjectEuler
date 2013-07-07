{-

Author: Rohit Jha
File: PE001.hs
July 5, 2013

Problem 1:
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

-}

sumDiv :: Integer -> Integer -> Integer
sumDiv n limit = (n * (p * (p + 1))) `div` 2
	where
		p = limit `div` n

main = putStrLn $ show $ (sumDiv 3 999) + (sumDiv 5 999) - (sumDiv 15 999)

{-
233168

real	0m0.002s
user	0m0.000s
sys	0m0.000s
-}
