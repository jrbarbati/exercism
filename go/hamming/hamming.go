// Package hamming implements methods related with calculating hamming distance
package hamming

import (
	"errors"
)

// Distance calculates number of differences between 2 DNA strands of equal length.
func Distance(firstStrand, secondStrand string) (int, error) {
	if len(firstStrand) != len(secondStrand) {
		return 0, errors.New("DNA Strands must be the same length")
	}

	return hammingDistance(firstStrand, secondStrand), nil
}

func hammingDistance(firstStrand, secondStrand string) int {
	hammingDistance := 0

	for i, char := range firstStrand {
		if char != rune(secondStrand[i]) {
			hammingDistance++
		}
	}

	return hammingDistance
}
