#include "armstrong_numbers.h"
#include <math.h>
#include <stdio.h>
#include <string.h>

int isArmstrongNumber(int number)
{
	int sum = 0, armstrong_value = number, exp = strlen(digits);
	char digits[100];
	sprintf(digits, "%d", number);

	while (number != 0)
	{
		sum += pow(number%10, exp);
		number /= 10;
	}

	return sum == armstrong_value;
}
