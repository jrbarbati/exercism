struct Nucleotide {
    
    let dna: String
    static let rnaTranscription: [Character : String] = ["A": "U", "T": "A", "C": "G", "G": "C"]
    
    init(_ dna: String) {
        self.dna = dna
    }
    
    func complementOfDNA() throws -> String {
        return try self.dna.reduce("", { (rnaStrand, char) throws -> String in
            guard let rnaNucleotide = Nucleotide.rnaTranscription[char] else {
                throw TranscriptionError.invalidNucleotide("\(char) is not a valid Nucleotide")
            }
            
            return rnaStrand + rnaNucleotide
        })
    }
}

enum TranscriptionError : Error {
    case invalidNucleotide(String)
}
