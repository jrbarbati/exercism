#include "rational_numbers.h"
#include <math.h>
#include <stdio.h>

static int int_absolute(int num);
static int gcd(int num1, int num2);

rational_t add(rational_t r1, rational_t r2)
{
	int numerator, denominator;

	numerator = r1.numerator * r2.denominator + r1.denominator * r2.numerator;
	denominator = r1.denominator * r2.denominator;

	rational_t result = {numerator, denominator};

	return reduce(result);
}

rational_t subtract(rational_t r1, rational_t r2)
{
	int numerator, denominator;

	numerator = r1.numerator * r2.denominator - r1.denominator * r2.numerator;
	denominator = r1.denominator * r2.denominator;

	rational_t result = {numerator, denominator};

	return reduce(result);
}

rational_t multiply(rational_t r1, rational_t r2)
{
	rational_t result = {r1.numerator * r2.numerator, r1.denominator * r2.denominator};
	return reduce(result);
}

rational_t divide(rational_t r1, rational_t r2)
{
	rational_t result = {r1.numerator * r2.denominator, r1.denominator * r2.numerator};
	return reduce(result);
}

rational_t absolute(rational_t r)
{
	rational_t result = {int_absolute(r.numerator), int_absolute(r.denominator)};
	return result;
}

rational_t exp_rational(rational_t r, uint16_t n)
{
	rational_t result = {pow(r.numerator, n), pow(r.denominator, n)};
	return result;
}

float exp_real(uint16_t x, rational_t r)
{
	if (r.numerator == 0)
		return 1;

	float power = (float) r.numerator / (float) r.denominator;

	return pow(x, power);
}

rational_t reduce(rational_t r)
{
	int d, numerator, denominator;

	d = gcd(r.numerator, r.denominator);
	numerator = r.numerator / d;
	denominator =  r.denominator / d;

	if (denominator < 0)
	{
		numerator = -numerator;
		denominator = -denominator;
	}

	rational_t result = {numerator, denominator};
	
	return result;
}

static int int_absolute(int num)
{
	return num >= 0 ? num : -num;
}

static int gcd(int num1, int num2)
{
	if (num1 == 0) 
		return num2;

	num1 = int_absolute(num1);
	num2 = int_absolute(num2);

	while (num1 != num2)
	{
		if (num1 > num2)
			num1 -= num2;
		else
			num2 -= num1;
	}

	return num1;
}
