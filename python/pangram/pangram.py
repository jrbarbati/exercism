import string


def is_pangram(sentence: str) -> str:
	return sum([1 for char in string.ascii_lowercase if char in sentence.lower()]) == 26
