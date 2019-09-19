#include "rna_transcription.h"
#include <map>
#include <locale>

namespace rna_transcription 
{
	std::string to_upper_case(std::string input);

	const std::map<char, char> RNA_TRANSCRIPTION = {
		{'A', 'U'},
		{'T', 'A'},
		{'C', 'G'},
		{'G', 'C'}
	};

	char to_rna(char nucleotide)
	{
		return RNA_TRANSCRIPTION.at(nucleotide);
	}

	std::string to_rna(std::string nucleotides)
	{
		std::string rna;

		for(char elem : to_upper_case(nucleotides))
			rna.push_back(rna_transcription::to_rna(elem));

		return rna;
	}

	std::string to_upper_case(std::string input)
	{
		for (size_t i = 0; i < input.size(); i++)
			input[i] = toupper(input[i]);

		return input;
	}

}