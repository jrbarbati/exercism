import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

class DnDCharacter
{
    private Integer strength;
    private Integer dexterity;
    private Integer constitution;
    private Integer intelligence;
    private Integer wisdom;
    private Integer charisma;

    int ability()
    {
        List<Integer> rolls = Arrays.asList(rollDie(6), rollDie(6), rollDie(6), rollDie(6));

        return removeMin(rolls).stream().mapToInt(Integer::intValue).sum();
    }

    int modifier(int input)
    {
        return (int) Math.floor((input - 10d) / 2d);
    }

    int getStrength()
    {
        strength = defaultAbility(strength);
        return strength;
    }

    int getDexterity()
    {
        dexterity = defaultAbility(dexterity);
        return dexterity;
    }

    int getConstitution()
    {
        constitution = defaultAbility(constitution);
        return constitution;
    }

    int getIntelligence()
    {
        intelligence = defaultAbility(intelligence);
        return intelligence;
    }

    int getWisdom()
    {
        wisdom = defaultAbility(wisdom);
        return wisdom;
    }

    int getCharisma()
    {
        charisma = defaultAbility(charisma);
        return charisma;
    }

    int getHitpoints()
    {
        return 10 + modifier(getConstitution());
    }

    private int defaultAbility(Integer ability)
    {
        if (ability == null)
            ability = ability();

        return ability;
    }

    private int rollDie(int sides)
    {
        return (int) (Math.random() * sides) + 1;
    }

    private List<Integer> removeMin(List<Integer> ints)
    {
        List<Integer> sorted = ints.stream().sorted(Integer::compareTo).collect(Collectors.toList());
        sorted.remove(0);

        return sorted;
    }
}
