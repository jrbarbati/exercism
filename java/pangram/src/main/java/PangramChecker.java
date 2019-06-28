import java.util.stream.Collectors;

public class PangramChecker 
{
	private static final int NUM_LETTERS_IN_ALPHABET = 26;

    public boolean isPangram(String input) 
    {
        return NUM_LETTERS_IN_ALPHABET == uniqueLetterCount(input);
    }

    private int uniqueLetterCount(String string)
    {
    	return string.toLowerCase().chars()
                .filter(Character::isLetter)
                .mapToObj(String::valueOf)
                .collect(Collectors.toSet())
                .size();
    }
}
