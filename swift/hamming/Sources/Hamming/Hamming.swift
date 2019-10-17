func compute(_ strand1: String, against strand2: String) -> Int? {
    guard strand1.count == strand2.count else {
        return nil
    }
    
    return zip(strand1, strand2).filter(!=).count
}
