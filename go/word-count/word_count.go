// Package wordcount contains a method counting words in a given sentence.
package wordcount

import (
	"regexp"
	"strings"
	"unicode"
)

// Frequency is a wrapper type to count words
type Frequency map[string]int

func (frequency Frequency) add(word string) {
	frequency[word]++
}

// WordCount counts the occurances of each word in the sentence.
func WordCount(sentence string) Frequency {
	counts := Frequency{}

	for _, word := range parseWords(strings.ToLower(sentence)) {
		counts.add(word)
	}

	return counts
}

func parseWords(sentence string) []string {
	words := make([]string, 0)
	reg := regexp.MustCompile(`[\s,\n]+`)

	for _, word := range reg.Split(sentence, -1) {
		if word == "" {
			continue
		}

		words = append(words, processWord(word))
	}

	return words
}

func processWord(word string) string {
	processed := ""

	for i, char := range word {
		if shouldSkip(char, word, i) {
			continue
		}

		processed += string(char)
	}

	return processed
}

func shouldSkip(char rune, word string, i int) bool {
	return !unicode.IsLetter(char) && !unicode.IsDigit(char) && !isPartOfContraction(word, char, i-1, i+1)
}

func isPartOfContraction(word string, char rune, indexBefore, indexAfter int) bool {
	if char != '\'' {
		return false
	}

	return indexBefore > 0 && indexAfter < len(word) && char == '\''
}
