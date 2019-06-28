import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

class IsogramChecker
{
    boolean isIsogram(String phrase)
    {
        return allLetters(phrase).size() == uniqueLetters(phrase).size();
    }

    private static List<Integer> allLetters(String phrase)
    {
        return letters(phrase).collect(Collectors.toList());
    }

    private static Set<Integer> uniqueLetters(String phrase)
    {
        return letters(phrase).collect(Collectors.toSet());
    }

    private static Stream<Integer> letters(String phrase)
    {
        return phrase.toUpperCase().chars().filter(Character::isLetter).boxed();
    }
}
