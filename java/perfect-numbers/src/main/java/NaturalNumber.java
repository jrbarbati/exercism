import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

class NaturalNumber
{
    private Classification classification;

    public NaturalNumber(int number)
    {
        this.classification = calculateClassification(number);
    }

    public Classification getClassification()
    {
        return classification;
    }

    private static Classification calculateClassification(int number)
    {
        if (number < 1)
            throw new IllegalArgumentException("You must supply a natural number (positive integer)");

        return Classification.get(number, factors(number).sum());
    }

    private static IntStream factors(int of)
    {
        List<Integer> factors = new ArrayList<>();

        for (int i = 1; i < of; i++)
            if (of % i == 0)
                factors.add(i);

        return factors.stream().mapToInt(Integer::intValue);
    }
}
