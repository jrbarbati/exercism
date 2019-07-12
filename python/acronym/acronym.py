import re


def abbreviate(words: str) -> str:
    words = parse_words(words.upper())
    return "".join(list(map(lambda word : word[0], words)))


def parse_words(words: str) -> list:
	return re.findall('[A-Z]+\'[A-Z]+|[A-Z]+', words)
	