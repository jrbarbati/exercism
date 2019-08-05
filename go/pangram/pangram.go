// Package pangram contains a method checking for pangrams
package pangram

import (
	"strings"
	"unicode"
)

const seenAllTwentySixChars int = 0x3FFFFFF

// IsPangram checks if candidate contains all letters of the alphabet
func IsPangram(candidate string) bool {
	seen := 0

	for _, char := range strings.ToLower(candidate) {
		if unicode.IsLetter(char) {
			seen = flipBit(char, seen)
		}
	}

	return seen == seenAllTwentySixChars
}

func flipBit(char rune, seen int) int {
	return seen | 1<<uint(char-97)
}
