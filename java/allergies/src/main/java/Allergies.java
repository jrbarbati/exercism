import java.util.EnumSet;
import java.util.List;
import java.util.stream.Collectors;

public class Allergies
{
    private int score;
    private List<Allergen> allergies;

    public Allergies(int score)
    {
        this.score = score;
        this.allergies = buildAllergies();
    }

    private List<Allergen> buildAllergies()
    {
        return EnumSet.allOf(Allergen.class).stream().filter(this::isAllergicTo).collect(Collectors.toList());
    }

    public boolean isAllergicTo(Allergen allergen)
    {
        return (allergen.getScore() & score) > 0;
    }

    public List<Allergen> getList()
    {
        return allergies;
    }
}
