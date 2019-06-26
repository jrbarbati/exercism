class Year
{
    var year: Int
    
    init(calendarYear year: Int)
    {
        self.year = year
    }
    
    var isLeapYear: Bool {
        get {
            return (self.year.isMultiple(of: 4) && !self.year.isMultiple(of: 100)) || (self.year.isMultiple(of: 400))
        }
    }
}
