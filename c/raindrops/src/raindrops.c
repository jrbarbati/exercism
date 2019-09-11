#include "raindrops.h"
#include <stdio.h>
#include <string.h>

const int factors[] = {3, 5, 7};
const char *raindrops[] = {"Pling", "Plang", "Plong"};

char *convert(char result[], int drops)
{
	for (int i = 0; i < 3; i++)
		if (drops % factors[i] == 0)
			sprintf(result + strlen(result), "%s", raindrops[i]);

	if (strlen(result) == 0)
		sprintf(result, "%d", drops);

	return result;
}
