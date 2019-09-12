import java.util.stream.IntStream;

class DifferenceOfSquaresCalculator
{
    int computeSquareOfSumTo(int input)
    {
        int sum = (input * (input + 1)) / 2;
        return sum * sum;
    }

    int computeSumOfSquaresTo(int input)
    {
        return (input * (2 * input + 1) * (input + 1)) / 6;
    }

    int computeDifferenceOfSquares(int input)
    {
        return computeSquareOfSumTo(input) - computeSumOfSquaresTo(input);
    }
}
