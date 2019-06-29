#include "pangram.h"
#include <unordered_set>
#include <locale>

namespace pangram {

const int NUM_OF_LETTERS_IN_ALPHABET = 26;

std::unordered_set<char> uniqueLetters(const std::string &input)
{
	std::unordered_set<char> uniqueLetters;

	for (auto elem : input)
		if (isalpha(elem))
			uniqueLetters.insert(tolower(elem, std::locale::classic()));

	return uniqueLetters;
}

}

bool pangram::is_pangram(const std::string input)
{
	std::unordered_set<char> uniqueLetters = pangram::uniqueLetters(input);
	return uniqueLetters.size() == pangram::NUM_OF_LETTERS_IN_ALPHABET;
}
