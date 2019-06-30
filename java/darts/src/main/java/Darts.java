class Darts
{
    private int score;

    Darts(double x, double y)
    {
        this.score = calculateScore(x, y);
    }

    int score()
    {
        return score;
    }

    private static int calculateScore(double x, double y)
    {
        if (isWithin1UnitOfCenter(x, y))
            return 10;

        if (isWithin5UnitsOfCenter(x, y))
            return 5;

        if (isWithin10UnitsOfCenter(x, y))
            return 1;

        return 0;
    }

    private static boolean isWithin1UnitOfCenter(double x, double y)
    {
        return isWithinXUnitsOfCenter(x, y, 1);
    }

    private static boolean isWithin5UnitsOfCenter(double x, double y)
    {
        return isWithinXUnitsOfCenter(x, y, 5);
    }

    private static boolean isWithin10UnitsOfCenter(double x, double y)
    {
        return isWithinXUnitsOfCenter(x, y, 10);
    }

    private static boolean isWithinXUnitsOfCenter(double x, double y, int maxRadius)
    {
        return distanceFromCenter(x, y) <= maxRadius;
    }

    private static double distanceFromCenter(double x, double y)
    {
        return Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2));
    }
}
