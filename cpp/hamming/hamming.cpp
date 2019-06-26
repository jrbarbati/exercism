#include "hamming.h"
#include <stdexcept>

using namespace std;

int hamming::compute(string original_strand, string new_strand)
{
	if (original_strand.size() != new_strand.size())
		throw domain_error("Can't compare DNA strands of different lengths!");

	int i, hamming_distance;
	hamming_distance = 0;

	for (i = 0; i < int(original_strand.size()); i++)
		if (original_strand.at(i) != new_strand.at(i))
			hamming_distance++;

	return hamming_distance;
}