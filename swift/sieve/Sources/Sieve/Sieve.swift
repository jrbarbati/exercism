struct Sieve {
    
    private static var bits: [UInt64] = [0]
    let primes: [Int]
    
    init(_ limit: Int) {
        self.primes = Sieve.findPrimes(upTo: limit)
    }
    
    private static func findPrimes(upTo limit: Int) -> [Int] {
        var primes: [Int] = []
        
        guard limit >= 2 else {
            return primes
        }
        
        primes.append(2)
        
        for i in stride(from: 3, through: limit, by: +2) {
            guard !bitIsFlipped(i) else {
                continue
            }
            
            primes.append(i)
            
            markAllMultiples(of: i, upTo: limit)
        }
        
        return primes
    }
    
    private static func bitIsFlipped(_ value: Int) -> Bool {
        let mask = calculateMask(value)
        return (bits[mask.index] & (1 << mask.mask)) > 0
    }
    
    private static func markAllMultiples(of value: Int, upTo limit: Int) {
        for i in stride(from: value * value, through: limit, by: +value) {
            flipBit(i)
        }
    }
    
    private static func flipBit(_ value: Int) {
        let mask = calculateMask(value)
        
        if mask.index == bits.count {
            bits.append(0)
        }
        
        bits[mask.index] |= (1 << mask.mask)
    }
    
    private static func calculateMask(_ value: Int) -> Mask {
        let mask = Mask(index: value / 64, mask: value % 64)
        
        print("Mask for \(value): \(mask)")
        
        return mask
    }
}

struct Mask {
    let index: Int
    let mask: Int
    
    var description: String {
        return "[\(self.index)] 1 << \(self.mask)"
    }
}
