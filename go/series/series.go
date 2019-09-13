// Package series contains methods for creating a series of strings given a length and a string
package series

// All finds all the series that can be made given the desired length and an inital string of numbers.
func All(length int, numbers string) []string {
	if length > len(numbers) {
		return nil
	}

	if length == len(numbers) {
		return []string{numbers}
	}

	series := make([]string, 0)

	for i := 0; i < len(numbers)-length+1; i++ {
		series = append(series, numbers[i:length+i])
	}

	return series
}

// UnsafeFirst unsafely finds the first instance of a string with the desired length from the string of numbers.
func UnsafeFirst(length int, numbers string) string {
	return numbers[0:length]
}

// First safely finds the first instance of a string with the desired length from the string of numbers.
func First(length int, numbers string) (string, bool) {
	if length > len(numbers) {
		return "", false
	}

	return UnsafeFirst(length, numbers), true
}
