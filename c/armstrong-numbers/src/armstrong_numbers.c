#include "armstrong_numbers.h"
#include <math.h>
#include <stdio.h>

int is_armstrong_number(int number)
{
	int sum = 0, armstrong_value = number, exp;
	char digits[100];
	exp = sprintf(digits, "%d", number);

	while (number != 0)
	{
		sum += pow(number%10, exp);
		number /= 10;
	}

	return sum == armstrong_value;
}
