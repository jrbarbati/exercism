// Package grains contains methods for calculating the grains a person would get given a place on the chessboard.
package grains

import "errors"

// Square calculates the grains a person would get given a place on the chessboard.
func Square(place int) (uint64, error) {
	if 0 >= place || place >= 65 {
		return 0, errors.New("place must be 0 < place < 65")
	}

	return 1 << (uint(place) - 1), nil
}

// Total returns total number of grains the servant would get.
func Total() uint64 {
	return 0xFFFFFFFFFFFFFFFF
}
