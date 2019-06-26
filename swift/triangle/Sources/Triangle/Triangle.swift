class Triangle
{
    let sides: [Double]
    
    private let types = (
        Equilateral: "Equilateral",
        Isosceles: "Isosceles",
        Scalene: "Scalene",
        ErrorKind: "ErrorKind"
    )
    
    init(_ a: Double, _ b: Double, _ c: Double)
    {
        self.sides = [a, b, c].sorted()
    }
    
    var kind: String {
        get {
            return self.determineTriangleType(self.sides)
        }
    }
    
    private func determineTriangleType(_ sides: [Double]) -> String
    {
        if !self.isTriangle(sides)
        {
            return self.types.ErrorKind
        }
        
        if self.isEquilateral(sides)
        {
            return self.types.Equilateral
        }
        
        if self.isIsosceles(sides)
        {
            return self.types.Isosceles
        }
        
        return self.types.Scalene
    }
    
    private func isTriangle(_ sides: [Double]) -> Bool
    {
        return sides.min()! > 0 && sides[0] + sides[1] > sides[2]
    }
    
    private func isEquilateral(_ sides: [Double]) -> Bool
    {
        return sides[0] == sides[1] && sides[1] == sides[2]
    }
    
    private func isIsosceles(_ sides: [Double]) -> Bool
    {
        return sides[0] == sides[1] || sides[0] == sides[2] || sides[1] == sides[2]
    }
}
