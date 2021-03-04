#include <string.h>
#include "grade_school.h"

namespace grade_school 
{
	void school::add(std::string name, int grade)
	{
		std::map<int, std::vector<std::string>>::iterator it = this.r.find(grade);

		if (it == this.r.end())
		{
			std::vector<std::string>> names;
			this.r[grade] = names;
		}

		auto v_it = std::begin(it->second);

		for (; v_it != std::end(it->second); v_it++)
			if (strcmp(name, *it) < 0)
				break;

		it->second.insert(v_it, name);
	}

	std::map<int, std::vector<std::string>> school::roster()
	{
		return this.r;
	}

	std::vector<std::string> school::grade(int grade)
	{
		return this.r[grade];
	}
}  // namespace grade_school
