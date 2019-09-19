#include "difference_of_squares.h"

int difference_of_squares::square_of_sum(int num)
{
	int sum = 0;

	for (int i = 1; i <= num; i++)
		sum += i;

	return sum * sum;
}

int difference_of_squares::sum_of_squares(int num)
{
	int sum = 0;

	for (int i = 1; i <= num; i++)
		sum += i * i;
	
	return sum;
}

int difference_of_squares::difference(int num) 
{
	return square_of_sum(num) - sum_of_squares(num);
}