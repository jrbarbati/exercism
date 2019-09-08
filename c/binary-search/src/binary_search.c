#include "binary_search.h"

const int *search(int value, const int *arr, size_t length, int start_index, int end_index);

const int *binary_search(int value, const int *arr, size_t length)
{
	if (arr == NULL)
		return NULL;
	
	return search(value, arr, length, 0, length - 1);
}

const int *search(int value, const int *arr, size_t length, int start_index, int end_index)
{
	int middle_index = ((end_index - start_index) / 2) + start_index;

	if (start_index > end_index)
		return NULL;

	if (arr[middle_index] == value)
		return &arr[middle_index];

	return arr[middle_index] > value 
			? search(value, arr, length, start_index, middle_index - 1)
			: search(value, arr, length, middle_index + 1, end_index);
}
