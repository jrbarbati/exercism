// Package diffsquares contains mathematical methods to square sums, sum squares, etc.
package diffsquares

import (
	"math"
)

// SquareOfSum calculates the square of the sum from [1, num].
func SquareOfSum(num int) int {
	sum := 0

	for i := 1; i <= num; i++ {
		sum += i
	}

	return int(math.Pow(float64(sum), 2.0))
}

// SumOfSquares calculates the sum of all the squares from [1, num].
func SumOfSquares(num int) int {
	sum := 0.0

	for i := 1.0; i <= float64(num); i++ {
		sum += math.Pow(float64(i), 2.0)
	}

	return int(sum)
}

// Difference finds the difference between SquareOfSum(num) and SumOfSquares(num).
func Difference(num int) int {
	return SquareOfSum(num) - SumOfSquares(num)
}
