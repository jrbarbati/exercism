// Package isogram implements methods regarding isograms.
package isogram

import (
	"strings"
	"unicode"
)

// IsIsogram checks if a word has any repeated characters, if so returns false
// if there are not repeated characters, returns true,
func IsIsogram(candidate string) bool {
	seen_chars := map[rune]interface{}{}

	for _, char := range strings.ToLower(candidate) {
		if _, ok := seen_chars[char]; ok {
			return false
		} else if unicode.IsLetter(char) {
			seen_chars[char] = ""
		}
	}

	return true
}