class TriangleException extends Exception
{
    public TriangleException(String message)
    {
        super(message);
    }

    public TriangleException(String format, Object... args)
    {
        this(String.format(format, args));
    }
}
