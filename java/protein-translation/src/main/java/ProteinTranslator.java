import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

class ProteinTranslator
{
    List<String> translate(String rnaSequence)
    {
        List<String> rna = rnaSequence.chars().mapToObj(c -> String.valueOf((char) c)).collect(Collectors.toList());
        List<String> protein = new ArrayList<>();

        for (int i = 0; i < rna.size() - 2; i += 3)
        {
            String aminoAcid = aminoAcid(rna.get(i) + rna.get(i + 1) + rna.get(i + 2));

            if (aminoAcid.equals("STOP"))
                break;

            protein.add(aminoAcid);
        }

        return protein;
    }

    private String aminoAcid(String codon)
    {
        return translation.get(codon);
    }

    private static final Map<String, String> translation = new HashMap<String, String>() {{
        put("AUG", "Methionine");
        put("UUU", "Phenylalanine");
        put("UUC", "Phenylalanine");
        put("UUA", "Leucine");
        put("UUG", "Leucine");
        put("UCU", "Serine");
        put("UCC", "Serine");
        put("UCA", "Serine");
        put("UCG", "Serine");
        put("UAU", "Tyrosine");
        put("UAC", "Tyrosine");
        put("UGU", "Cysteine");
        put("UGC", "Cysteine");
        put("UGG", "Tryptophan");
        put("UAA", "STOP");
        put("UAG", "STOP");
        put("UGA", "STOP");
    }};
}