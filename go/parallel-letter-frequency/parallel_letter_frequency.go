// Package letter contains methods to find the frequency of letters in a string.
package letter

// ConcurrentFrequency finds the frequency of runes in parallel for given strings.
func ConcurrentFrequency(strings []string) FreqMap {
	channel := make(chan FreqMap)
	frequencies := FreqMap{}

	for _, text := range strings {
		go countFrequency(text, channel)
	}

	for i := 0; i < len(strings); i++ {
		frequencies = combine(frequencies, <-channel)
	}

	return frequencies
}

func countFrequency(text string, channel chan FreqMap) {
	channel <- Frequency(text)
}

func combine(mainFreqMap, otherFreqMap FreqMap) FreqMap {
	for key, value := range otherFreqMap {
		mainFreqMap[key] += value
	}

	return mainFreqMap
}
