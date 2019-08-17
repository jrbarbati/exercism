def find(array: list, value: int) -> int:
	return _search(value, array, 0, len(array) - 1)


def _search(value: int, array: list, beginIndex: int, endIndex: int) -> int:
	if beginIndex > endIndex:
		raise ValueError('{} could not be found in {}'.format(value, array))

	middleIndex = ((endIndex - beginIndex) // 2) + beginIndex

	if value > array[middleIndex]:
		return _search(value, array, middleIndex + 1, endIndex)

	if value < array[middleIndex]:
		return _search(value, array, beginIndex, middleIndex - 1)

	return middleIndex
