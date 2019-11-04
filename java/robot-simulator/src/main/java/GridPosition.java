import java.util.Objects;

class GridPosition
{
    final int x;
    final int y;

    GridPosition(final int x, final int y)
    {
        this.x = x;
        this.y = y;
    }

    public GridPosition moveOne(Orientation direction)
    {
        return new GridPosition(this.x + direction.getXOffset(), this.y + direction.getYOffset());
    }

    @Override
    public int hashCode()
    {
        return Objects.hash(x, y);
    }

    @Override
    public boolean equals(Object that)
    {
        return that instanceof GridPosition && this.hashCode() == that.hashCode();
    }

    @Override
    public String toString()
    {
        return String.format("(%d, %d)", x, y);
    }
}
