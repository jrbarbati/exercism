def distance(strand_a: str, strand_b: str) -> int:
	"""
	Calculates number of differences (hamming distance) between two equal
	length strings. Raises ValueError if the strings are different lengths
	"""
	if len(strand_a) != len(strand_b):
		raise ValueError("Strands must be same length.")

	return calculate_distance(strand_a, strand_b)


def calculate_distance(strand_a: str, strand_b: str) -> int:
	return sum([a != b for a, b in zip(strand_a, strand_b)])
