class ReverseString
{
    String reverse(String input)
    {
        return input != null ? new StringBuilder(input).reverse().toString() : null;
    }
}