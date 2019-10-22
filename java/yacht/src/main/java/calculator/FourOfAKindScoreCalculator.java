package calculator;

import java.util.Arrays;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

public class FourOfAKindScoreCalculator extends ScoreCalculator
{
    @Override
    boolean matchesCategory(int[] dice)
    {
        Map<Integer, Long> counts = Arrays.stream(dice).boxed().collect(Collectors.groupingBy(Function.identity(), Collectors.counting()));
        return counts.entrySet().stream().anyMatch(entry -> entry.getValue() >= 4);
    }

    @Override
    int calculateScore(int[] dice)
    {
        Map<Integer, Long> counts = Arrays.stream(dice).boxed().collect(Collectors.groupingBy(Function.identity(), Collectors.counting()));
        return counts.entrySet().stream().filter(entry -> entry.getValue() >= 4).collect(Collectors.toList()).get(0).getKey() * 4;
    }
}
