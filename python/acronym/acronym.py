import re


def abbreviate(words: str) -> str:
    words = parse_words(words)
    print(words)
    return list(map(lambda word : word[0], words))


def parse_words(words: str) -> list:
	return re.findall('[A-Z]+\'[A-Z]+|[A-Z]+\-[A-Z]+|[A-Z]+', words.upper())


if __name__ == '__main__':
	print(abbreviate('The Road _Not_ Taken Halley\'s Comet lve-induced'))
	