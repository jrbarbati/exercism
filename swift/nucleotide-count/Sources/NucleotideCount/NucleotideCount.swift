class DNA
{
    private var strand: String
    private var nucleotideCounts: [String: Int]
    
    convenience init?(strand: String)
    {
        var nucleotideCounts = [
            "A": 0,
            "T": 0,
            "C": 0,
            "G": 0
        ]
        
        for char in strand
        {
            if let _ = nucleotideCounts[String(char)]
            {
                nucleotideCounts[String(char)] = nucleotideCounts[String(char)]! + 1
                continue
            }
            
            return nil
        }
        
        self.init(strand: strand, nucleotideCounts: nucleotideCounts)
    }
    
    init (strand: String, nucleotideCounts: [String: Int])
    {
        self.strand = strand
        self.nucleotideCounts = nucleotideCounts
    }
    
    func count(_ nucleotide: String) -> Int
    {
        if let nucleotideCount = self.nucleotideCounts[nucleotide]
        {
            return nucleotideCount
        }
        
        return 0
    }
    
    func counts() -> [String: Int]
    {
        return self.nucleotideCounts
    }
}
