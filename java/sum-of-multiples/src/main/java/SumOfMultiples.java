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
        int sum = 0;

        for (int i = 1; i < max; i++)
            for (int factor : factors)
                if (factor != 0 && i % factor == 0)
                {
                    sum += i;
                    break;
                }

        return sum;
    }
}
