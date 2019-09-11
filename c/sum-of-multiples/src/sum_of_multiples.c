#include "sum_of_multiples.h"

unsigned int sum_of_multiples(const unsigned int *multiples,
							  const size_t number_of_multiples,
							  const unsigned int up_to)
{
	if (multiples == NULL)
		return 0;

	unsigned int i, j, sum = 0;

	for (i = 1; i < up_to; i++)
		for (j = 0; j < number_of_multiples; j++)
			if (multiples[j] != 0 && i % multiples[j] == 0)
			{
				sum += i;
				break;
			}

	return sum;
}
