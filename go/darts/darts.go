// Package darts implements methods regarding scoring and the game of darts
package darts

import "math"

// Score calculates the score of a single throw of a dart
func Score(x, y float64) int {
	radius := math.Sqrt(math.Pow(x, 2.0) + math.Pow(y, 2.0))

	if radius <= 1 {
		return 10
	}

	if radius <= 5 {
		return 5
	}

	if radius <= 10 {
		return 1
	}

	return 0
}