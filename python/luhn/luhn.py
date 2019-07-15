import re

class Luhn(object):
	def __init__(self, card_num: str):
		self.card_num = re.sub(' ', '', card_num.lower())

	def valid(self) -> bool:
		if len(self.card_num) <= 1: 
			return False

		if not self.has_only_digit_chars(self.card_num): 
			return False

		return self.calculate_luhn(self.card_num) == 0

	def has_only_digit_chars(self, card_num: str) -> bool:
		return len(re.sub('[0-9]', '', card_num)) == 0

	def calculate_luhn(self, card_num: str) -> int:
		return sum(list(map(lambda tup: int(tup[1]) if tup[0] % 2 == 0 else self.double(int(tup[1])), enumerate(card_num[::-1])))) % 10

	def double(self, num: int) -> int:
		return num * 2 if num * 2 < 10 else (num * 2) - 9
