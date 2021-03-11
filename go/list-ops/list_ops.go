// Package listops implements functional methods common to lists/arrays
package listops

// Function types
type unaryFunc func(int) int
type binFunc func(int, int) int
type predFunc func(int) bool

type IntList []int

// Foldl starts at the left (beginning) of IntList and accumulates a
// value using the accumulator function with initial value of initial
func (intList *IntList) Foldl(accumulator binFunc, initial int) int {
	accumulatedValue := initial

	for _, num := range *intList {
		accumulatedValue = accumulator(accumulatedValue, num)
	}

	return accumulatedValue
}

// Foldr starts at the right (end) of IntList and accumulates a
// value using the accumulator function with initial value of initial
func (intList *IntList) Foldr(accumulator binFunc, initial int) int {
	accumulatedValue := initial

	for i := len(*intList) - 1; i >= 0; i-- {
		accumulatedValue = accumulator((*intList)[i], accumulatedValue)
	}

	return accumulatedValue
}

// Filter returns an IntList that has values from intList 
// that return true from predicate function
func (intList *IntList) Filter(predicate predFunc) IntList {
	filtered := IntList(make([]int, 0))

	for _, num := range *intList {
		if predicate(num) {
			filtered = append(filtered, num)
		}
	}

	return filtered
}

// Length returns size of list
func (intList *IntList) Length() int {
	return len(*intList)
}

// Map maps all values in intList via the mapper function
func (intList *IntList) Map(mapper unaryFunc) IntList {
	for i, num := range *intList {
		(*intList)[i] = mapper(num)
	}

	return *intList
} 

// Reverse reverses order of intList in-place
func (intList *IntList) Reverse() IntList {
	i, j := 0, len(*intList) - 1

	for i < j {
		intList.swap(i, j)
		i++
		j--
	}

	return *intList
}

func (intList *IntList) swap(i, j int) {
	(*intList)[i], (*intList)[j] = (*intList)[j], (*intList)[i]
}

// Append adds values in list to end of intList
func (intList *IntList) Append(list IntList) IntList {
	for _, num := range list {
		*intList = append(*intList, num)
	}

	return *intList
}

// Concat adds values from all the IntLists in lists to 
// the end of intList
func (intList *IntList) Concat(lists []IntList) IntList {
	for _, list := range lists {
		intList.Append(list)
	}

	return *intList
}