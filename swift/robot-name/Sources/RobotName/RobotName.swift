class Robot {
    
    private static let ALPHABET: [String] = [
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
        "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
    ]
    private static var usedNames: Set<String> = []
    var name: String
    
    init() {
        self.name = Robot.generateName()
    }
    
    func resetName() {
        Robot.usedNames.remove(self.name)
        self.name = ""
    }
    
    private static func generateName() -> String {
        let name = "\(randomLetter())\(randomLetter())\(randomNumber())\(randomNumber())\(randomNumber())"
        
        usedNames.insert(name)
        
        return name
    }
    
    private static func randomLetter() -> String {
        return ALPHABET[Int.random(in: 0 ..< 26)]
    }
    
    private static func randomNumber() -> Int {
        return Int.random(in: 0 ... 9)
    }
}
