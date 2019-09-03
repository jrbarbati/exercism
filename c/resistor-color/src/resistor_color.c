#include "resistor_color.h"
#include <stdlib.h>

int colorCode(resistor_band_t resistor_band)
{
	return resistor_band;
}

resistor_band_t *colors()
{
	static resistor_band_t bands[] = {BLACK, BROWN, RED, ORANGE, YELLOW, GREEN, BLUE, VIOLET, GREY, WHITE};
	return bands;
}
