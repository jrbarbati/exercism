def validate_input(number: int):
	if not (1 <= number <= 64):
		raise ValueError("{} is not a valid number".format(number))


def square(number: int) -> int:
	validate_input(number)

	return 1 << (number - 1)


def total(number: int) -> int:
	validate_input(number)

	return (1 << 64) - 1
