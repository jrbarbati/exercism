#include "pangram.h"
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

char *lower_case_letters(const char *string);

int flip_bit(int seen, char c);

const int TWENTY_SIX_BITS_FLIPPED = 67108863;

bool is_pangram(const char *sentence)
{
    if (!sentence)
        return false;

	int i, seen = 0;
	char *letters_only = lower_case_letters(sentence);

	for (i = 0; letters_only[i]; i++)
		seen = flip_bit(seen, letters_only[i]);

	free(letters_only);

	return seen == TWENTY_SIX_BITS_FLIPPED;
}

char *lower_case_letters(const char *string)
{
    int i, j = 0;
    char *letters_only = calloc(strlen(string), sizeof(char));

    for (i = 0; string[i]; i++)
        if (isalpha(string[i]))
            letters_only[j++] = tolower(string[i]);

    return letters_only;
}

int flip_bit(int seen, const char c)
{
    return seen | 1 << (c - 97);
}
