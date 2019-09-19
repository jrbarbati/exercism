#if !defined(NUCLEOTIDE_COUNT_H)
#define NUCLEOTIDE_COUNT_H

#include <map>
#include <string>

namespace nucleotide_count {

class counter
{
	std::map<char, int> nucleotides{{'A', 0}, {'T', 0}, {'C', 0}, {'G', 0}};

	public:
		counter(std::string strand);

		std::map<char, int> nucleotide_counts() const;

		int count(char nucleotide) const;
	private:
		bool contains(char nucleotide) const;

		void throw_invalid_argument_error(char nucleotide) const;
};

}

#endif