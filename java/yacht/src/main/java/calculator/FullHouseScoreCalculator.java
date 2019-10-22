package calculator;

import java.util.Arrays;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

public class FullHouseScoreCalculator extends ScoreCalculator
{
    @Override
    boolean matchesCategory(int[] dice)
    {
        Map<Integer, Long> counts = Arrays.stream(dice).boxed().collect(Collectors.groupingBy(Function.identity(), Collectors.counting()));
        return counts.entrySet().stream().anyMatch(entry -> entry.getValue() == 2) && counts.entrySet().stream().anyMatch(entry -> entry.getValue() == 3);
    }

    @Override
    int calculateScore(int[] dice)
    {
        return Arrays.stream(dice).sum();
    }
}
