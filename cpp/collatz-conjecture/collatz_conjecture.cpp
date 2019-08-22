#include "collatz_conjecture.h"
#include <stdexcept>
#include <iostream>

int collatz_conjecture::steps(long startingNumber)
{
	if (startingNumber < 1)
		throw std::domain_error("Starting number must be >= 1");

	if (startingNumber == 1)
		return 0;

	return startingNumber % 2 == 1 ? 2 + collatz_conjecture::steps((3 * startingNumber + 1) / 2) : 1 + collatz_conjecture::steps(startingNumber / 2);
}
