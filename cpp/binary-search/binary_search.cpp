#include "binary_search.h"
#include <stdexcept>
#include <iostream>

namespace binary_search {

	std::size_t find(std::vector<int> nums, int value, std::size_t start_index, std::size_t end_index);

	std::size_t find(std::vector<int> nums, int value)
	{
		return find(nums, value, 0, nums.size() - 1);
	}

	std::size_t find(std::vector<int> nums, int value, std::size_t start_index, std::size_t end_index)
	{
		std::size_t middle_index = ((end_index - start_index) / 2) + start_index;

		if (middle_index >= nums.size())
			throw std::domain_error("value doesn't exist in the given vector");

		if (nums[middle_index] == value)
			return middle_index;

		return nums[middle_index] > value ? find(nums, value, start_index, middle_index - 1) : find(nums, value, middle_index + 1, end_index);
	}
}