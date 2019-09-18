def append(arr1, arr2):
	return arr1 + arr2


def concat(arrs):
	if len(arrs) == 0:
		return []

	master = arrs[0]

	for arr in arrs[1:]:
		master = append(master, arr)

	return master


def filter(predicate, arr):
	return [item for item in arr if predicate(item)]


def length(arr):
	return sum([1 for _ in arr])


def map(mapper, arr):
	return [mapper(item) for item in arr]


def foldl(function, arr, initial):
	result = initial

	for item in arr:
		result = function(result, item)

	return result


def foldr(function, arr, initial):
	result = initial

	for item in reverse(arr):
		result = function(item, result)

	return result


def reverse(arr):
	return arr[::-1]
