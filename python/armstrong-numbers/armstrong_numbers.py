def is_armstrong_number(number: int) -> bool:
	digits = len(str(number))
	return sum([int(num)**digits for num in str(number)]) == number
