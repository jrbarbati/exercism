// Package romannumerals translates base 10 arabic numbers to roman numerals
package romannumerals

import "errors"

var arabicNumbers = []int{1000, 900, 500, 450, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1}
var romanNumerals = []string{"M", "CM", "D", "LD", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"}

// ToRomanNumerals translates arabic numbers to roman numerals.
func ToRomanNumeral(arabic int) (string, error) {
	if arabic < 1 || arabic > 3000 {
		return "", errors.New("Input to ToRomanNumeral() must be between 1 and 3000 (inclusive, inclusive)")
	}

	i := 0
	romanNumeral := ""

	for arabic > 0 {
		if arabic >= arabicNumbers[i] {
			romanNumeral += romanNumerals[i]
			arabic -= arabicNumbers[i]
		} else {
			i++
		}
	}

	return romanNumeral, nil
}
