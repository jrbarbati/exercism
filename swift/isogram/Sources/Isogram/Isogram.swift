class Isogram
{
    static func isIsogram(_ word: String) -> Bool
    {
        let allLetters = word.lowercased().filter { $0.isLetter }
        let uniqueLetters = Set(allLetters)
        
        return allLetters.count == uniqueLetters.count
    }
}
