struct Nucleotide {
    
    let dna: String
    let RNA_TRANSCRIPTION: [Character : String] = ["A": "U", "T": "A", "C": "G", "G": "C"]
    
    init(_ dna: String) {
        self.dna = dna
    }
    
    func complementOfDNA() throws -> String {
        return try self.dna.reduce("", {
            guard let rnaNucleotide = RNA_TRANSCRIPTION[$1] else {
                throw TranscriptionError.invalidNucleotide("\($1) is not a valid Nucleotide")
            }
            
            return $0 + rnaNucleotide
        })
    }
}

enum TranscriptionError : Error {
    case invalidNucleotide(String)
}
