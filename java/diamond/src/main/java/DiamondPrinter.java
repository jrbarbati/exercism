import java.util.List;
import java.util.ArrayList;
import java.util.stream.Collectors;

class DiamondPrinter
{
    List<String> printToList(char ch)
    {
        List<char[]> diamond = initializeList(calculateWidth(ch), ch);

        fillInCharacters(diamond, 'A', ch);

        return toStringList(diamond);
    }

    private List<char[]> initializeList(int width, char ch)
    {
        List<char[]> characters = new ArrayList<>();

        for (int i = 0; i < (ch - 64) * 2 - 1; i++)
        {
            char[] chs = new char[width];

            for (int j = 0; j < chs.length; j++)
                chs[j] = ' ';

            characters.add(chs);
        }

        return characters;
    }

    private int calculateWidth(char ch)
    {
        return (2 * (ch - 64)) - 1;
    }

    private void fillInCharacters(List<char[]> strings, char startingChar, char endingChar)
    {
        char currentChar = startingChar;
        int i;

        for (i = 0; currentChar <= endingChar; i++)
            setPatternForRow(strings, currentChar++, i, i);

        currentChar = (char) (endingChar - 1);

        for (int j = i - 2; currentChar >= 'A'; j--, i++)
            setPatternForRow(strings, currentChar--, i, j);
    }

    private void setPatternForRow(List<char[]> strings, char currentChar, int rowIndex, int offset) {
        char[] row = strings.get(rowIndex);

        int startingIndex = row.length / 2;

        row[startingIndex - offset] = currentChar;
        row[startingIndex + offset] = currentChar;
    }

    private List<String> toStringList(List<char[]> chars)
    {
        return chars.stream().map(String::valueOf).collect(Collectors.toList());
    }
}
