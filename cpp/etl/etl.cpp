#include "etl.h"

namespace etl {

	std::map<char, int> transform(std::map<int, std::vector<char>> old)
	{
		auto key_iter = old.begin();
		std::map<char, int> transformed;

		for (; key_iter != old.end(); key_iter++)
		{
			auto value_iter = key_iter->second.begin();
			for(; value_iter != key_iter->second.end(); value_iter++)
				transformed[*value_iter + 32] = key_iter->first;
		}

		return transformed;
	}

}  // namespace etl
