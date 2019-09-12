import functools

RNA_TRANSCRIPTION = {
	'A': 'U',
	'T': 'A',
	'C': 'G',
	'G': 'C'
}


def to_rna(dna_strand):
    return functools.reduce(lambda a, b: a + b, [RNA_TRANSCRIPTION[nucleotide] for nucleotide in dna_strand], "")
