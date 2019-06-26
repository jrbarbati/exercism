// Package collatzconjecture implements a method 
// to perform the Collatz Conjecture
package collatzconjecture

import "fmt"

// Function CollatzConjecture takes an int as
// input and returns the number of iterations it 
// takes to reach 1 from input.
// Returns an error if input is <= 0
func CollatzConjecture(input int) (int, error) {
	if input <= 0 {
		return -1, fmt.Errorf("Input must be positive - %v is non-positive", input)
	}

	numOfIterations := 0

	for input != 1 {

		if input % 2 == 0 {
			input /= 2
		} else {
			input = (3 * input) + 1
		}

		numOfIterations++
	}

	return numOfIterations, nil
}