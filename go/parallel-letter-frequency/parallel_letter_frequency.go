// Package letter contains methods to find the frequency of letters in a string.
package letter

// ConcurrentFrequency finds the frequency of runes in parallel for given strings.
func ConcurrentFrequency(strings []string) FreqMap {
	channel := make(chan FreqMap)
	frequencies := FreqMap{}

	for _, text := range strings {
		go func (text string) {
			channel <- Frequency(text)
		}(text)
	}

	for range strings {
		frequencies = combine(frequencies, <-channel)
	}

	return frequencies
}

func combine(main, other FreqMap) FreqMap {
	for key, value := range other {
		main[key] += value
	}

	return main
}
