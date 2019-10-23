enum Classification
{
    DEFICIENT, PERFECT, ABUNDANT;

    public static Classification get(int number, int sumOfFactors) {
        if (number == sumOfFactors)
            return PERFECT;

        return sumOfFactors > number ? ABUNDANT : DEFICIENT;
    }
}
