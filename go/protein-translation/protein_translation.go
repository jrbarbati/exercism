// Package protein has methods regarding protein synthesis
package protein

import "errors"

var ErrInvalidBase = errors.New("RNA Sequence has invalid base")
var ErrStop = errors.New("Codon is a STOP codon")

var aminoAcids = map[string]string{
	"AUG": "Methionine",
	"UUU": "Phenylalanine",
	"UUC": "Phenylalanine",
	"UUA": "Leucine",
	"UUG": "Leucine",
	"UCU": "Serine",
	"UCC": "Serine",
	"UCA": "Serine",
	"UCG": "Serine",
	"UAU": "Tyrosine",
	"UAC": "Tyrosine",
	"UGU": "Cysteine",
	"UGC": "Cysteine",
	"UGG": "Tryptophan",
	"UAA": "STOP",
	"UAG": "STOP",
	"UGA": "STOP",
}

// FromCodon translates a single codon into a single amino acid
// returns a ErrStop error if the codon is a STOP codon and
// returns a ErrInvalidBase if the codon isn't known
func FromCodon(codon string) (string, error) {
	aminoAcid, ok := aminoAcids[codon]

	if !ok {
		return "", ErrInvalidBase
	}

	if aminoAcid == "STOP" {
		return "", ErrStop
	}

	return aminoAcid, nil
}

// FromRNA translates a RNA string into a slice of amino acid strings
// returns a ErrInvalidBase if a codon within the RNA is invalid
func FromRNA(rna string) ([]string, error) {
	protein := []string{}

	for i := 0; i < len(rna)-2; i += 3 {
		aminoAcid, err := FromCodon(rna[i : i+3])

		if err == nil {
			protein = append(protein, aminoAcid)
			continue
		}

		if err == ErrInvalidBase {
			return protein, ErrInvalidBase
		}

		if err == ErrStop {
			break
		}
	}

	return protein, nil
}
