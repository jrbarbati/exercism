package calculator;

public class StraightCalculator extends ScoreCalculator
{
    @Override
    boolean matchesCategory(int[] dice)
    {
        for (int i = 0; i < dice.length - 1; i++)
            if (dice[i + 1] - dice[i] != 1)
                return false;

        return true;
    }

    @Override
    int calculateScore(int[] dice)
    {
        return 30;
    }
}
