#include "saddle_points.h"
#include <stdio.h>

int is_saddle_point(size_t row, size_t col, size_t rows, size_t cols, uint8_t matrix[rows][cols]);

saddle_point_t saddle_point(size_t row, size_t column);

saddle_points_t *saddlePoints(size_t rows, size_t cols, uint8_t matrix[rows][cols])
{
	saddle_points_t *saddle_points = calloc(1, sizeof(saddle_points_t));
	saddle_points->points = calloc(rows * cols, sizeof(saddle_point_t));
	size_t row, col;

	if (matrix == NULL)
		return saddle_points;

	for (row = 0; row < rows; row++)
		for (col = 0; col < cols; col++)
            if (is_saddle_point(row, col, rows, cols, matrix))
                saddle_points->points[saddle_points->count++] = saddle_point(row, col);

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

saddle_point_t saddle_point(size_t row, size_t column)
{
    saddle_point_t sp = {row + 1, column + 1};
    return sp;
}
