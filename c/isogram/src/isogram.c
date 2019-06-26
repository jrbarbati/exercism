#include <stdio.h>
#include <string.h>
#include "isogram.h"

bool is_isogram(const char phrase[])
{
	size_t i, j;

	for (i = 0; i < strlen(phrase) - 1; i++)
		for (j = i + 1; j < strlen(phrase); j++)
			if (phrase[i] == phrase[j])
				return false;

	return true;
}
