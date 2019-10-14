import java.math.BigInteger;

import static java.math.BigInteger.*;

class Grains
{
    BigInteger computeNumberOfGrainsOnSquare(final int square)
    {
        if (0 >= square || square > 64)
            throw new IllegalArgumentException("square must be between 1 and 64");

        return ONE.shiftLeft(square - 1);
    }

    BigInteger computeTotalNumberOfGrainsOnBoard()
    {
        return ONE.shiftLeft(64).subtract(ONE);
    }
}
