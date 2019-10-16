#include "saddle_points.h"
#include <stdio.h>

int is_saddle_point(size_t row, size_t col, size_t rows, size_t cols, uint8_t matrix[rows][cols]);

saddle_points_t *saddle_points(size_t rows, size_t cols, uint8_t matrix[rows][cols])
{
	saddle_points_t *saddle_points = calloc(1, sizeof(saddle_points_t));
	saddle_points->points = calloc(rows * cols, sizeof(saddle_point_t));
	size_t row, col;

	if (matrix == NULL)
		return saddle_points;

	for (row = 0; row < rows; row++)
		for (col = 0; col < cols; col++)
			if (is_saddle_point(row, col, rows, cols, matrix))
			{
				saddle_points->points[saddle_points->count].row = row + 1;
				saddle_points->points[saddle_points->count++].column = col + 1;
			}

	return saddle_points;
}

int is_saddle_point(size_t row, size_t col, size_t rows, size_t cols, uint8_t matrix[rows][cols])
{
	size_t i;
	
	for (i = 0; i < cols; i++)
		if (matrix[row][col] < matrix[row][i])
			return 0;
	
	for (i = 0; i < rows; i++)
		if (matrix[row][col] > matrix[i][col])
			return 0;
	
	return 1;
}

void free_saddle_points(saddle_points_t *saddle_points)
{
	free(saddle_points->points);
	free(saddle_points);
}
