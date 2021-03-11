// Package anagram contains a method for finding anagrams
package anagram

import (
	"strings"
)

// Detect finds anagrams of subject from the candidates
func Detect(subject string, candidates []string) []string {
	anagrams := make([]string, 0)
	subject = strings.ToLower(subject)

	for _, candidate := range candidates {
		if isAnagram(subject, strings.ToLower(candidate)) {
			anagrams = append(anagrams, candidate)
		}
	}

	return anagrams
}

func isAnagram(subject, candidate string) bool {
	if len(subject) != len(candidate) || subject == candidate {
		return false
	}

	for _, char := range subject {
		c := string(char)
		if strings.Count(subject, c) != strings.Count(candidate, c) {
			return false
		}
	}

	return true
}
