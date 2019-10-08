#include "square_root.h"
#include <math.h>

int rough_estimate(int radicand);

/*
 * Implements Babylonian method to estimate the square root.
 */
int squareRoot(int radicand)
{
	float square_root = rough_estimate(radicand);
	float prev_value = 1;

	while (square_root != prev_value)
	{
		prev_value = square_root;
		square_root = 0.5 * (prev_value + (radicand / prev_value));
	}

	return square_root;
}

int rough_estimate(int radicand)
{
	double n = 0;

	while (radicand > 100)
	{
		radicand /= 100;
		n++;
	}

	return (radicand < 10 ? 2 : 6) * pow(10.0, n);
}
