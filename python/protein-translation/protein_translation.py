translation = {
	"AUG": "Methionine",
	"UUU": "Phenylalanine", "UUC": "Phenylalanine",
	"UUA": "Leucine", "UUG": "Leucine",
	"UCU": "Serine", "UCC": "Serine", "UCA": "Serine", "UCG": "Serine",
	"UAU": "Tyrosine", "UAC": "Tyrosine",
	"UGU": "Cysteine", "UGC": "Cysteine",
	"UGG": "Tryptophan",
	"UAA": "STOP", "UAG": "STOP", "UGA": "STOP"
}


def codons(rna: str) -> list:
	codons = []

	for i in range(0, len(rna), 3):
		codons.append(rna[i:i+3])

	return codons


def proteins(rna: str) -> list:
	protein = []

	for codon in codons(rna):
		amino_acid = translation[codon]

		if amino_acid is "STOP":
			break

		protein.append(amino_acid)

	return protein
