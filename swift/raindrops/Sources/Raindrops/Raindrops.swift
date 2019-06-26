class Raindrops
{
    let raindrops: Int
    private let factors: [(factor: Int, sound: String)] = [
        (3, "Pling"),
        (5, "Plang"),
        (7, "Plong")
    ]
    
    init(_ raindrops: Int)
    {
        self.raindrops = raindrops
    }
    
    var sounds: String {
        get {
            let sound = factors.compactMap { self.raindrops.isMultiple(of: $0.factor) ? $0.sound : "" }
            
            return !sound.joined().isEmpty ? sound.joined() : self.raindrops.description
        }
    }
}
