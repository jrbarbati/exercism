package calculator;

public abstract class ScoreCalculator
{
    public int calculate(int[] dice)
    {
        if (!matchesCategory(dice))
            return 0;

        return calculateScore(dice);
    }

    abstract boolean matchesCategory(int[] dice);
    abstract int calculateScore(int[] dice);
}
