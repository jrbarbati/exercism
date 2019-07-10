import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class TwelveDays {
    private static final String VERSE_FORMAT = "On the %s day of Christmas my true love gave to me: %s.\n";
    private static final Map<Integer, Verse> daysOfChristmas = new HashMap<Integer, Verse>() {{
        put(1, new Verse("first", "a Partridge in a Pear Tree"));
        put(2, new Verse("second", "two Turtle Doves"));
        put(3, new Verse("third", "three French Hens"));
        put(4, new Verse("fourth", "four Calling Birds"));
        put(5, new Verse("fifth", "five Gold Rings"));
        put(6, new Verse("sixth", "six Geese-a-Laying"));
        put(7, new Verse("seventh", "seven Swans-a-Swimming"));
        put(8, new Verse("eighth", "eight Maids-a-Milking"));
        put(9, new Verse("ninth", "nine Ladies Dancing"));
        put(10, new Verse("tenth", "ten Lords-a-Leaping"));
        put(11, new Verse("eleventh", "eleven Pipers Piping"));
        put(12, new Verse("twelfth", "twelve Drummers Drumming"));
    }};

    String verse(int verseNumber)
    {
        if (verseNumber == 1)
            return String.format(VERSE_FORMAT, daysOfChristmas.get(1).getNumber(), daysOfChristmas.get(1).getVerse());

        String verse = IntStream.rangeClosed(1, verseNumber).boxed().sorted(Comparator.reverseOrder())
                .map(this::buildVerse)
                .collect(Collectors.joining(", "));

        return String.format(VERSE_FORMAT, daysOfChristmas.get(verseNumber).getNumber(), verse);
    }

    String verses(int startVerse, int endVerse)
    {
        return IntStream.rangeClosed(startVerse, endVerse)
                .mapToObj(this::verse)
                .collect(Collectors.joining("\n"));
    }

    String sing()
    {
        return verses(1, 12);
    }

    private String buildVerse(int verseNumber)
    {
        return (verseNumber == 1 ? "and " : "") + daysOfChristmas.get(verseNumber).getVerse();
    }
}

class Verse
{
    private String number;
    private String verse;

    public Verse(String number, String verse)
    {
        this.number = number;
        this.verse = verse;
    }

    public String getNumber()
    {
        return number;
    }

    public String getVerse()
    {
        return verse;
    }
}
