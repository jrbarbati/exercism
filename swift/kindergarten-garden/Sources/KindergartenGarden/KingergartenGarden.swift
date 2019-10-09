struct Garden {
    
    let garden: [[Plant]]
    let children: [String]
    
    init(_ garden: String, children: [String] = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]) {
        self.garden = Garden.from(string: garden)
        self.children = children.sorted()
    }
    
    func plantsForChild(_ child: String) -> [Plant] {
        return garden[children.index(of: child)!]
    }
    
    private static func from(string: String) -> [[Plant]] {
        var plants = [[Plant]]()
        
        let rows = string.split(separator: "\n").map({ (row: Substring) -> Array<Character> in Array<Character>(row) })
        
        for index in stride(from: 0, through: rows[0].count - 1, by: +2) {
            var setOfPlants = [Plant]()
            
            for rawValue in [rows[0][index], rows[0][index+1], rows[1][index], rows[1][index+1]] {
                guard let plant = Plant(rawValue: rawValue) else {
                    continue
                }
                
                setOfPlants.append(plant)
            }
            
            plants.append(setOfPlants)
        }
        
        return plants
    }
}

enum Plant: Character {
    case clover = "C"
    case grass = "G"
    case radishes = "R"
    case violets = "V"
}
