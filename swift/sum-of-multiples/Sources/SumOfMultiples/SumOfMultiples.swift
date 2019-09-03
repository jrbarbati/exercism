class SumOfMultiples {
    
    static func toLimit(_ num: Int, inMultiples: [Int]) -> Int {
        guard num != 0 else {
            return 0
        }
        
        return (1 ..< num).reduce(0, {result, currNum in
            for multiple in inMultiples where currNum.isMultiple(of: multiple) {
                return result + currNum
            }
            
            return result
        })
    }
}
