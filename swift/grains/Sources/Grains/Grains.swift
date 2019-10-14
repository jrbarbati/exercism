struct Grains {
    
    static func square(_ input: Int) throws -> UInt {
        guard 1 <= input && input <= 64 else {
            let message = "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)"
            throw input > 0 ? GrainsError.inputTooHigh(message) : GrainsError.inputTooLow(message)
        }
        
        return UInt(1) << (input - 1)
    }
    
    static var total: UInt {
        return UInt.max
    }
    
    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }
}
