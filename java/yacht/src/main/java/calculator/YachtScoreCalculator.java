package calculator;

import java.util.Arrays;

public class YachtScoreCalculator extends ScoreCalculator
{
    @Override
    boolean matchesCategory(int[] dice)
    {
        return Arrays.stream(dice).allMatch(die -> die == dice[0]);
    }

    @Override
    int calculateScore(int[] dice)
    {
        return 50;
    }
}
