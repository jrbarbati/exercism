package series

func All(length int, numbers string) []string {
	if length > len(numbers) {
		return nil
	}

	if length == len(numbers) {
		return []string{numbers}
	}

	series := make([]string, 0)

	for i := 0; i < len(numbers) - length + 1; i++ {
		series = append(series, numbers[i:length+i])
	}

	return series
}

func UnsafeFirst(length int, numbers string) string {
	return numbers[0:length]
}

func First(length int, numbers string) (string, bool) {
	if length > len(numbers) {
		return "", false
	}

	return UnsafeFirst(length, numbers), true
}
