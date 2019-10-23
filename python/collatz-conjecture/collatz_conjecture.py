def steps(number: int, num_steps: int = 0) -> int:
	if number < 1:
		raise ValueError("input number has to be >= 1")

	if number == 1:
		return num_steps

	return steps(number * 3 + 1 if number % 2 == 1 else number / 2, num_steps=num_steps + 1)
