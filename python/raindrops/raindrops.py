conversions = {
	3: 'Pling',
	5: 'Plang',
	7: 'Plong'
}


def convert(number: int) -> str:
	conversion = "".join([value for key, value in conversions.items() if number % key == 0])

	return conversion if conversion is not "" else str(number)
