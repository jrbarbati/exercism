#ifndef RATIONAL_NUMBERS
#define RATIONAL_NUMBERS

#include <stdint.h>

typedef struct rational
{
	int numerator;
	int denominator;
} rational_t;

rational_t add(rational_t x, rational_t y);

rational_t subtract(rational_t x, rational_t y);

rational_t multiply(rational_t x, rational_t y);

rational_t divide(rational_t x, rational_t y);

rational_t absolute(rational_t r);

rational_t exp_rational(rational_t r, int power);

float exp_real(uint16_t num, rational_t power);

rational_t reduce(rational_t r);


#endif
