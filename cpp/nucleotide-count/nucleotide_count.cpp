#include "nucleotide_count.h"

namespace nucleotide_count {

	counter::counter(std::string strand)
	{
		for (int i = 0; i < int(strand.size()); i++)
			if (contains(strand[i]))
				nucleotides[strand[i]]++;
			else 
				throw_invalid_argument_error(strand[i]);
	}

	std::map<char, int> counter::nucleotide_counts() const
	{
		return nucleotides;
	}

	int counter::count(char nucleotide) const
	{
		if (!contains(nucleotide))
			throw_invalid_argument_error(nucleotide);

		return nucleotides.at(nucleotide);
	}

	bool counter::contains(char nucleotide) const
	{
		try
		{
			nucleotides.at(nucleotide);
			return true;
		}
		catch (std::out_of_range& e)
		{
			return false;
		}
	}

	void counter::throw_invalid_argument_error(char nucleotide) const
	{
		std::string message = "Invalid Argument - invalid nucleotide: ";
		message.push_back(nucleotide);
		throw std::invalid_argument(message);
	}

}  // namespace nucleotide_count
