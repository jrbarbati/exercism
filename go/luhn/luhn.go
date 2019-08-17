// Package luhn contains a method validating a number matches the luhn algorithm.
package luhn

import (
	"strings"
	"unicode"
)

// Valid validates the input number is a valid luhn number.
func Valid(input string) bool {
	input = removeSpaces(input)

	if len(input) < 2 {
		return false
	}

	return validLuhnNumber(input)
}

func removeSpaces(input string) string {
	return strings.ReplaceAll(input, " ", "")
}

func validLuhnNumber(number string) bool {
	sum := 0

	for i, digit := range number {
		if !unicode.IsDigit(digit) {
			return false
		}

		num := int(digit - '0')
		if shouldDouble(i, len(number)) {
			sum += double(num)
		} else {
			sum += num
		}
	}

	return sum%10 == 0
}

func shouldDouble(currIndex, totalLength int) bool {
	if totalLength%2 == 1 && currIndex%2 == 1 {
		return true
	}

	if totalLength%2 == 0 && currIndex%2 == 0 {
		return true
	}

	return false
}

func double(digit int) (doubled int) {
	doubled = digit * 2

	if doubled > 9 {
		doubled -= 9
	}

	return
}
