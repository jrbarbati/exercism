package raindrops

import (
	"strconv"
)

type Raindrop int

func (raindrop Raindrop) intValue() int {
	return int(raindrop)
}

func (raindrop Raindrop) hasFactor(factor int) bool {
	return raindrop.intValue() % factor == 0
}

func (raindrop Raindrop) speak() string {
	translation := Translation(map[int]string{3: "Pling", 5: "Plang", 7: "Plong"})

	word := ""

	for _, key := range translation.sortedKeys() {
		if raindrop.hasFactor(key) {
			word += translation[key]
		}
	}

	if word == "" {
		return strconv.FormatInt(int64(raindrop), 10)
	}

	return word
}