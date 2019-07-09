import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class LuhnValidator
{
    boolean isValid(String candidate)
    {
        List<Character> chars = trimSpaces(candidate);

        if (chars.size() <= 1 || hasNonDigit(chars))
            return false;

        List<Integer> digits = toInts(chars);

        List<Integer> doubled = doubleEveryOtherDigitStartingFromRight(digits);

        return sumOf(doubled) % 10 == 0;
    }

    private List<Character> trimSpaces(String candidate)
    {
        return candidate.chars().mapToObj(c -> (char) c).filter(c -> c != ' ').collect(Collectors.toList());
    }

    private boolean hasNonDigit(List<Character> chars)
    {
        return chars.stream().anyMatch(c -> !Character.isDigit(c));
    }

    private List<Integer> toInts(List<Character> chars)
    {
        return chars.stream().map(String::valueOf).map(Integer::parseInt).collect(Collectors.toList());
    }

    private List<Integer> doubleEveryOtherDigitStartingFromRight(List<Integer> digits)
    {
        for (int i = digits.size() - 2; i >= 0; i -= 2)
        {
            int doubled = digits.get(i) * 2;
            digits.set(i, (doubled > 9) ? doubled - 9 : doubled);
        }

        return digits;
    }

    private int sumOf(List<Integer> digits)
    {
        return digits.stream().mapToInt(Integer::intValue).sum();
    }
}
