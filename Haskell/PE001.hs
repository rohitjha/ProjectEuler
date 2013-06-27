{-

Author: Rohit Jha
File: PE001.hs
December 20, 2012

Problem 1:
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

-}

sumDiv :: Integer -> Integer -> Integer
sumDiv n limit = (n * (p * (p + 1))) `div` 2
	where
		p = limit `div` n

main = putStrLn $ show $ (sumDiv 3 999) + (sumDiv 5 999) - (sumDiv 15 999)

--main = putStrLn $ show $ sum [ x | x <- [1..999], mod x 3 == 0 || mod x 5 == 0 ]

{-
$ ghc -O2 PE001.hs
[1 of 1] Compiling Main             ( PE001.hs, PE001.o )
Linking PE001 ...
$ /usr/bin/time -v ./PE001 
233168
	Command being timed: "./PE001"
	User time (seconds): 0.00
	System time (seconds): 0.00
	Percent of CPU this job got: 66%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.00
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 1600
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 459
	Voluntary context switches: 1
	Involuntary context switches: 4
	Swaps: 0
	File system inputs: 0
	File system outputs: 0
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
-}
