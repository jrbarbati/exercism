#include "pangram.h"
#include <set>
#include <locale>

#ifndef NUM_OF_LETTERS_IN_ALPHABET
#define NUM_OF_LETTERS_IN_ALPHABET 26
#endif

using namespace std;

set<char, greater<char>> letters(string input);

bool pangram::is_pangram(string input)
{
	set<char, greater<char>> uniqueLetters = letters(input);
	return uniqueLetters.size() == NUM_OF_LETTERS_IN_ALPHABET;
}

set<char, greater<char>> letters(string input)
{
	locale loc;
	set<char, greater<char>> uniqueLetters;

	for (auto elem : input)
		if (isalpha(elem))
			uniqueLetters.insert(tolower(elem, loc));

	return uniqueLetters;
}