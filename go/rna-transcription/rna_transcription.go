package strand

var RNA_CONVERSION = map[rune]string {'A': "U", 'T': "A", 'C': "G", 'G': "C"}

func ToRNA(dna string) string {
	rna := ""

	for _, dna_nucleotide := range dna {
		rna += RNA_CONVERSION[dna_nucleotide]
	}

	return rna
}
