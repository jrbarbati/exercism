struct Queens {
    
    // MARK: Fields
    
    let white: [Int]
    let black: [Int]

    static let minValue = 0
    static let maxValue = 7
    
    // MARK: - Constructors
    
    init() throws {
        try self.init(white: [0, 3], black: [7, 3])
    }
    
    init(white: [Int], black: [Int]) throws {
        if white.count > 2 || black.count > 2 {
            throw InitError.incorrectNumberOfCoordinates
        }
        
        for value in white + black {
            if value < Queens.minValue || value > Queens.maxValue {
                throw InitError.invalidCoordinates
            }
        }
        
        if white == black {
            throw InitError.sameSpace
        }
        
        self.white = white
        self.black = black
    }
    
    // MARK: - Computed Values
    
    var description: String {
        var board = ""
        
        for i in 0 ... 7 {
            for j in 0 ... 7 {
                
                switch true {
                case [i, j] == white:
                    board += "W"
                case [i, j] == black:
                    board += "B"
                default:
                    board += "_"
                }
                
                if j < 7 {
                    board += " "
                }
            }
            
            if i < 7 {
                board += "\n"
            }
        }
        
        return board
    }
    
    var canAttack: Bool {
        let rise = Double(self.white[0] - self.black[0])
        let run = Double(self.white[1] - self.black[1])
        
        guard rise != 0 && run != 0 else {
            return true
        }
        
        return abs(rise / run) == 1
    }
    
    // MARK: -
    
    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case invalidCoordinates
        case sameSpace
    }
}
