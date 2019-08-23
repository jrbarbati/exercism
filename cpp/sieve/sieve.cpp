#include "sieve.h"
#include <iostream>

namespace sieve {

	typedef struct mask {
		uint index;
		uint mask;
	} mask_t;

	bool bit_is_flipped(uint value, unsigned long bits[100000]);
	void mark_all_multiples_of(uint value, int max, unsigned long bits[100000]);
	void flip_bit(uint value, unsigned long bits[100000]);
	mask_t calculate_mask(uint value);

	const int SIZE_OF_LONG_BITS = sizeof(long) * 4;

	std::vector<int> primes(int max)
	{
		std::vector<int> primes;
		unsigned long bits[100000] = {0,};

		for (int i = 2; i <= max; i++)
		{
			if (bit_is_flipped(i, bits))
				continue;

			primes.push_back(i);

			mark_all_multiples_of(i, max, bits);
		}
			
		return primes;
	}

	bool bit_is_flipped(uint value, unsigned long bits[100000])
	{
		mask_t mask = calculate_mask(value);
		return (bits[mask.index] & (1 << (mask.mask - 1))) > 0;
	}

	void mark_all_multiples_of(uint value, int max, unsigned long bits[100000])
	{
		for (int i = value * value; i <= max; i += value)
			flip_bit(i, bits);
	}

	void flip_bit(uint value, unsigned long bits[100000])
	{
		mask_t mask = calculate_mask(value);
		bits[mask.index] = bits[mask.index] | (1 << (mask.mask - 1));
	}

	mask_t calculate_mask(uint value)
	{
		return {value / SIZE_OF_LONG_BITS, value % SIZE_OF_LONG_BITS};
	}
}