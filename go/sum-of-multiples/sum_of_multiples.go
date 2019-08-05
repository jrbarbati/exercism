// Package summultiples contains a method to sum multiples of given numbers
package summultiples

// SumMultiples sums up all the muliples from [1, limit) that are divisible by any of the divisors.
func SumMultiples(limit int, divisors ...int) int {
	sum := 0

	for i := 1; i < limit; i++ {
		sum += multiple(i, divisors)
	}

	return sum
}

func multiple(num int, divisors []int) int {
	for _, divisor := range divisors {
		if divisor == 0 {
			continue
		}

		if num%divisor == 0 {
			return num
		}
	}

	return 0
}
