#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include "isogram.h"

char *to_lower_case(const char *string);
bool bit_is_flipped(int seen, char bit);
int flip_bit(int seen, char bit);

bool is_isogram(const char phrase[])
{
	if (!phrase)
		return false;

	int j, seen;
	phrase = to_lower_case(phrase);
	j = 0;
	seen = 0;

	for (int i = 0; phrase[i]; i++)
	{
		if (bit_is_flipped(seen, phrase[i]))
			return false;

		seen = flip_bit(seen, phrase[i]);
	}

	return true;
}

char *to_lower_case(const char *string)
{
	int j = 0;
	char *lower_cased = calloc(strlen(string), sizeof(char));

	for (int i = 0; string[i]; i++)
		if (isalpha(string[i]))
  			lower_cased[j++] = tolower(string[i]);

  	return lower_cased;
}

bool bit_is_flipped(int seen, char bit)
{
	return seen > (seen ^ 1 << (bit - 97));
}

int flip_bit(int seen, char bit)
{
	return seen | 1 << (bit - 97);
}
