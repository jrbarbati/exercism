#include "secret_handshake.h"
#include <stdlib.h>

size_t calc_needed_size(size_t number);
const char **reverse(const char **string_array);
void swap(const char **string_array, int index1, int index2);

const int values[4] = {1, 2, 4, 8};
const char *moves[4] = {"wink", "double blink", "close your eyes", "jump"};

const char **commands(size_t number)
{
	const char **secret_handshake = calloc(calc_needed_size(number), sizeof(char *));
	int moveCounter = 0, i;

	for (i = 0; i < 4; i++)
		if ((number & values[i]) > 0)
			secret_handshake[moveCounter++] = moves[i];

	if ((number & 16) > 0) 
		return reverse(secret_handshake);

	return secret_handshake;
}

size_t calc_needed_size(size_t number)
{
	return (number & 1) + ((number >> 1) & 1) + ((number >> 2) & 1) + ((number >> 3) & 1);
}

const char **reverse(const char **string_array)
{
	int i, j;

	for (i = 0, j = 3; i < j; i++, j--)
		if (string_array[j])
			swap(string_array, i, j);
		else
			i--;

	return string_array;
}

void swap(const char **string_array, int index1, int index2)
{
	const char *temp = string_array[index1];
	string_array[index1] = string_array[index2];
	string_array[index2] = temp;
}
