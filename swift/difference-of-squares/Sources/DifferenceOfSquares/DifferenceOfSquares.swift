import Foundation

struct Squares {
    
    let num: Int
    
    init(_ num: Int) {
        self.num = num
    }
    
    var squareOfSum: Int {
        return Int(pow(Double((0 ... self.num).reduce(0, +)), 2.0))
    }
    
    var sumOfSquares: Int {
        return (1 ... self.num).map { Int(pow(Double($0), 2.0)) }.reduce(0, +)
    }
    
    var differenceOfSquares: Int {
        return self.squareOfSum - self.sumOfSquares
    }
}
