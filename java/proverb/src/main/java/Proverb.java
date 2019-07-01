import java.util.stream.Collectors;
import java.util.stream.IntStream;

class Proverb
{
    private final String[] words;
    private static final String PROVERB_LINE_FORMAT = "For want of a %s the %s was lost.\n";
    private static final String FINAL_LINE_FORMAT = "And all for the want of a %s.";

    Proverb(String[] words)
    {
        this.words = words;
    }

    String recite()
    {
        StringBuilder proverbBuilder = new StringBuilder();
        String proverb = IntStream
                .range(0, words.length - 1)
                .mapToObj(i -> String.format(PROVERB_LINE_FORMAT, words[i], words[i + 1]))
                .collect(Collectors.joining());

        return words.length == 0
                ? ""
                : proverbBuilder.append(proverb).append(String.format(FINAL_LINE_FORMAT, words[0])).toString();
    }
}
