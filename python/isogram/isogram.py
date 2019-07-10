import re


def is_isogram(string: str) -> bool:
    alphas = re.sub('[^a-z]', '', string.lower())

    return len(set(alphas)) == len(alphas)
