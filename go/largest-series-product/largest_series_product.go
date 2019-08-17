// Package lsproduct contains a method to find the largest series product.
package lsproduct

import (
	"errors"
	"regexp"
	"strconv"
)

// LargestSeriesProduct calculates the largest product of span consecutive digits.
func LargestSeriesProduct(digits string, span int) (int, error) {
	if len(digits) < span {
		return -1, errors.New("span must be smaller than string length")
	}

	if !containsOnlyNumerics(digits) {
		return -1, errors.New("digits input must only contain digits")
	}

	if span < 0 {
		return -1, errors.New("span must be greater than zero")
	}

	return calculateLargestSeriesProduct(digits, span), nil
}

func containsOnlyNumerics(digits string) bool {
	return len(regexp.MustCompile("[0-9]").ReplaceAllString(digits, "")) == 0
}

func calculateLargestSeriesProduct(digits string, span int) int {
	max := 0

	for i := 0; i < len(digits)-span+1; i++ {
		currProd := product(digits[i : i+span])
		if currProd > max {
			max = currProd
		}
	}

	return max
}

func product(digits string) int {
	prod := 1

	for _, num := range digits {
		integer, _ := strconv.Atoi(string(num))
		prod *= integer
	}

	return prod
}
