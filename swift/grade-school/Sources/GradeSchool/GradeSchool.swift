class GradeSchool {
    
    var roster: Dictionary<Int, [String]>
    
    var sortedRoster: Dictionary<Int, [String]> {
        var sorted = Dictionary<Int, [String]>()
        
        for grade in self.roster.keys {
            if let students = self.roster[grade] {
                sorted[grade] = students.sorted()
            }
        }
        
        return sorted
    }
    
    init() {
        self.roster = Dictionary()
    }
    
    func addStudent(_ name: String, grade: Int) {
        if let _ = self.roster[grade] {
            self.roster[grade]?.append(name)
            return
        }
        
        self.roster[grade] = [String]()
        self.addStudent(name, grade: grade)
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        guard let students = self.roster[grade] else {
            return []
        }
        
        return students
    }
}
