// Package luhn contains a method validating a number matches the luhn algorithm.
package luhn

import (
	"regexp"
	"strconv"
	"strings"
)

// Valid validates the input number is a valid luhn number.
func Valid(input string) bool {
	return validate(clean(input))
}

func clean(input string) string {
	return strings.ReplaceAll(input, " ", "")
}

func validate(input string) bool {
	if len(input) < 2 {
		return false
	}

	if containsNonNumbers(input) {
		return false
	}

	return validLuhnNumber(input)
}

func containsNonNumbers(input string) bool {
	return regexp.MustCompile(`[^0-9]+`).MatchString(input)
}

func validLuhnNumber(number string) bool {
	return sumOfDigits(reverse(doubleEveryOtherNumber(reverse(number))))%10 == 0
}

func reverse(s string) string {
	runes := []rune(s)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}

func doubleEveryOtherNumber(number string) string {
	doubled := ""

	for i := range number {
		digit, _ := strconv.Atoi(number[i : i+1])

		if i%2 == 1 {
			doubled += strconv.Itoa(double(digit))
		} else {
			doubled += strconv.Itoa(digit)
		}
	}

	return doubled
}

func double(digit int) (doubled int) {
	doubled = digit * 2

	if doubled > 9 {
		doubled -= 9
	}

	return
}

func sumOfDigits(digits string) int {
	sum := 0

	for i := range digits {
		num, _ := strconv.Atoi(digits[i : i+1])
		sum += num
	}

	return sum
}
