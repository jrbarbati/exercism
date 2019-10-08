struct Bob {
    
    static func hey(_ input: String) -> String {
        
        if input.isOnlyWhitespace() {
            return "Fine. Be that way!"
        }
        
        if input.isAllCaps() {
            return "Whoa, chill out!"
        }
        
        if input.isQuestion() {
            return "Sure."
        }
        
        return "Whatever."
    }
}

private extension String {
    
    func isOnlyWhitespace() -> Bool {
        return self.filter({ (char: Character) -> Bool in !char.isWhitespace }).isEmpty
    }
    
    func endsWith(_ char: Character) -> Bool {
        guard let _ = self.last else {
            return false
        }
        
        return char == self.last!
    }
    
    func isQuestion() -> Bool {
        return self.endsWith("?")
    }
    
    func isAllCaps() -> Bool {
        let letters = self.filter({ (char: Character) -> Bool in char.isLetter})
        
        if letters.isEmpty {
            return false
        }
        
        return letters.filter({ (letter: Character) -> Bool in letter.isLowercase}).isEmpty
    }
}
