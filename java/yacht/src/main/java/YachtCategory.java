import calculator.*;

enum YachtCategory
{
    YACHT(new YachtScoreCalculator()),
    ONES(new XsScoreCalculator(1)),
    TWOS(new XsScoreCalculator(2)),
    THREES(new XsScoreCalculator(3)),
    FOURS(new XsScoreCalculator(4)),
    FIVES(new XsScoreCalculator(5)),
    SIXES(new XsScoreCalculator(6)),
    FULL_HOUSE(new FullHouseScoreCalculator()),
    FOUR_OF_A_KIND(new FourOfAKindScoreCalculator()),
    LITTLE_STRAIGHT(new LittleStraightCalculator()),
    BIG_STRAIGHT(new BigStraightCalculator()),
    CHOICE(new ChoiceScoreCalculator());

    private ScoreCalculator scoreCalculator;

    YachtCategory(ScoreCalculator scoreCalculator)
    {
        this.scoreCalculator = scoreCalculator;
    }

    public ScoreCalculator getScoreCalculator() {
        return scoreCalculator;
    }
}
