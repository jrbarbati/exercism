#ifndef RNA_TRANSCRIPTION_H
#define RNA_TRANSCRIPTION_H

#include <string>

namespace rna_transcription {

char to_rna(char nucleotide);

std::string to_rna(std::string nucleotides);

}

#endif