struct Bob {
    
    static func hey(_ input: String) -> String {
        
        if input.isOnlyWhitespace {
            return "Fine. Be that way!"
        }
        
        if input.isAllCaps {
            return "Whoa, chill out!"
        }
        
        if input.isQuestion {
            return "Sure."
        }
        
        return "Whatever."
    }
}

private extension String {
    
    var isOnlyWhitespace: Bool {
        return self.filter { !$0.isWhitespace }.isEmpty
    }
    
    var isQuestion: Bool {
        return self.endsWith("?")
    }
    
    var isAllCaps: Bool {
        let letters = self.filter { $0.isLetter }
        
        if letters.isEmpty {
            return false
        }
        
        return letters.filter { $0.isLowercase }.isEmpty
    }
    
    func endsWith(_ char: Character) -> Bool {
        guard let lastChar = self.last else {
            return false
        }
        
        return char == lastChar
    }
}
