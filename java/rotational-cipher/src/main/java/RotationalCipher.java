import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class RotationalCipher
{
	private static final int NUM_OF_CHARS_IN_ALPHABET = 26;
	private final int key;

	public RotationalCipher(int shiftKey) 
	{
		this.key = shiftKey;
	}

	public String rotate(String data) 
	{
		StringBuilder sb = new StringBuilder();

		for (char c : data.toCharArray())
			sb.append(rotate(c));

		return sb.toString();
	}

	private char rotate(char c)
	{
		if (!Character.isLetter(c))
			return c;

		return Character.isUpperCase(c) ? rotate(c, 'A') : rotate(c, 'a');
	}

	private char rotate(char c, char start)
	{
		return (char) (((c + key - start) % NUM_OF_CHARS_IN_ALPHABET) + start);
	}
}
