struct PhoneNumber: CustomStringConvertible
{
    var number: String = "0000000000"
    var areaCode: String = "000"
    
    public var description: String {
        let start = self.number.index(self.number.startIndex, offsetBy: 3)
        let end   = self.number.index(self.number.startIndex, offsetBy: 6)
        
        return "(\(self.areaCode)) \(self.number[start..<end])-\(self.number.suffix(4))"
    }
    
    init(_ phoneNumber: String)
    {
        let n = self.clean(phoneNumber: phoneNumber)
        
        guard (n.count == 11 && n[n.startIndex] == "1") ||  n.count == 10
        else {
            return;
        }
        
        self.number = String(n.suffix(10))
        self.areaCode = String(self.number.prefix(3))
    }
    
    private func clean(phoneNumber: String) -> String
    {
        return phoneNumber.filter{ $0.isNumber }
    }
}
