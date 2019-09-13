class Deque<T> {
    
    class Node<T> {
        var data: T
        var next: Node?
        var prev: Node?
        
        init(_ data: T) {
            self.data = data
        }
    }
    
    var head: Node<T>?
    var tail: Node<T>?
    
    func push(_ data: T) {
        let newNode = Node(data)
        
        if self.head == nil && self.tail == nil {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail!.next = newNode
            newNode.prev = self.tail
            self.tail = newNode
        }
    }
    
    func pop() -> T? {
        guard let node = self.tail else {
            return nil
        }
        
        self.tail = node.prev
        self.tail?.next = nil
        node.prev = nil
        
        return node.data
    }
    
    func unshift(_ data: T) {
        let newNode = Node(data)
        
        if self.head == nil && self.tail == nil {
            self.head = newNode
            self.tail = newNode
        } else {
            self.head!.prev = newNode
            newNode.next = self.head
            self.head = newNode
        }
    }
    
    func shift() -> T? {
        guard let node = self.head else {
            return nil
        }
        
        self.head = node.next
        self.head?.prev = nil
        node.next = nil
        
        return node.data
    }
}
