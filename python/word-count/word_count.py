import re
from collections import Counter


def count_words(sentence: str) -> dict:
    return Counter(to_word_array(sentence))


def to_word_array(sentence: str) -> list:
	return re.findall('[a-z]+\'[a-z]+|[a-z]+|[0-9]+', sentence.lower())
