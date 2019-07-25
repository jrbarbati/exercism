class CollatzConjecture {
    
    static func steps(_ steps: Int) throws -> Int {
        if steps < 1 {
            throw CollatzError()
        }
        
        return self.steps(steps, count: 0)
    }
    
    private static func steps(_ steps: Int, count: Int) -> Int {
        if steps == 1 {
            return count
        }
        
        return self.steps(steps.isMultiple(of: 2) ? steps / 2 : (3 * steps) + 1, count: count + 1)
    }
}

class CollatzError: Error {}
