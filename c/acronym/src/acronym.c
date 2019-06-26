#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "acronym.h"

bool part_of_abbreviation(const char *phrase, const int index);
char to_upper_case(char c);
bool is_lower_case(char c);

char *abbreviate(const char *phrase)
{
	if (!phrase || strlen(phrase) == 0)
		return NULL;

	size_t i, j;
	char *abbrevation = calloc(strlen(phrase), sizeof(char));
	j = 0;

	for (i = 0; i < strlen(phrase); i++)
		if (part_of_abbreviation(phrase, i))
			abbrevation[j++] = to_upper_case(phrase[i]);

	return abbrevation;
}

bool part_of_abbreviation(const char *phrase, const int index)
{
	return index == 0 || phrase[index - 1] == ' ' || phrase[index - 1] == '-';
}

char to_upper_case(char c)
{
	if (is_lower_case(c))
		return c - 32;

	return c;
}

bool is_lower_case(char c)
{
	return c >= 97 && c <= 122;
}
