func compute(_ strand1: String, against strand2: String) -> Int? {
    guard strand1.count == strand2.count else {
        return nil
    }
    
    return zip(strand1, strand2).reduce(0, { (currentDistance, nucleotides) in
        let (nucleotide1, nucleotide2) = nucleotides
        
        if nucleotide1 != nucleotide2 {
            return (currentDistance ?? 0) + 1
        }
        
        return currentDistance
    })
}
