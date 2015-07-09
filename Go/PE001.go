package main

import "fmt"

func sum_n(n, d int) int {
	n = int(n/d)
	return int(d * n * (n + 1) / 2)
}

func main() {
	fmt.Println(sum_n(999, 3) + sum_n(999, 5) - sum_n(999, 15))
}
