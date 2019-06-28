import java.util.Map;
import java.util.HashMap;
import java.util.function.Function;
import java.util.stream.Collectors;

class RnaTranscription 
{
	private Map<Integer, String> rnaTranscription = new HashMap<Integer, String>() {{
		put((int) 'A', "U");
		put((int) 'T', "A");
		put((int) 'C', "G");
		put((int) 'G', "C");
	}};

    String transcribe(String dnaStrand) 
    {
        return dnaStrand.chars().mapToObj(rnaTranscription::get).collect(Collectors.joining());
    }
}
