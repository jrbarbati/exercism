// Package armstrong contains methods regarding armstrong numbers
package armstrong

// IsNumber takes a number and returns True if that number is an armstrong number
// otherwise, False.
func IsNumber(number int) bool {
	num := number
	numberOfDigits := countNumberOfDigits(number)
	sum :=  0

	for num != 0 {
		digit := num % 10

		sum += power(digit, numberOfDigits)

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

// power calculates num^exponent
func power(num, exponent int) int {
	if exponent == 0 {
		return 1
	}

	return num * power(num, exponent - 1)
}
