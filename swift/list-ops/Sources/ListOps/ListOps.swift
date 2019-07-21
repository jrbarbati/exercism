class ListOps
{
    static func append<T>(_ mainList: [T], _ list: [T]) -> [T]
    {
        return mainList + list
    }
    
    static func concat<T>(_ lists: [T]...) -> [T]
    {
        var concatenated = [T]()
        
        for list in lists
        {
            concatenated += list
        }
        
        return concatenated
    }
    
    static func filter<T>(_ list: [T], _ predicate: (T) -> Bool) -> [T]
    {
        var filtered = [T]()
        
        for element in list
        {
            if predicate(element)
            {
                filtered.append(element)
            }
        }
        
        return filtered
    }
    
    static func length<T>(_ list: [T]) -> Int
    {
        var length = 0
        
        for _ in list
        {
            length += 1
        }
        
        return length
    }
    
    static func map<T>(_ list: [T], _ mapper: (T) -> T) -> [T]
    {
        var mapped = [T]()
        
        for element in list
        {
            mapped.append(mapper(element))
        }
        
        return mapped
    }
    
    static func foldLeft<T>(_ list: [T], accumulated initial: T, combine: (T, T) -> T) -> T
    {
        var accumulated = initial
        
        for element in list
        {
            accumulated = combine(accumulated, element)
        }
        
        return accumulated
    }
    
    static func foldRight<T>(_ list: [T], accumulated initial: T, combine: (T, T) -> T) -> T
    {
        var accumulated = initial
        
        for element in reverse(list)
        {
            accumulated = combine(element, accumulated)
        }
        
        return accumulated
    }
    
    static func reverse<T>(_ list: [T]) -> [T]
    {
        var reversed = [T]()
        
        for element in list
        {
            reversed.insert(element, at: 0)
        }
        
        return reversed
    }
}
