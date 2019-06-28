import java.util.Arrays;
import java.util.OptionalInt;
import java.util.stream.Collectors;

public class PigLatinTranslator
{
    private static final String PIG_LATIN_SUFFIX = "ay";

    String translate(String english)
    {
        return Arrays.stream(english.split(" ")).map(this::toPigLatin).collect(Collectors.joining(" "));
    }

    private String toPigLatin(String word)
    {
        return (isVowel(word.charAt(0)) || word.indexOf("xr") == 0) && word.charAt(0) != 'y'
                ? word + PIG_LATIN_SUFFIX
                : restOf(word) + firstSoundOf(word) + PIG_LATIN_SUFFIX;
    }

    private String firstSoundOf(String word)
    {
        if (word.substring(0, 2).equals("qu"))
            return "qu";

        int indexOfFirstVowel = indexOfFirstVowel(word);

        if (word.charAt(indexOfFirstVowel) == 'u' && word.charAt(indexOfFirstVowel - 1) == 'q')
            return word.substring(0, word.indexOf("qu") + 2);

        return word.substring(0, indexOfFirstVowel);
    }

    private String restOf(String word)
    {
        String firstSound = firstSoundOf(word);
        return word.replace(firstSound, "");
    }

    private int indexOfFirstVowel(String word)
    {
        OptionalInt firstVowel = word.chars().filter(this::isVowel).findFirst();

        char potentialFirstVowel = (char) firstVowel.orElse(0);
        if (potentialFirstVowel == 'y' && word.indexOf(potentialFirstVowel) == 0 && isVowel(word.charAt(word.indexOf(potentialFirstVowel) + 1)))
            return word.indexOf(firstVowel.orElse(0)) + 1;

        return firstVowel.isPresent() ? word.indexOf(firstVowel.getAsInt()) : 0;
    }

    private boolean isVowel(int c)
    {
        return isVowel((char) c);
    }

    private boolean isVowel(char c)
    {
        String vowels = "aeiouy";
        return characterIsInString(c, vowels) || characterIsInString(c, vowels.toUpperCase());
    }

    private boolean characterIsInString(char c, String string)
    {
        return string.indexOf(c) >= 0;
    }
}