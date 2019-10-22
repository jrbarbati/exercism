package calculator;

import java.util.Arrays;

public class LittleStraightCalculator extends StraightCalculator
{
    @Override
    boolean matchesCategory(int[] dice)
    {
        Arrays.sort(dice);
        return super.matchesCategory(dice) && dice[0] == 1;
    }
}
