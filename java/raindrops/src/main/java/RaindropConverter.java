import java.util.HashMap;
import java.util.Map;

class RaindropConverter
{
    private Map<Integer, String> translation = new HashMap<Integer, String>() {{
        put(3, "Pling");
        put(5, "Plang");
        put(7, "Plong");
    }};

    String convert(int number)
    {
        StringBuilder sound = new StringBuilder();

        translation.keySet().stream().sorted().forEach(key -> {
            if (number % key == 0)
                sound.append(translation.get(key));
        });

        return !sound.toString().isEmpty() ? sound.toString() : String.valueOf(number);
    }
}
