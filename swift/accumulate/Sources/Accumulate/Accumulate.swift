extension Array
{
    func accumulate<T>(_ mapper: (Element) -> T) -> [T]
    {
        var mapped: [T] = []
        
        for element in self
        {
            mapped.append(mapper(element))
        }
        
        return mapped
    }
}
