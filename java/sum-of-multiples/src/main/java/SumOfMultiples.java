import java.util.Arrays;
import java.util.stream.IntStream;

class SumOfMultiples
{
    private int sum;

    SumOfMultiples(int number, int[] set)
    {
        this.sum = calculateSumOfMultiples(number, set);
    }

    int getSum()
    {
        return sum;
    }

    private int calculateSumOfMultiples(int max, int[] factors)
    {
        return IntStream
                .range(1, max)
                .filter(i -> Arrays.stream(factors).anyMatch(factor -> factor != 0 && i % factor == 0))
                .sum();
    }
}
