#if !defined(NUCLEOTIDE_COUNT_H)
#define NUCLEOTIDE_COUNT_H

#include <map>
#include <string>

namespace dna {

class counter
{
	std::map<char, int> nucleotides{{'A', 0}, {'T', 0}, {'C', 0}, {'G', 0}};

	public:
		counter(std::string strand)
		{
			for (int i = 0; i < int(strand.size()); i++)
				if (contains(strand[i]))
					nucleotides[strand[i]]++;
				else 
					throw_invalid_argument_error(strand[i]);
		}

		std::map<char, int> nucleotide_counts() const
		{
			return nucleotides;
		}

		int count(char nucleotide) const
		{
			if (!contains(nucleotide))
				throw_invalid_argument_error(nucleotide);

			return nucleotides.at(nucleotide);
		}
	private:
		bool contains(char nucleotide) const
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

		void throw_invalid_argument_error(char nucleotide) const
		{
			std::string message = "Invalid Argument - invalid nucleotide: ";
			message.push_back(nucleotide);
			throw std::invalid_argument(message);
		}
};

}

#endif