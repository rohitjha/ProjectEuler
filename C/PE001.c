/*

Author: Rohit Jha
File: PE001.c
December 20, 2012

Problem 1:
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

*/

#include <stdio.h>

int sumDivisibleBy(int n) {
	int limit = 999;
	int p = limit / n;
	return n * (p * (p + 1)) / 2;
}

int main() {
	printf("%d\n", sumDivisibleBy(3) + sumDivisibleBy(5) - sumDivisibleBy(15));
	return 0;
}

/*
$ gcc -O3 -o PE001 PE001.c
$ /usr/bin/time -v ./PE001
233168
	Command being timed: "./PE001"
	User time (seconds): 0.00
	System time (seconds): 0.00
	Percent of CPU this job got: 100%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.00
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 428
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 136
	Voluntary context switches: 1
	Involuntary context switches: 1
	Swaps: 0
	File system inputs: 0
	File system outputs: 0
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
*/
