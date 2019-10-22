class Yacht
{
    private int score;

    Yacht(int[] dice, YachtCategory yachtCategory)
    {
        this.score = yachtCategory.getScoreCalculator().calculate(dice);
    }

    int score()
    {
        return this.score;
    }
}
