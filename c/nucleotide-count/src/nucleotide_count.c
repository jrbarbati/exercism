#include "nucleotide_count.h"
#include <stdlib.h>
#include <stdio.h>

int count_nucleotides(const char *dna_strand, int counts[4]);

char *readable_string(int counts[4], char *count_str);

const char NUCLEOTIDES[5] = {'A', 'C', 'G', 'T', '\0'};

char *count(const char *dna_strand)
{
    int counts[4] = {0, 0, 0, 0};
    char *count_str = (char *) calloc(16, sizeof(char));

    int successful = count_nucleotides(dna_strand, counts);

    return successful ? readable_string(counts, count_str) : count_str;
}

int count_nucleotides(const char *dna_strand, int counts[4])
{
    for (int i = 0; dna_strand[i]; i++)
        for (int j = 0; j < 5; j++)
            if (dna_strand[i] == NUCLEOTIDES[j])
            {
                counts[j]++;
                break;
            } else if (j == 4)
                return 0;

    return 1;
}

char *readable_string(int counts[4], char *count_str)
{
    sprintf(count_str, "A:%d C:%d G:%d T:%d", counts[0], counts[1], counts[2], counts[3]);
    return count_str;
}
