#include "rna_transcription.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int index_of(char nucleotide, const char nucleotides[4]);

const char DNA_NUCLEOTIDES[4] = {'A', 'T', 'C', 'G'};
const char RNA_TRANSLATION[4] = {'U', 'A', 'G', 'C'};

char *to_rna(const char *dna)
{
	char *rna = calloc(strlen(dna), sizeof(char));

	for (int i = 0; dna[i]; i++)
	{
		int index = index_of(dna[i], DNA_NUCLEOTIDES);

		if (index == -1)
		{
			free(rna);
			return NULL;
		}

		rna[i] = RNA_TRANSLATION[index];
	}

	return rna;
}

int index_of(char nucleotide, const char nucleotides[4])
{
	for (int i = 0; i < 4; i++)
		if (nucleotide == nucleotides[i])
			return i;

	return -1;
}
