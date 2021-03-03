enum NumberClassifier
{
    case deficient, perfect, abundant
    
    var classification: NumberClassifier {
        return self
    }
    
    init(number: Int)
    {
        switch aliquotSum(number) {
        case number:       self = .perfect
        case 0 ..< number: self = .deficient
        default:           self = .abundant
        }
    }
}

func aliquotSum(_ number: Int) -> Int
{
    return (1 ..< number).filter{ number % $0 == 0 }.reduce(0, +)
}
