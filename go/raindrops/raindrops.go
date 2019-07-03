// Package raindrops has a method for converting rain to sound.
package raindrops

import "strconv"

type sound struct {
	factor int
	sound  string
}

var sounds = [3]sound{sound{3, "Pling"}, sound{5, "Plang"}, sound{7, "Plong"}}

// Convert takes an integer input and converts it to raindrop sounds.
func Convert(input int) string {
	conversion := ""

	for _, sound := range sounds {
		if input%sound.factor == 0 {
			conversion += sound.sound
		}
	}

	if conversion == "" {
		return strconv.Itoa(input)
	}

	return conversion
}
