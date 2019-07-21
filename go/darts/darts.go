// Package darts implements methods regarding scoring and the game of darts
package darts

import "math"

// Score calculates the score of a single throw of a dart
func Score(x, y float64) int {
	radius := math.Hypot(x, y)

	switch {
	case radius <= 1:
		return 10
	case radius <= 5:
		return 5
	case radius <= 10:
		return 1
	default:
		return 0
	}
}