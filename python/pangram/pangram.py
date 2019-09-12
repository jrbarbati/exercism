import re


def is_pangram(sentence: str) -> str:
	print(remove_non_chars(sentence))
	return len(set(remove_non_chars(sentence))) == 26


def remove_non_chars(sentence: str) -> str:
	return re.sub('[^a-z]', '', sentence.lower())
