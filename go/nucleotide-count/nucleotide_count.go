// Package dna implements methods related to DNA and its nucleotides
package dna

import (
	"errors"
)

type Histogram map[rune]int

type DNA string

func (histogram Histogram) contains(nucleotide rune) bool {
	_, exists := histogram[nucleotide]
	return exists
}

// Counts generates a histogram of valid nucleotides in the given DNA.
// If there is an invalid nucleotide, we return an error
func (d DNA) Counts() (Histogram, error) {
	h := Histogram(map[rune]int{'A': 0, 'T': 0, 'C': 0, 'G': 0,})
 
	for _, nucleotide := range d {
		if !h.contains(nucleotide) {
			return nil, errors.New("invalid nucleotide")
		}

		h[nucleotide]++
	}

	return h, nil
}
