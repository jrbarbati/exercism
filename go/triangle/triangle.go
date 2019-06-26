package triangle

import (
	"math"
)

type Kind string

const (
    NaT Kind = "NaT" // not a triangle
    Equ Kind = "Equ" // equilateral
    Iso Kind = "Iso" // isosceles
    Sca Kind = "Sca" // scalene
)

func KindFromSides(a, b, c float64) Kind {
	var k Kind

	if !isTriangle(a, b, c) {
		k = NaT
	} else if isEquilateral(a, b, c) {
		k = Equ
	} else if isIsosceles(a, b, c) {
		k = Iso
	} else {
		k = Sca
	}

	return k
}

func isTriangle(a, b, c float64) bool {
	if anyAreInvalid(a, b, c) {
		return false
	}

	if allZeroes(a, b, c) {
		return false
	}

	if a + b < c {
		return false
	}

	if a + c < b {
		return false
	}

	if b + c < a {
		return false
	}

	return true
}

func anyAreInvalid(nums ...float64) bool {
	if anyAreNaN(nums) {
		return true
	}

	if anyAreInf(nums) {
		return true
	}

	return false
}

func anyAreNaN(nums []float64) bool {
	for _, num := range nums {
		if math.IsNaN(num) {
			return true
		}
	}

	return false
}

func anyAreInf(nums []float64) bool {
	for _, num := range nums {
		if math.IsInf(num, 1) {
			return true
		}

		if math.IsInf(num, -1) {
			return true
		}
	}

	return false
}

func allZeroes(a, b, c float64) bool {
	return a == 0 && isEquilateral(a, b, c)
}

func isEquilateral(a, b, c float64) bool {
	return a == b && b == c
}

func isIsosceles(a, b, c float64) bool {
	return a == b || b == c || a == c
}
