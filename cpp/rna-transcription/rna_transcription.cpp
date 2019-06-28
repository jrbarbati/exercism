#include "rna_transcription.h"
#include <map>
#include <locale>

using namespace std;

string to_upper_case(string input);

const map<char, char> RNA_TRANSCRIPTION = {
	{'A', 'U'},
	{'T', 'A'},
	{'C', 'G'},
	{'G', 'C'}
};

char transcription::to_rna(char nucleotide)
{
	return RNA_TRANSCRIPTION.at(nucleotide);
}

string transcription::to_rna(string nucleotides)
{
	string rna;

	for(char elem : to_upper_case(nucleotides))
		rna.push_back(transcription::to_rna(elem));

	return rna;
}

string to_upper_case(string input)
{
	for (size_t i = 0; i < input.size(); i++)
		input[i] = toupper(input[i]);

	return input;
}