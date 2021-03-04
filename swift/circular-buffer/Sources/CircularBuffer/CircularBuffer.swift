struct CircularBuffer<T>
{
    var elements: [T?]
    let capacity: Int
    var head: Int
    var size: Int
    
    init(capacity: Int)
    {
        self.head = 0
        self.size = 0
        self.capacity = capacity
        self.elements = [T?](repeating: nil, count: capacity)
    }
    
    mutating func read() throws -> T
    {
        if self.size == 0
        {
            throw CircularBufferError.bufferEmpty
        }
        
        let element: T = self.elements[self.head]!
        
        self.head = (self.head + 1) % self.capacity
        self.size -= 1
        
        return element
    }
    
    mutating func write(_ element: T) throws
    {
        if self.size == self.capacity
        {
            throw CircularBufferError.bufferFull
        }
        
        let index = (self.head + self.size) % self.capacity;
        self.size += 1

        self.elements[index] = element;
    }
    
    mutating func overwrite(_ element: T)
    {
        if self.size < self.capacity
        {
            try? self.write(element)
            return
        }
        
        self.elements[self.head] = element;

        self.head = (self.head + 1) % self.capacity;
    }
    
    mutating func clear()
    {
        self.size = 0
        self.head = 0
        self.elements = [T?](repeating: nil, count: self.capacity)
    }
}

enum CircularBufferError: Error
{
    case bufferEmpty, bufferFull
}
