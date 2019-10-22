package calculator;

import java.util.Arrays;

public class ChoiceScoreCalculator extends ScoreCalculator
{
    @Override
    boolean matchesCategory(int[] dice)
    {
        return true;
    }

    @Override
    int calculateScore(int[] dice)
    {
        return Arrays.stream(dice).sum();
    }
}
