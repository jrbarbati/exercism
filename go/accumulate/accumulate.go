// Package accumulate maps a collection of items
package accumulate

// Accumualate takes a collection of things, and uses the mapper to map the
// collection and returns the result of the mapping.
func Accumulate(collection []string, mapper func(string) string) []string {
	for i, _ := range collection {
		collection[i] = mapper(collection[i])
	}

	return collection
}