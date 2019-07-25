// Package isogram provides string functions for isograms
package isogram

import (
	"strings"
	"unicode"
)

// IsIsogram checks if a candidate string has no repeating characters.
func IsIsogram(candidate string) bool {
	seenChars := map[rune]bool{}

	for _, char := range strings.ToLower(candidate) {
		if seenChars[char] {
			return false
		} else if unicode.IsLetter(char) {
			seenChars[char] = true
		}
	}

	return true
}
