import random
import string


class Robot:

	used_names = set()

	def __init__(self):
		self.name = self.generate_name()

	def generate_name(self) -> str:
		name = ""

		for i in range(5):
			name += random.choice(string.ascii_uppercase if i < 2 else string.digits)

		if name in self.used_names:
			name = self.generate_name()

		self.used_names.add(name)

		return name

	def reset(self):
		self.name = self.generate_name()