enum Orientation
{
    NORTH("WEST", "EAST", 0, 1),
    EAST("NORTH", "SOUTH", 1, 0),
    SOUTH("EAST", "WEST", 0, -1),
    WEST("SOUTH", "NORTH", -1, 0);

    private String left;
    private String right;
    private int xOffset;
    private int yOffset;

    Orientation(String left, String right, int xOffset, int yOffset)
    {
        this.left = left;
        this.right = right;
        this.xOffset = xOffset;
        this.yOffset = yOffset;
    }

    public Orientation getLeft()
    {
        return Orientation.valueOf(left);
    }

    public Orientation getRight()
    {
        return Orientation.valueOf(right);
    }

    public int getXOffset()
    {
        return xOffset;
    }

    public int getYOffset()
    {
        return yOffset;
    }
}
