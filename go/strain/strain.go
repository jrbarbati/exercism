// Pacakage strain has methods for collections of ints and strings
// that either keep or discard elements based on a predicate.
package strain

type Ints []int
type Lists [][]int
type Strings []string

// Keep keeps integers in the list where the predicate returns true.
func (ints Ints) Keep(predicate func(int) bool) Ints {
	if ints == nil {
		return nil
	}

	kept := Ints([]int{})

	for _, value := range ints {
		if predicate(value) {
			kept = append(kept, value)
		}
	}

	return kept
}

// Discard keeps integers in the list where the predicate returns false
// effectively removing things where the predicate returns true.
func (ints Ints) Discard(predicate func(int) bool) Ints {
	return ints.Keep(func(n int) bool {
		return !predicate(n)
	})
}

// Keep keeps integer slices in the list where the predicate returns true.
func (lists Lists) Keep(predicate func([]int) bool) Lists {
	if lists == nil {
		return nil
	}

	kept := Lists([][]int{})

	for _, list := range lists {
		if predicate(list) {
			kept = append(kept, list)
		}
	}

	return kept
}

// Keep keeps strings in the list where the predicate returns true.
func (strings Strings) Keep(predicate func(string) bool) Strings {
	if strings == nil {
		return nil
	}

	kept := Strings([]string{})

	for _, str := range strings {
		if predicate(str) {
			kept = append(kept, str)
		}
	}

	return kept
}
