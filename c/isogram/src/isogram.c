#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include "isogram.h"

char *to_lower_case(const char *string);
bool char_is_in(char *string, char c);

bool is_isogram(const char phrase[])
{
	if (!phrase)
		return false;

	int j = 0;
	char *letters = calloc(strlen(phrase), sizeof(char));
	phrase = to_lower_case(phrase);

	for(int i = 0; phrase[i]; i++)
	{
		if (char_is_in(letters, phrase[i]))
			return false;

		letters[j++] = phrase[i];
	}


	return true;
}

char *to_lower_case(const char *string)
{
	int j = 0;
	char *lower_cased = calloc(strlen(string), sizeof(char));

	for(int i = 0; string[i]; i++)
		if (isalpha(string[i]))
  			lower_cased[j++] = tolower(string[i]);

  	return lower_cased;
}

bool char_is_in(char *string, char c)
{
	for (int i = 0; string[i]; i++)
		if (string[i] == c)
			return true;

	return false;
}
