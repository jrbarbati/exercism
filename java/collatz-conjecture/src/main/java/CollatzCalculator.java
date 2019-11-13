class CollatzCalculator
{
    int computeStepCount(int start)
    {
        if (start <= 0)
            throw new IllegalArgumentException("Only natural numbers are allowed.");

        return steps(start, 0);
    }

    private int steps(int number, int steps)
    {
        if (number == 1)
            return steps;

        return steps(
                number % 2 == 0 ? number / 2 : 3 * number + 1,
                steps + 1
        );
    }
}
