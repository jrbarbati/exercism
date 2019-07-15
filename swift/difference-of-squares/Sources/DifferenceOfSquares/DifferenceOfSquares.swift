import Foundation

struct Squares
{
    let num: Int
    
    init(_ num: Int)
    {
        self.num = num
    }
    
    var squareOfSum: Int {
        var sum = 0
        
        for n in 1 ... self.num
        {
            sum += n
        }
        
        return Int(pow(Double(sum), 2.0))
    }
    
    var sumOfSquares: Int {
        var sum = 0
        
        for n in 1 ... self.num
        {
            sum += Int(pow(Double(n), 2.0))
        }
        
        return sum
    }
    
    var differenceOfSquares: Int {
        return self.squareOfSum - self.sumOfSquares
    }
}
