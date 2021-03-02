// Package armstrong contains methods regarding armstrong numbers
package armstrong

import (
	"math"
)

// IsNumber takes a number and returns True if that number is an armstrong number
// otherwise, False.
func IsNumber(number int) bool {
	num := number
	digits := countNumberOfDigits(number)
	sum :=  0

	for num != 0 {
		digit := num % 10

		sum += int(math.Pow(float64(digit), float64(digits)))

		num /= 10
	}

	return sum == number
}


// countNumberOfDigits finds the number of digits in an integer
func countNumberOfDigits(number int) int {
	if number < 10 {
		return 1
	}

	return 1 + countNumberOfDigits(number / 10)
}
