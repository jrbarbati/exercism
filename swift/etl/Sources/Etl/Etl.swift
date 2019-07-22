struct ETL {
    
    static func transform(_ old: [Int: [String]]) -> [String: Int] {
        var transformed: [String: Int] = [:]
        
        for score in old.keys {
            old[score]?.forEach { transformed[$0.lowercased()] = score }
        }
        
        return transformed
    }
}
