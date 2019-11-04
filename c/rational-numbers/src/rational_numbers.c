#include <stdio.h>
#include <math.h>

#include "rational_numbers.h"

int absolute_value(int x);

int greatest_common_denominator(int x, int y);

rational_t add(rational_t x, rational_t y)
{
	rational_t sum = {x.numerator * y.denominator + x.denominator * y.numerator, x.denominator * y.denominator};
	return reduce(sum);
}

rational_t subtract(rational_t x, rational_t y)
{
	rational_t difference = {x.numerator * y.denominator - x.denominator * y.numerator, x.denominator * y.denominator};
	return reduce(difference);
}

rational_t multiply(rational_t x, rational_t y)
{
	rational_t product = {x.numerator * y.numerator, x.denominator * y.denominator};
	return reduce(product);
}

rational_t divide(rational_t x, rational_t y)
{
	rational_t quotient = {x.numerator * y.denominator, x.denominator * y.numerator};
	return reduce(quotient);
}

rational_t absolute(rational_t r)
{
	rational_t abs = {
		absolute_value(r.numerator), 
		absolute_value(r.denominator)
	};

	return reduce(abs);
}

rational_t exp_rational(rational_t r, int power)
{
	rational_t exp = {pow(r.numerator, power), pow(r.denominator, power)};
	return reduce(exp);
}

float exp_real(uint16_t num, rational_t power)
{
	printf("%d, %d, %d\n", num, power.numerator, power.denominator);
	return 0;
}

rational_t reduce(rational_t r)
{
	if (r.numerator == 0) 
	{
		rational_t reduced = {0, 1};
		return reduced;
	}

	int gcd = greatest_common_denominator(r.numerator, r.denominator);
	rational_t reduced = {r.numerator / gcd, r.denominator / gcd};

	return reduced;
}

int absolute_value(int x)
{
	return x >= 0 ? x : -x;
}

int greatest_common_denominator(int x, int y)
{
	int common_factor = 1, i;

	for (i = 1; i < x * y; i++)
		if (x % i == 0 && y % i == 0)
			common_factor = i;

	return common_factor;
}

