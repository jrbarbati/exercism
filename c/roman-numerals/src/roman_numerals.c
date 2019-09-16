#include "roman_numerals.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef ROMAN_NUMERAL_BUFFER
#define ROMAN_NUMERAL_BUFFER 101
#endif

char *to_roman_numeral(unsigned int number)
{
	const char *conversion_numeral[] = {"M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"};
	const unsigned int conversion_number[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	char *roman_numeral = calloc(ROMAN_NUMERAL_BUFFER, sizeof(char));
	int index = 0, buffer_pos = 0;

	while (number != 0 && buffer_pos < ROMAN_NUMERAL_BUFFER) 
		if (conversion_number[index] <= number)
		{
			sprintf(roman_numeral + buffer_pos, "%s", conversion_numeral[index]);
			buffer_pos += strlen(conversion_numeral[index]);
			number -= conversion_number[index];
		}
		else
			index++;

	return roman_numeral;
}
