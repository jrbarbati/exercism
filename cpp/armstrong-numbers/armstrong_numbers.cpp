#include "armstrong_numbers.h"

namespace armstrong_numbers 
{
	int power(int num, int exp);
	int count_digits(int num);

	bool is_armstrong_number(const int num)
	{
		int digit, number, sum, num_of_digits;

		num_of_digits = count_digits(num);
		number = num;
		sum = 0;

		while (number != 0)
		{
			digit = number % 10;
			
			sum += power(digit, num_of_digits);

			number /= 10;
		}

		return sum == num;
	}

	int power(int num, int exp)
	{
		if (exp == 0)
			return 1;

		return num * power(num, exp - 1);
	}

	int count_digits(int num)
	{
		int number = 0;

		while (num != 0)
		{
			number++;
			num /= 10;
		}

		return number;
	}
}  // namespace armstrong_numbers
