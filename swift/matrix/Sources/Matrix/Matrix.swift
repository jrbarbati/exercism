struct Matrix {
    
    private let matrix: [[Int]]
    
    init(_ string: String) {
        self.matrix = Matrix.matrixFrom(string: string)
    }
    
    var rows: [[Int]] {
        return self.matrix
    }
    
    var columns: [[Int]] {
        return Array(0 ..< matrix[0].count)
            .reduce([[Int]](), {
                (cols: [[Int]], index: Int) -> [[Int]] in cols + [self.matrix.map({
                    (row: [Int]) -> Int in row[index]
                })]
            })
    }
    
    private static func matrixFrom(string: String) -> [[Int]] {
        return string
            .split(separator: "\n")
            .map({ (row: Substring) -> [Substring] in row.split(separator: " ") })
            .map({
                (row: [Substring]) -> [Int] in row.map({
                    (number: Substring) -> Int in Int(number)!
                })
            })
    }
}
