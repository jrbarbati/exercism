import java.util.OptionalInt;

class LargestSeriesProductCalculator
{
    private String number;

    LargestSeriesProductCalculator(String inputNumber)
    {
        if (hasLetter(inputNumber))
            throw new IllegalArgumentException("String to search may only contain digits.");

        this.number = inputNumber;
    }

    long calculateLargestProductForSeriesLength(int numberOfDigits)
    {
        if (numberOfDigits < 0)
            throw new IllegalArgumentException("Series length must be non-negative.");

        if (numberOfDigits > number.length())
            throw new IllegalArgumentException("Series length must be less than or equal to the length of the string to search.");

        if (numberOfDigits == 0)
            return 1;

        return calculateLargestProductForLength(numberOfDigits);
    }

    private boolean hasLetter(String inputNumber)
    {
        return inputNumber.chars().mapToObj(c -> (char) c).anyMatch(Character::isLetter);
    }

    private long calculateLargestProductForLength(int length)
    {
        int startingIndex = 0, endingIndex = length;
        long currMax = 0;

        while (endingIndex <= number.length())
        {
            long candidate = multiply(number.substring(startingIndex, endingIndex));

            currMax = currMax < candidate ? candidate : currMax;

            startingIndex += 1;
            endingIndex += 1;
        }

        return currMax;
    }

    private long multiply(String digits) {
        return digits.chars().mapToObj(c -> String.valueOf((char) c)).mapToInt(Integer::parseInt).reduce((i, j) -> i * j).orElse(1);
    }
}
