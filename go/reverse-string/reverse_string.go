// Package reverse implements reversing methods
package reverse

import (
	"strings"
)

// Reverse reverses a given string
func Reverse(input string) string {
	runes := []rune(input)
	builder := strings.Builder{}

	for i := len(runes) - 1; i >= 0; i-- {
		builder.WriteRune(runes[i])
	}

	return builder.String()
}
