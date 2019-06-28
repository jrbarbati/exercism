import static java.lang.Character.isLetter;

class Acronym
{
    private String phrase;

    Acronym(String phrase)
    {
        this.phrase = phrase.toUpperCase();
    }

    String get()
    {
        return buildAcronym(phrase);
    }

    private static String buildAcronym(String phrase)
    {
        StringBuilder acronym = new StringBuilder();

        for (int i = 0; i < phrase.length(); i++)
            if (shouldBePartOfAcronym(phrase, i))
                acronym.append(phrase.charAt(i));

        return acronym.toString();
    }

    private static boolean shouldBePartOfAcronym(String phrase, int index) {
        return index == 0 || (isLetter(phrase.charAt(index)) && characterIsInvalid(phrase, index - 1));
    }

    private static boolean characterIsInvalid(String phrase, int index) {
        return !isLetter(phrase.charAt(index)) && phrase.charAt(index) != '\'';
    }
}
