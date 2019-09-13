class BinarySearchTree<T: Comparable> {
    
    var data: T
    var left: BinarySearchTree<T>?
    var right: BinarySearchTree<T>?
    
    init(_ data: T) {
        self.data = data
    }
    
    func insert(_ data: T) {
        if data > self.data && self.right == nil {
            self.right = BinarySearchTree(data)
            return
        }
        
        if data <= self.data && self.left == nil {
            self.left = BinarySearchTree(data)
            return
        }
        
        if data > self.data {
            self.right?.insert(data)
        } else {
            self.left?.insert(data)
        }
    }
    
    func allData() -> [T] {
        var initialArr = [T]()
        return self.inorderTraversal(&initialArr)
    }
    
    private func inorderTraversal(_ arr: inout [T]) -> [T] {
        if let _ = self.left {
            arr = self.left?.inorderTraversal(&arr) ?? arr
        }
        
        arr.append(self.data)
        
        if let _ = self.right {
            arr = self.right?.inorderTraversal(&arr) ?? arr
        }
        
        return arr
    }
}
