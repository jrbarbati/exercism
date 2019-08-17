#include "raindrops.h"
#include <map>

const std::map<int, std::string> drops{
	{3, "Pling"},
	{5, "Plang"},
	{7, "Plong"}
};

std::string raindrops::convert(int rain)
{
	std::string speak;

	for (auto itr = drops.begin(); itr != drops.end(); itr++)
		speak += rain % itr->first == 0 ? itr->second : "";

	return !speak.empty() ? speak : std::to_string(rain);
}
