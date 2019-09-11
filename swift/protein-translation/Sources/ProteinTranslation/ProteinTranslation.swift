class ProteinTranslation {
    
    static let proteinTranslation: [String: String] = [
        "AUG": "Methionine",
        "UUU": "Phenylalanine",
        "UUC": "Phenylalanine",
        "UUA": "Leucine",
        "UUG": "Leucine",
        "UCU": "Serine",
        "UCC": "Serine",
        "UCA": "Serine",
        "UCG": "Serine",
        "UAU": "Tyrosine",
        "UAC": "Tyrosine",
        "UGU": "Cysteine",
        "UGC": "Cysteine",
        "UGG": "Tryptophan",
        "UAA": "STOP",
        "UAG": "STOP",
        "UGA": "STOP"
    ]
    
    static func translationOfCodon(_ codon: String) throws -> String {
        guard let protein = proteinTranslation[codon] else {
            throw ProteinTranslationError.invalidCodon("\(codon) is an invalid codon")
        }
        
        return protein
    }
    
    static func translationOfRNA(_ rna: String) throws -> [String] {
        var protein = [String]()
        
        for codon in rna.codons() {
            let aminoAcid = try translationOfCodon(codon)
            
            guard aminoAcid != "STOP" else {
                break
            }
            
            protein.append(aminoAcid)
        }
        
        return protein
    }
    
    enum ProteinTranslationError: Error {
        case invalidCodon(String)
    }
}

private extension String {
    func codons() -> [String] {
        var codons = [String]()
        
        for i in stride(from: 0, to: self.count, by: +3) {
            var codon = ""
            codon.append(self[self.index(self.startIndex, offsetBy: i)])
            codon.append(self[self.index(self.startIndex, offsetBy: i + 1)])
            codon.append(self[self.index(self.startIndex, offsetBy: i + 2)])
            codons.append(codon)
        }
        
        return codons
    }
}
