class Element<T> {
    
    var value: T?
    var next: Element?
    
    init(_ value: T? = nil, _ next: Element<T>? = nil) {
        self.value = value
        self.next = next
    }
    
    func toArray() -> [T] {
        var arr = [T]()
        
        var currElement = self;
        
        while true {
            if let currValue = currElement.value {
                arr.append(currValue)
            }
            
            guard let _ = currElement.next else {
                break
            }
            
            currElement = currElement.next!
        }
        
        return arr
    }
    
    static func fromArray(_ arr: [T]) -> Element<T> {
        guard arr.count > 0 else {
            return Element<T>()
        }
        
        let head = Element<T>(arr[0])
        var currElement = head
        
        for i in 1 ..< arr.count {
            let newElement = Element<T>(arr[i])
            
            currElement.next = newElement
            currElement = newElement
        }
        
        return head
    }
    
    func reverseElements() -> Element<T> {
        var prev: Element<T>? = nil
        var curr: Element<T>? = self
        var next: Element<T>? = self.next
        
        while curr != nil {
            curr!.next = prev
            
            prev = curr
            curr = next
            next = curr?.next
        }
        
        return prev!
    }
}
