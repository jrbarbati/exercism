class SimulatedRobot {
    
    var bearing: SimulatedRobot.Bearing
    var coordinates: [Int]
    
    init() {
        self.bearing = .north
        self.coordinates = []
    }
    
    func place(x: Int, y: Int, direction: SimulatedRobot.Bearing) {
        self.at(x: x, y: y)
        self.orient(direction)
    }
    
    func at(x: Int, y: Int) {
        self.coordinates = [x, y]
    }
    
    func orient(_ bearing: SimulatedRobot.Bearing) {
        self.bearing = bearing
    }
    
    func advance() {
        self.at(x: self.coordinates[0] + self.bearing.xOffset, y: self.coordinates[1] + self.bearing.yOffset)
    }
    
    func turnRight() {
        self.orient(self.bearing.turnRight())
    }
    
    func turnLeft() {
        self.orient(self.bearing.turnLeft())
    }
    
    func instructions(_ instructionsAsString: String) -> [SimulatedRobot.Instruction] {
        var instructions = [SimulatedRobot.Instruction]()
        
        for char in instructionsAsString {
            instructions.append(SimulatedRobot.Instruction(rawValue: char) ?? .advance)
        }
        
        return instructions
    }
    
    func evaluate(_ instructions: String) {
        for instruction in self.instructions(instructions) {
            instruction.perform(on: self)
        }
    }
    
    enum Bearing {
        case north
        case east
        case south
        case west
        
        var xOffset: Int {
            switch self {
            case .east:
                return 1
            case .west:
                return -1
            default:
                return 0
            }
        }
        
        var yOffset: Int {
            switch self {
            case .north:
                return 1
            case .south:
                return -1
            default:
                return 0
            }
        }
        
        func turnRight() -> Bearing {
            switch self {
            case .north:
                return .east
            case .east:
                return .south
            case .south:
                return .west
            case .west:
                return .north
            }
        }
        
        func turnLeft() -> Bearing {
            switch self {
            case .north:
                return .west
            case .east:
                return .north
            case .south:
                return .east
            case .west:
                return .south
            }
        }
    }
    
    enum Instruction: Character {
        case advance = "A"
        case turnLeft = "L"
        case turnRight = "R"
        
        func perform(on robot: SimulatedRobot) {
            switch self {
            case .advance:
                robot.advance()
            case .turnLeft:
                robot.turnLeft()
            case .turnRight:
                robot.turnRight()
            }
        }
    }
}
