#include "hamming.h"
#include <string.h>

int hamming_distance(const char *strand_a, const char *strand_b);

int compute(const char *strand_a, const char *strand_b)
{
	if (!strand_a || !strand_b)
		return -1;

	if (strlen(strand_a) != strlen(strand_b))
		return -1;

	return hamming_distance(strand_a, strand_b);
}

int hamming_distance(const char *strand_a, const char *strand_b)
{
	int i, hamming_distance = 0;

	for (i = 0; strand_a[i]; i++)
		if (strand_a[i] != strand_b[i])
			hamming_distance++;

	return hamming_distance;
}
