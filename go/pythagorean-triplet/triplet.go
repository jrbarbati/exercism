package pythagorean

import "fmt"

// Triplet wraps an integer array of size 3.
type Triplet [3]int

func (triplet Triplet) String() string {
	return fmt.Sprintf("{ %v, %v, %v }", triplet[0], triplet[1], triplet[2])
}

func (triplet Triplet) a() int {
	return triplet[0]
}

func (triplet Triplet) b() int {
	return triplet[1]
}

func (triplet Triplet) c() int {
	return triplet[2]
}

func (triplet Triplet) sum() int {
	return triplet.a() + triplet.b() + triplet.c()
}

func (triplet Triplet) multiply(multiplier int) Triplet {
	return Triplet{
		triplet.a() * multiplier,
		triplet.b() * multiplier,
		triplet.c() * multiplier,
	}
}