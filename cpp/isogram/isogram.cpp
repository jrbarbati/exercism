#include "isogram.h"
#include <set>
#include <locale>

std::string letters(std::string input);
std::string to_lower_case(std::string input);

bool isogram::is_isogram(std::string input)
{
	input = to_lower_case(letters(input));
	std::set<char> uniqueLetters (input.begin(), input.end());

	return uniqueLetters.size() == input.size();
}

std::string letters(std::string input)
{
	std::string letters = "";

	for(char elem : input)
		if (isalpha(elem))
			letters.push_back(elem);

	return letters;
}

std::string to_lower_case(std::string input)
{
	std::string lower_case = "";

	for (char elem : input)
		lower_case.push_back(tolower(elem));

	return lower_case;
}
