public func classifier(listOne: [Int], listTwo: [Int]) -> ListClass
{
    return .equal
}

public enum ListClass
{
    case sublist, equal, superlist, unequal
}
