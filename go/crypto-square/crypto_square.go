// Package cryptosquare contains methods for encoding strings via the square code
package cryptosquare

import (
	"regexp"
	"strings"
)

// Encode encodes the input strings using the square code.
func Encode(input string) string {
	if input == "" {
		return ""
	}

	trimmed := []rune(keepOnlyAlphaNumerics(input))
	rows, cols := calculateSquareSize(len(trimmed))
	rotated := rotateSquare(toSquare(trimmed, rows, cols), cols, rows)

	return toString(rotated)
}

func keepOnlyAlphaNumerics(input string) string {
	return regexp.MustCompile("[^a-zA-Z0-9]").ReplaceAllString(strings.ToLower(input), "")
}

func calculateSquareSize(lengthOfString int) (rows, cols int) {
	rows = 1
	cols = 1

	for rows * cols < lengthOfString {
		if cols - rows == 1 {
			rows++
		} else {
			cols++
		}
	}

	return
}

func toSquare(input []rune, rows, cols int) [][]rune {
	square := initializeSquare(rows, cols)

	for i := 0; i < rows; i++ {
		for j := 0; j < cols; j++ {
			if i * cols + j < len(input) {
				square[i][j] = input[i * cols + j]
			} else {
				square[i][j] = ' '
			}
		}
	}

	return square
}

func rotateSquare(square [][]rune, rows, cols int) [][]rune {
	rotated := initializeSquare(rows, cols)

	for i := range square {
		for j, char := range square[i] {
			rotated[j][i] = char
		}
	}

	return rotated
}

func initializeSquare(rows, cols int) [][]rune {
	square := make([][]rune, rows)

	for i := range square {
		square[i] = make([]rune, cols)
	}

	return square
}

func toString(square [][]rune) string {
	strs := make([]string, len(square))

	for i, row := range square {
		strs[i] = string(row)
	}

	return strings.Join(strs, " ")
}
