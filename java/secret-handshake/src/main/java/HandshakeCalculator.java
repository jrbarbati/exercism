import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class HandshakeCalculator
{
    private static Signal[] signals = Signal.values();
    private int number;

    List<Signal> calculateHandshake(int number)
    {
        this.number = number;

        List<Signal> secretHandshake = IntStream
                .range(0, signals.length)
                .filter(this::shouldIncludeSignalAtIndex)
                .mapToObj(i -> signals[i]).collect(Collectors.toList());

        if (shouldReverse())
            Collections.reverse(secretHandshake);

        return secretHandshake;
    }

    private boolean shouldIncludeSignalAtIndex(int index)
    {
        return (1<<index & number) > 0;
    }

    private boolean shouldReverse()
    {
        return shouldIncludeSignalAtIndex(4);
    }
}
