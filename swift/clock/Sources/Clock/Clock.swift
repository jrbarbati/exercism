import Foundation

struct Clock
{
    let minutes: Int
    private let MINUTES_IN_A_DAY: Int = 1440
    
    init(hours: Int = 0, minutes: Int = 0)
    {
        let totalMinutes = ((hours * 60) + minutes) % MINUTES_IN_A_DAY
        self.minutes = totalMinutes >= 0 ? totalMinutes : totalMinutes + MINUTES_IN_A_DAY
    }
    
    func add(hours: Int = 0, minutes: Int = 0) -> Clock
    {
        return Clock(hours: hours, minutes: self.minutes + minutes)
    }
    
    func subtract(hours: Int = 0, minutes: Int = 0) -> Clock
    {
        return add(hours: hours * -1, minutes: minutes * -1)
    }
}

extension Clock: Equatable, CustomStringConvertible
{
    var description: String {
        return String(format: "%02d:%02d", (self.minutes / 60) % 24, self.minutes % 60)
    }
    
    static func ==(lhs: Clock, rhs: Clock) -> Bool
    {
        return lhs.minutes == rhs.minutes
    }
}
