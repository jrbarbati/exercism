import Foundation

struct Squares {
    
    let num: Int
    
    init(_ num: Int) {
        self.num = num
    }
    
    var squareOfSum: Int {
        let sum = (0 ... self.num).reduce(0, +)
        return sum * sum
    }
    
    var sumOfSquares: Int {
        return (1 ... self.num).map { $0 * $0 }.reduce(0, +)
    }
    
    var differenceOfSquares: Int {
        return self.squareOfSum - self.sumOfSquares
    }
}
