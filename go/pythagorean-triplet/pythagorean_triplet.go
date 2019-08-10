// Package pythagorean contains methods that finds triplets (a, b, c) where a**2 + b**2 = c**2.
package pythagorean

import "sort"

var priceMatrices = [3][3][3]int{
	{{2, 1, -1}, {-2, 2, 2}, {-2, 1, 3}},
	{{2, 1, 1}, {2, -2, 2}, {2, -1, 3}},
	{{2, -1, 1}, {2, 2, 2}, {2, 1, 3}},
}

// Range finds Pythagorean triplets from [min, max].
func Range(min, max int) []Triplet {
	triplets := make([]Triplet, 0)
	primitiveTriplets := []Triplet{Triplet{3, 4, 5}}
	multiplier := 1

	for len(primitiveTriplets) != 0 {
		primitiveTriplet := primitiveTriplets[0]

		if primitiveTriplet.c() > max {
			break
		}

		for {
			trip := primitiveTriplet.multiply(multiplier)
			multiplier++

			if trip.a() < min {
				continue
			}

			if trip.c() > max {
				break
			}

			triplets = append(triplets, trip)
		}

		multiplier = 1
		primitiveTriplets = primitiveTriplets[1:]
		primitiveTriplets = append(primitiveTriplets, buildNextTriplets(primitiveTriplet)...)
	}

	return sortTriplets(triplets)
}

// Sum finds Pythagorean triplets where a + b + c = sum.
func Sum(sum int) []Triplet {
	triplets := make([]Triplet, 0)
	primitiveTriplets := []Triplet{Triplet{3, 4, 5}}

	for len(primitiveTriplets) != 0 {
		primitiveTriplet := primitiveTriplets[0]

		if primitiveTriplet.sum() > sum {
			break
		}

		if sum%primitiveTriplet.sum() == 0 {
			triplets = append(triplets, primitiveTriplet.multiply(sum/primitiveTriplet.sum()))
		}

		primitiveTriplets = primitiveTriplets[1:]
		primitiveTriplets = append(primitiveTriplets, buildNextTriplets(primitiveTriplet)...)
	}

	return sortTriplets(triplets)
}

func buildNextTriplets(primitive Triplet) []Triplet {
	next := make([]Triplet, 0)

	for _, matrix := range priceMatrices {
		trip := nextTriplet(matrix, primitive)

		if !isPrimitive(trip) {
			continue
		}

		next = append(next, trip)
	}

	return next
}

func nextTriplet(matrix [3][3]int, primitive Triplet) Triplet {
	values := []int{
		primitive.a()*matrix[0][0] + primitive.b()*matrix[0][1] + primitive.c()*matrix[0][2],
		primitive.a()*matrix[1][0] + primitive.b()*matrix[1][1] + primitive.c()*matrix[1][2],
		primitive.a()*matrix[2][0] + primitive.b()*matrix[2][1] + primitive.c()*matrix[2][2],
	}

	sort.Ints(values)

	return Triplet{
		values[0],
		values[1],
		values[2],
	}
}

func isPrimitive(triplet Triplet) bool {
	return gcd(gcd(triplet[0], triplet[1]), triplet[2]) == 1
}

func gcd(a, b int) int {
	for b != 0 {
		a, b = b, a%b
	}

	return a
}

func sortTriplets(triplets []Triplet) []Triplet {
	for i := 0; i < len(triplets); i++ {
		for j := i + 1; j < len(triplets); j++ {
			if triplets[i].a() > triplets[j].a() {
				triplets[i], triplets[j] = triplets[j], triplets[i]
			}
		}
	}

	return triplets
}
