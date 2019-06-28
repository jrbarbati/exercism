import java.util.List;
import java.util.stream.Collectors;

public class Anagram
{
    private String word;

    public Anagram(String word)
    {
        this.word = word;
    }

    public List<String> match(List<String> candidates)
    {
        return candidates.stream().filter(this::isAnagram).collect(Collectors.toList());
    }

    private boolean isAnagram(String candidate)
    {
        String lowerCaseCandidate = candidate.toLowerCase();
        String lowerCaseWord = this.word.toLowerCase();

        if (lowerCaseWord.equals(lowerCaseCandidate))
            return false;

        return sortedLetters(lowerCaseCandidate).hashCode() == sortedLetters(lowerCaseWord).hashCode();
    }

    private List<Integer> sortedLetters(String word)
    {
        return word.chars().boxed().sorted().collect(Collectors.toList());
    }
}