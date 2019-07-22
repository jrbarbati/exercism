class GradeSchool {
    
    var roster: [Int: [String]]
    
    var sortedRoster: [Int: [String]] {
        return self.roster.mapValues { $0.sorted() }
    }
    
    init() {
        self.roster = [:]
    }
    
    func addStudent(_ name: String, grade: Int) {
        self.roster[grade, default: []].append(name)
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return self.roster[grade, default: []]
    }
}
