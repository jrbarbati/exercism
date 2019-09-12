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
        
    }
    
    func pop() -> T? {
        return nil
    }
    
    func unshift(_ data: T) {
        
    }
    
    func shift() -> T? {
        return nil
    }
}
