public class Robot
{
    private GridPosition gridPosition;
    private Orientation orientation;

    public Robot(GridPosition gridPosition, Orientation orientation)
    {
        this.gridPosition = gridPosition;
        this.orientation = orientation;
    }

    public void turnRight()
    {
        this.orientation = orientation.getRight();
    }

    public void turnLeft()
    {
        this.orientation = orientation.getLeft();
    }

    public void advance()
    {
        this.gridPosition = gridPosition.moveOne(orientation);
    }

    public void simulate(String instructions)
    {
        instructions.chars().forEach(this::doAction);
    }

    private void doAction(int instruction)
    {
        switch (instruction)
        {
            case 'A':
                this.advance();
                break;
            case 'L':
                this.turnLeft();
                break;
            case 'R':
                this.turnRight();
                break;
            default:
                throw new UnsupportedOperationException(String.format("Unknown instruction %c in instructions", instruction));
        }
    }

    public GridPosition getGridPosition()
    {
        return gridPosition;
    }

    public Orientation getOrientation()
    {
        return orientation;
    }
}
