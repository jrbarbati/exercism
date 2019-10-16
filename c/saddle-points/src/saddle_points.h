#ifndef SADDLE_POINTS_H
#define SADDLE_POINTS_H

#include <stdlib.h>

typedef struct saddle_point
{
	int row;
	int column;
} saddle_point_t;


typedef struct saddle_points
{
	int count;
	saddle_point_t *points;
} saddle_points_t;

saddle_points_t *saddle_points(size_t rows, size_t cols, uint8_t matrix[rows][cols]);
void free_saddle_points(saddle_points_t *saddle_points);

#endif
