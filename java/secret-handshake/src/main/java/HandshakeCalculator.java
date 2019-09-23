import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class HandshakeCalculator
{
    private static final Signal[] signals = {
        Signal.WINK,
        Signal.DOUBLE_BLINK,
        Signal.CLOSE_YOUR_EYES,
        Signal.JUMP,
    };

    List<Signal> calculateHandshake(int number)
    {
        List<Signal> secretHandshake = IntStream
                .range(0, 4)
                .filter(i -> (1<<i & number) > 0)
                .mapToObj(i -> signals[i]).collect(Collectors.toList());

        return (16 & number) > 0 ? reverse(secretHandshake) : secretHandshake;
    }

    private List<Signal> reverse(List<Signal> signals)
    {
        for (int i = 0, j = signals.size() - 1; i < j; i++, j--)
            Collections.swap(signals, i, j);

        return signals;
    }
}
