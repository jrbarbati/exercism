// Package perfect contains methods for determining whether a number if perfect, abundant, or deficient.
package perfect

import (
	"errors"
)

// ErrOnlyPositive is the only error that can be returned from Classify().
var ErrOnlyPositive = errors.New("Number has to be non-negative")

// Classification is the parent type to the Classifications
type Classification string

// ClassificationAbundant is the Classification applied to abundant numbers.
var ClassificationAbundant Classification = "ClassificationAbundant"

// ClassificationDeficient is the Classification applied to deficient numbers.
var ClassificationDeficient Classification = "ClassificationDeficient"

// ClassificationPerfect is the Classification applied to perfect numbers.
var ClassificationPerfect Classification = "ClassificationPerfect"

// Classify determines the correct classification for the input number.
func Classify(number int64) (Classification, error) {
	if number <= 0 {
		return "", ErrOnlyPositive
	}

	var sumOfMultiples = calculateSumOfMultiples(number)

	if sumOfMultiples < number {
		return ClassificationDeficient, nil
	} else if sumOfMultiples == number {
		return ClassificationPerfect, nil
	} else {
		return ClassificationAbundant, nil
	}
}

func calculateSumOfMultiples(number int64) int64 {
	var sumOfMultiples int64
	
	for _, multiple := range findMultiplesOf(number) {
		sumOfMultiples += multiple
	}

	return sumOfMultiples - number
}

func findMultiplesOf(number int64) []int64 {
	var i int64
	multiples := make([]int64, 0)

	for i = 1; i*i < number; i++ {
		if number%i == 0 {
			multiples = append(multiples, i)
			multiples = append(multiples, number/i)
		}
	}

	return multiples
}
