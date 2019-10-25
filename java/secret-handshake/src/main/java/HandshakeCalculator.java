import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class HandshakeCalculator
{
    private static Signal[] signals = Signal.values();

    List<Signal> calculateHandshake(int number)
    {
        List<Signal> secretHandshake = IntStream
                .range(0, 4)
                .filter(i -> (1<<i & number) > 0)
                .mapToObj(i -> signals[i]).collect(Collectors.toList());

        if ((16 & number) > 0)
            Collections.reverse(secretHandshake);

        return secretHandshake;
    }
}
