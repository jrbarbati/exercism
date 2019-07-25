import java.util.Map;
import java.util.HashMap;

class Scrabble
{
    private Integer score;

    Scrabble(String word)
    {
        this.score = calculateScore(word.toUpperCase());
    }

    private Integer calculateScore(String word)
    {
        return word.chars().map(scores::get).sum();
    }

    int getScore()
    {
        return score;
    }

    private static final Map<Integer, Integer> scores = new HashMap<Integer, Integer>() {{
        put((int) 'A', 1);
        put((int) 'B', 3);
        put((int) 'C', 3);
        put((int) 'D', 2);
        put((int) 'E', 1);
        put((int) 'F', 4);
        put((int) 'G', 2);
        put((int) 'H', 4);
        put((int) 'I', 1);
        put((int) 'J', 8);
        put((int) 'K', 5);
        put((int) 'L', 1);
        put((int) 'M', 3);
        put((int) 'N', 1);
        put((int) 'O', 1);
        put((int) 'P', 3);
        put((int) 'Q', 10);
        put((int) 'R', 1);
        put((int) 'S', 1);
        put((int) 'T', 1);
        put((int) 'U', 1);
        put((int) 'V', 4);
        put((int) 'W', 4);
        put((int) 'X', 8);
        put((int) 'Y', 4);
        put((int) 'Z', 10);
    }};
}
