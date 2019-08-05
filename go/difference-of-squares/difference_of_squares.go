// Package diffsquares contains mathematical methods to square sums, sum squares, etc.
package diffsquares

// SquareOfSum calculates the square of the sum from [1, num].
func SquareOfSum(num int) int {
	sum := (num * (num + 1)) / 2

	return sum * sum
}

// SumOfSquares calculates the sum of all the squares from [1, num].
func SumOfSquares(num int) int {
	return (num * (num + 1) * (2*num + 1)) / 6
}

// Difference finds the difference between SquareOfSum(num) and SumOfSquares(num).
func Difference(num int) int {
	return SquareOfSum(num) - SumOfSquares(num)
}
