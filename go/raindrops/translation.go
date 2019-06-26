package raindrops

import (
	"sort"
)

type Translation map[int]string

func (translation Translation) keys() []int {
	keys := make([]int, 0)

	for key, _ := range translation {
		keys = append(keys, key)
	}

	return keys
}

func (translation Translation) sortedKeys() []int {
	keys := translation.keys()
	sort.Ints(keys)
	return keys 
}