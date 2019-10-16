def flatten_array(iterable: list, flattened: list) -> list:
	for item in iterable:
		if type(item) is list or type(item) is tuple:
			flattened = flatten_array(item, flattened)
			continue

		if item is not None:
			flattened.append(item)

	return flattened


def flatten(iterable: list) -> list:
	return flatten_array(iterable, [])
