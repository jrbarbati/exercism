// Package anagram contains a method for finding anagrams
package anagram

import (
	"reflect"
	"strings"
)

// Detect finds anagrams of subject from the candidates
func Detect(subject string, candidates []string) []string {
	anagrams := make([]string, 0)
	sub := asMap(subject)

	for _, candidate := range candidates {
		if strings.ToLower(subject) == strings.ToLower(candidate) {
			continue
		}

		c := asMap(candidate)

		if reflect.DeepEqual(sub, c) {
			anagrams = append(anagrams, candidate)
		}
	}

	return anagrams
}

func asMap(str string) map[rune]int {
	mapped := map[rune]int{}

	for _, char := range strings.ToLower(str) {
		mapped[char]++
	}

	return mapped
}
