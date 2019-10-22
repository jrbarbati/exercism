package calculator;

import java.util.Arrays;

public class BigStraightCalculator extends StraightCalculator
{
    @Override
    boolean matchesCategory(int[] dice)
    {
        Arrays.sort(dice);
        return super.matchesCategory(dice) && dice[0] == 2;
    }
}
