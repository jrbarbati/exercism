// Package sieve contains methods for finding primes using the Sieve of E algorithm
package sieve

type mask struct {
	index uint
	mask  uint
}

var bits = [100000]uint64{0}

// Sieve finds all the prime numbers up to and including the limit.
func Sieve(limit int) []int {
	if limit < 2 {
		return []int{}
	}

	primes := make([]int, 0)
	primes = append(primes, 2)

	for i := 3; i <= limit; i += 2 {
		if bitIsFlipped(i) {
			continue
		}

		primes = append(primes, i)

		markAllMultiplesOf(i, limit)
	}

	return primes
}

func bitIsFlipped(value int) bool {
	mask := calculateMask(value)
	return (bits[mask.index] & (1 << mask.mask)) > 0
}

func markAllMultiplesOf(value, limit int) {
	for i := value * value; i <= limit; i += value {
		flipBit(i)
	}
}

func flipBit(value int) {
	mask := calculateMask(value)
	bits[mask.index] |= (1 << mask.mask)
}

func calculateMask(value int) mask {
	return mask{uint(value / 64), uint(value % 64)}
}
