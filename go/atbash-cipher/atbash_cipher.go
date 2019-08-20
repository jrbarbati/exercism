// Package atbash contains methods for encoding strings via atbash algorithm.
package atbash

import (
	"regexp"
	"strings"
)

var atbashConversion = map[rune]rune{
		'a': 'z', 'b': 'y', 'c': 'x', 'd': 'w', 'e': 'v', 
		'f': 'u', 'g': 't', 'h': 's', 'i': 'r', 'j': 'q', 
		'k': 'p', 'l': 'o', 'm': 'n', 'n': 'm', 'o': 'l', 
		'p': 'k', 'q': 'j', 'r': 'i', 's': 'h', 't': 'g', 
		'u': 'f', 'v': 'e', 'w': 'd', 'x': 'c', 'y': 'b', 
		'z': 'a', '1': '1', '2': '2', '3': '3', '4': '4', 
		'5': '5', '6': '6', '7': '7', '8': '8', '9': '9',
	}

// Atbash encodes input and returns encoded string.
func Atbash(input string) string {
	input = removePunctuationAndSpacing(strings.ToLower(input))
	encoded := make([]rune, 0)
	counter := 0

	for _, letter := range input {
		if counter == 5 {
			encoded = append(encoded, ' ')
			counter = 0
		}

		encoded = append(encoded, atbashConversion[letter])

		counter++
	}

	return string(encoded)
}

func removePunctuationAndSpacing(input string) string {
	return regexp.MustCompile("[^a-zA-Z0-9]").ReplaceAllString(input, "")
}
