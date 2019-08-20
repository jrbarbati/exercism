// Package secret contains methods to decode a secret handshake.
package secret

import "math"

var events = map[float64]string{
	1: "wink",
	2: "double blink",
	4: "close your eyes",
	8: "jump",
}

// Handshake decodes the input code into a list of handshake movements.
func Handshake(code uint) []string {
	var i uint
	movements := make([]string, 0)

	for i = 0; i <= 3; i++ {
		if (1<<i)&code > 0 {
			movements = append(movements, events[math.Pow(float64(2), float64(i))])
		}
	}

	if 16&code > 0 {
		return reverse(movements)
	}

	return movements
}

func reverse(strings []string) []string {
	for i, j := 0, len(strings)-1; i < j; i, j = i+1, j-1 {
		strings[i], strings[j] = strings[j], strings[i]
	}

	return strings
}
