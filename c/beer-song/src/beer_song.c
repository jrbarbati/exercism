#include "beer_song.h"
#include <stdio.h>
#include <string.h>

int verse(char *buffer, int verse_number)
{
	if (verse_number > 1)
	{
		return sprintf(
			buffer, 
			"%d bottles of beer on the wall, %d bottles of beer.\nTake one down and pass it around, %d %s of beer on the wall.\n",
			verse_number,
			verse_number,
			verse_number - 1,
			verse_number - 1 != 1 ? "bottles" : "bottle"
		);
	}

	return sprintf(
		buffer,
		verse_number == 1
			? "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
			: "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
	);
}

void sing(char *buffer, int starting_verse_number, int ending_verse_number)
{
	int cursor = 0, verse_number;

	for (verse_number = starting_verse_number; verse_number >= ending_verse_number; verse_number--)
	{
		cursor += verse(buffer + cursor, verse_number);

		if (verse_number != ending_verse_number)
			buffer[cursor++] = '\n';
	}
}
