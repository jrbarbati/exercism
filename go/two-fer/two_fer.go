// Package twofer implements a 2 for one style method
package twofer

import (
	"fmt"
)

// ShareWith returns a string representing who I am sharing the "2-for" with
func ShareWith(name string) string {
	if name == "" {
		name = "you"
	}

	return fmt.Sprintf("One for %s, one for me.", name)
}
