#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include "isogram.h"

bool bit_is_flipped(int seen, char bit);
int flip_bit(int seen, char bit);

bool is_isogram(const char phrase[])
{
	if (!phrase)
		return false;

	int j, seen;
	char letter;
	j = 0;
	seen = 0;

	for (int i = 0; phrase[i]; i++)
	{
		if (!isalpha(phrase[i]))
			continue;

		letter = tolower(phrase[i]);

		if (bit_is_flipped(seen, letter))
			return false;

		seen = flip_bit(seen, letter);
	}

	return true;
}

bool bit_is_flipped(int seen, char bit)
{
	return seen > (seen ^ 1 << (bit - 97));
}

int flip_bit(int seen, char bit)
{
	return seen | 1 << (bit - 97);
}
