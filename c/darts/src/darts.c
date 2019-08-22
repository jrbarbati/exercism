#include "darts.h"
#include <stdbool.h>
#include <math.h>

bool landed_within_radius(const coordinate_t *landing_position, float radius);

typedef struct scoring {
	float radius;
	uint8_t score;
} scoring_t;

const scoring_t scoring_system[] = {
	{1.0F, 10},
	{5.0F, 5},
	{10.0F, 1}
};

uint8_t score(coordinate_t landing_position)
{
	for (int i = 0; i < 3; i++)
		if (landed_within_radius(&landing_position, scoring_system[i].radius))
			return scoring_system[i].score;

	return 0u;
}

bool landed_within_radius(const coordinate_t *landing_position, float radius)
{
	return sqrt(landing_position->x * landing_position->x + landing_position->y * landing_position->y) <= radius;
}
