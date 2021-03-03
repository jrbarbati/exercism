#include <math.h>
#include <stdio.h>
#include "resistor_color_trio.h"

resistor_value_t color_code(resistor_band_t *colors)
{
	int ohms = (colors[0] * 10 + colors[1]) * pow(10, colors[2]);
	resistor_unit_t unit = OHMS;

	if (ohms >= 1000)
	{
		ohms /= 1000;
		unit = KILOOHMS;
	}

	resistor_value_t value = { ohms, unit };
	return value;
}
