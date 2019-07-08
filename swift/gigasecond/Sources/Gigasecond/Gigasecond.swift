import Foundation

class Gigasecond
{
    var time: Date
    let formatter = DateFormatter()
    let GIGASECOND: TimeInterval = 1000000000
    
    init?(from time: String)
    {
        self.formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        guard let date = self.formatter.date(from: time) else {
            return nil
        }
        
        self.time = date
    }
    
    var description: String {
        let newDate: Date = self.time + GIGASECOND
        return self.formatter.string(from: newDate)
    }
}
