#include "sum_of_multiples.h"

namespace sum_of_multiples 
{
	long to(std::vector<int> factors, size_t max)
	{
		long sum = 0;
		size_t j, i;

		for (i = 1; i < max; i++)
			for (j = 0; j < factors.size(); j++)
				if (i % factors[j] == 0)
				{
					sum += i;
					break;
				}

		return sum;
	}
}  // namespace sum_of_multiples
