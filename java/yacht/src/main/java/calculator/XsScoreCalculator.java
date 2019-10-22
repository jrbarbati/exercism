package calculator;

import java.util.Arrays;

public class XsScoreCalculator extends ScoreCalculator
{
    private int x;

    public XsScoreCalculator(int x)
    {
        this.x = x;
    }

    @Override
    boolean matchesCategory(int[] dice)
    {
        return Arrays.stream(dice).anyMatch(die -> die == x);
    }

    @Override
    int calculateScore(int[] dice)
    {
        return (int) Arrays.stream(dice).filter(die -> die == x).count() * x;
    }
}
