#if !defined(TRIANGLE_H)
#define TRIANGLE_H

#include <stdexcept>

namespace triangle {

enum flavor 
{
	equilateral,
	isosceles,
	scalene
};

bool is_triangle(double a, double b, double c)
{
	if (a + b <= c)
		return false;

	if (a + c <= b)
		return false;

	if (b + c <= a)
		return false;

	return true;
}

bool is_equilateral(double a, double b, double c)
{
	return a == b && b == c;
}

bool is_isosceles(double a, double b, double c)
{
	return a == b || a == c || b == c;
}

flavor kind(double a, double b, double c)
{
	if (!is_triangle(a, b, c))
		throw std::domain_error("Sides do not make a valid triangle");

	if (is_equilateral(a, b, c))
		return triangle::flavor::equilateral;

	if (is_isosceles(a, b, c))
		return triangle::flavor::isosceles;

	return triangle::flavor::scalene;
}

}

#endif