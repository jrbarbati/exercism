import java.util.Arrays;

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
            throw new TriangleException("%f, %f, and %f do not make a valid triangle.", side1, side2, side3);
    }

    private boolean isValid()
    {
        return Arrays.stream(sides).sum() != 0 && sides[0] + sides[1] >= sides[2];
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
