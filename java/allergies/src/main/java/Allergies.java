import java.util.ArrayList;
import java.util.List;

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
        List<Allergen> allergens = new ArrayList<>();

        for (Allergen allergen : Allergen.values())
            if (isAllergicTo(allergen))
                allergens.add(allergen);

        return allergens;
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
