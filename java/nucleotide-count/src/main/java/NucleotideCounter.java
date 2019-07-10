import java.util.HashMap;
import java.util.Map;

public class NucleotideCounter
{
    private Map<Character, Integer> nucleotideCounts = new HashMap<Character, Integer>() {{
        put('A', 0);
        put('C', 0);
        put('T', 0);
        put('G', 0);
    }};

    public NucleotideCounter(String dna)
    {
        dna.chars().mapToObj(c -> (char) c).forEach(c -> {
            if (!nucleotideCounts.containsKey(c))
                throw new IllegalArgumentException(String.format("Invalid nucleotide in dna sequence: %c", c));

            nucleotideCounts.put(c, nucleotideCounts.get(c) + 1);
        });
    }


    public Map<Character, Integer> nucleotideCounts()
    {
        return nucleotideCounts;
    }
}
