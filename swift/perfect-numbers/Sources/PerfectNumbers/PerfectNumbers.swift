class NumberClassifier
{
    var classification: NumberClassification
    
    init(number: Int)
    {
        let sum = aliquotSum(number)
        
        self.classification = number == sum
                                    ? .perfect
                                    : sum > number
                                            ? .abundant
                                            : .deficient
    }
}

func aliquotSum(_ number: Int) -> Int
{
    var factors: [Int] = []
    
    (1 ..< number).forEach{ factors += (number % $0 == 0) ? [$0] : [] }
    
    return factors.reduce(0, +)
}

enum NumberClassification
{
    case deficient, perfect, abundant
}
