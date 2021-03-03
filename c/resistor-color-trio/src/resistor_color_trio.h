#ifndef RESISTOR_COLOR_TRIO_H
#define RESISTOR_COLOR_TRIO_H

#include <stdint.h>

#define MAX_BUFFER = 9;

typedef enum resistor_unit
{
	OHMS,
	KILOOHMS
} resistor_unit_t;

typedef struct resistor_value 
{
	int value;
	resistor_unit_t unit;

} resistor_value_t;

typedef enum resistor_band
{
	BLACK = 0,
	BROWN = 1,
	RED = 2,
	ORANGE = 3,
	YELLOW = 4,
	GREEN = 5,
	BLUE = 6,
	VIOLET = 7,
	GREY = 8,
	WHITE = 9
} resistor_band_t;

resistor_value_t color_code(resistor_band_t *colors);

#endif
