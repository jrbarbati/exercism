import java.util.Arrays;
import java.util.HashSet;

class Triangle
{
    private double[] sides = new double[3];

    Triangle(double side1, double side2, double side3) throws TriangleException
    {
        this.sides[0] = side1;
        this.sides[1] = side2;
        this.sides[2] = side3;

        Arrays.sort(sides);

        if (!isValid())
            throw new TriangleException();
    }

    private boolean isValid()
    {
        return (sides[0] + sides[1] + sides[2] != 0) && (sides[0] + sides[1] >= sides[2]);
    }

    boolean isEquilateral()
    {
        return sides[0] == sides[1] && sides[1] == sides[2];
    }

    boolean isIsosceles()
    {
        return sides[0] == sides[1] || sides[1] == sides[2];
    }

    boolean isScalene()
    {
        return !isEquilateral() && !isIsosceles() && !isDegenerate();
    }

    boolean isDegenerate()
    {
        return sides[0] + sides[1] == sides[2];
    }
}
