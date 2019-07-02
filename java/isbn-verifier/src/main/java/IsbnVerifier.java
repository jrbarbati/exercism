import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class IsbnVerifier
{
    private static final int VALID_ISBN_10_LENGTH = 10;

    boolean isValid(String isbn)
    {
        try
        {
            String cleanedIsbn = removeAllNonAlphanumerics(isbn.toUpperCase());

            if (cleanedIsbn.length() != VALID_ISBN_10_LENGTH)
                return false;

            List<Integer> isbnNumbers = toListOfInts(cleanedIsbn);

            return isValidIsbn(isbnNumbers);
        }
        catch (NumberFormatException e)
        {
            return false;
        }
    }

    private String removeAllNonAlphanumerics(String isbn)
    {
        return isbn.chars()
                .filter(this::isAlphanumeric)
                .mapToObj(c -> String.valueOf((char) c))
                .collect(Collectors.joining());
    }

    private List<Integer> toListOfInts(String isbn)
    {
        return IntStream.range(0, isbn.length())
                .mapToObj(i -> {
                    if (isCheckDigit(i, isbn) && checkDigitIs('X', isbn, i))
                        return 10;

                    return Integer.valueOf(String.valueOf(isbn.charAt(i)));
                })
                .collect(Collectors.toList());
    }

    private boolean isValidIsbn(List<Integer> isbnNumbers) {
        return IntStream
                .range(0, isbnNumbers.size())
                .map(i -> isbnNumbers.get(i) * (isbnNumbers.size() - i))
                .sum() % 11 == 0;
    }

    private boolean isAlphanumeric(int c)
    {
        return Character.isLetter(c) || Character.isDigit(c);
    }

    private boolean isCheckDigit(int i, String isbn)
    {
        return i == isbn.length() - 1;
    }

    private boolean checkDigitIs(char checkDigit, String isbn, int i)
    {
        return isbn.charAt(i) == checkDigit;
    }
}
