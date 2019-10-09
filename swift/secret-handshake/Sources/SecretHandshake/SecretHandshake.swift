struct SecretHandshake {
    
    let input: Int
    
    private static let commands = [
        "wink",
        "double blink",
        "close your eyes",
        "jump"
    ]
    
    init(_ input: Int) {
        self.input = input
    }
    
    var commands: [String] {
        var c = [String]()
        
        for (index, command) in SecretHandshake.commands.enumerated() {
            if (self.input & (1 << index)) > 0 {
                c.append(command)
            }
        }
        
        if ((input & 16) > 0) {
            c.reverse()
        }
        
        return c
    }
}
