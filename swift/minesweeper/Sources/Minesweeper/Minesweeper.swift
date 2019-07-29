struct Board {

    var board: [[Character]]
    let VALID_CHARACTERS: Set<Character> = ["+", "-", "|", "*", " "]
    let VALID_BORDER_CHARACTERS: Set<Character> = ["|", "+", "-"]
    
    init(_ board: [String]) throws {
        self.board = []
        self.board = self.toCharArrays(board)
        try self.validate()
    }
    
    func transform() throws -> [String] {
        var transformed: [[Character]] = self.board
        
        for row in 1 ... self.board.count - 2 {
            for col in 1 ... self.board[row].count - 2 {
                if !(self.board[row][col] == "*") {
                    transformed[row][col] = self.countNumOfBombsAround(row: row, col: col)
                }
            }
        }
        
        return self.toStringArray(transformed)
    }
    
    private func toCharArrays(_ strings: [String]) -> [[Character]] {
        var charArrays: [[Character]] = []
        
        for string in strings {
            charArrays.append(Array(string))
        }
        
        return charArrays
    }
    
    private func validate() throws {
        if !self.allRowsAreSameLength(self.board) {
            throw BoardError.differentLength
        }
        
        if !self.borderIsValid(self.board) {
            throw BoardError.faultyBorder
        }
        
        if !self.allCharactersAreValid(self.board) {
            throw BoardError.invalidCharacter
        }
    }
    
    private func countNumOfBombsAround(row: Int, col: Int) -> Character {
        let coordinates = [
            Coordinate(row: row - 1, col: col - 1),
            Coordinate(row: row - 1, col: col),
            Coordinate(row: row - 1, col: col + 1),
            Coordinate(row: row, col: col - 1),
            Coordinate(row: row, col: col + 1),
            Coordinate(row: row + 1, col: col - 1),
            Coordinate(row: row + 1, col: col),
            Coordinate(row: row + 1, col: col + 1)
        ]
        
        var numOfBombs = 0
        
        for coordinate in coordinates {
            if self.board[coordinate.row][coordinate.col] == "*" {
                numOfBombs += 1
            }
        }
        
        return numOfBombs > 0 ? Character(String(numOfBombs)) : " "
    }
    
    private func allRowsAreSameLength(_ board: [[Character]]) -> Bool {
        for i in 0 ... board.count - 2 {
            if board[i].count != board[i + 1].count {
                return false
            }
        }
        
        return true
    }
    
    private func borderIsValid(_ board: [[Character]]) -> Bool {
        for i in 0 ... board.count - 1 {
            let indices = (i == 0 || i == board.count - 1) ?
                [Int](0 ... board[i].count - 1) :
                [0, board[i].count - 1]
            if !self.borderIsValid(forRow: board[i], indices: indices) {
                return false
            }
        }
        
        return true
    }
    
    private func borderIsValid(forRow row: [Character], indices: [Int]) -> Bool {
        for index in indices {
            if !self.VALID_BORDER_CHARACTERS.contains(row[index]) {
                return false
            }
        }
        
        return true
    }
    
    private func allCharactersAreValid(_ board: [[Character]]) -> Bool {
        for row in board {
            for char in row {
                if !self.VALID_CHARACTERS.contains(char) {
                    return false
                }
            }
        }
        
        return true
    }
    
    private func toStringArray(_ characterArray: [[Character]]) -> [String] {
        var strings: [String] = []
        
        for chars in characterArray {
            strings.append(String(chars))
        }
        
        return strings
    }
    
    enum BoardError: Error {
        case differentLength
        case faultyBorder
        case invalidCharacter
    }
}

struct Coordinate {
    let row: Int
    let col: Int
}
