import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Collector;

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
		return data.codePoints()
				   .map(this::rotate)
				   .boxed()
				   .collect(Collector.of(
				   				StringBuilder::new,
				   				StringBuilder::appendCodePoint,
				   				StringBuilder::append
				   			))
				   .toString();
	}

	private int rotate(int c)
	{
		if (!Character.isLetter(c))
			return c;

		return Character.isUpperCase(c) ? rotate(c, 'A') : rotate(c, 'a');
	}

	private int rotate(int c, int start)
	{
		return ((c + key - start) % NUM_OF_CHARS_IN_ALPHABET) + start;
	}
}
