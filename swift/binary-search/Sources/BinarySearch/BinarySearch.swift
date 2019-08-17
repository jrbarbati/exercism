struct BinarySearch {
    
    let list: [Int]
    
    init(_ list: [Int]) throws {
        guard list == list.sorted() else {
            throw BinarySearchError.unsorted
        }
        
        self.list = list
    }
    
    func searchFor(_ num: Int) -> Int? {
        return search(num, beginIndex: 0, endIndex: self.list.count - 1)
    }
    
    private func search(_ num: Int, beginIndex: Int, endIndex: Int) -> Int? {
        if beginIndex > endIndex {
            return nil
        }
        
        let middleIndex = ((endIndex - beginIndex) / 2) + beginIndex
        
        if (num > self.list[middleIndex]) {
            return search(num, beginIndex: middleIndex + 1, endIndex: endIndex)
        }
        
        if (num < self.list[middleIndex]) {
            return search(num, beginIndex: beginIndex, endIndex: middleIndex - 1)
        }
        
        return middleIndex
    }
    
    var middle: Int {
        return self.list.count / 2
    }
}

enum BinarySearchError: Error {
    case unsorted
}
