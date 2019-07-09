// Package etl extracts transforms and loads data
package etl

import "strings"

// Transform transforms a map of point -> characters into a map of character -> point
// for a game of scrabble.
func Transform(data map[int][]string) map[string]int {
	transformed := map[string]int{}

	for key, value := range data {
		for _, char := range value {
			transformed[strings.ToLower(char)] = key
		}
	}

	return transformed
}
