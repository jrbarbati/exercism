func flattenArray<T>(_ array: [Any?]) -> [T] {
    return array.reduce([T](), { currentArray, currentElement in
        guard let _ = currentElement else {
            return currentArray
        }
        
        if currentElement is [Any?] {
            return currentArray + flattenArray(currentElement as! [Any?])
        }
        
        return currentArray + [currentElement as! T]
    })
}
