// Package encode contains methods that compress and decompress using run-length algorithms.
package encode

import (
	"strconv"
	"strings"
)

// RunLengthEncode encodes the input string using run-length-encoding algorithm.
func RunLengthEncode(input string) (encoded string) {
	return processInput(input, encodeString)
}

// RunLengthDecode decodes the input string using run-length-decoding algorithm.
func RunLengthDecode(input string) string {
	return processInput(input, decodeString)
}

func processInput(input string, processor func(string) string) string {
	if len(input) == 0 {
		return ""
	}

	return processor(input)
}

func encodeString(input string) string {
	return buildString(input, lettersAndCountsForEncoding, buildEncodedStringForChar)
}

func decodeString(input string) string {
	return buildString(input, lettersAndCountsForDecoding, strings.Repeat)
}

func buildString(input string, lettersAndCounts func(string) ([]string, []int), letterMapper func(string, int) string) string {
	letters, counts := lettersAndCounts(input)
	str := ""

	for i, letter := range letters {
		str += letterMapper(letter, counts[i])
	}

	return str
}

func lettersAndCountsForEncoding(input string) ([]string, []int) {
	letters := make([]string, 0)
	counts := make([]int, 0)
	count := 0
	prevChar := input[0:1]

	for i := range input {
		char := input[i : i+1]

		if char != prevChar {
			letters = append(letters, prevChar)
			counts = append(counts, count)
			count = 1
			prevChar = char
		} else {
			count++
		}
	}

	letters = append(letters, prevChar)
	counts = append(counts, count)

	return letters, counts
}

func lettersAndCountsForDecoding(input string) ([]string, []int) {
	letters := make([]string, 0)
	counts := make([]int, 0)
	number := ""

	for i := range input {
		currentChar := input[i : i+1]

		if _, err := strconv.Atoi(currentChar); err == nil {
			number += currentChar
			continue
		}

		letters = append(letters, currentChar)
		counts = append(counts, parseInt(number))
		number = ""
	}

	return letters, counts
}

func parseInt(number string) (count int) {
	count, err := strconv.Atoi(number)

	if err != nil {
		count = 1
	}

	return
}

func buildEncodedStringForChar(letter string, count int) string {
	if count > 1 {
		return (strconv.Itoa(count) + letter)
	}

	return letter
}
