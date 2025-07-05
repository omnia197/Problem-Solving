import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class countFrequencyUsingHashMap {
    public static void main(String[] args) {
        // Corrected typo from Sring to String
        List<String> l1 = new ArrayList<String>();
        l1.add("omnia");
        l1.add("rahma");
        l1.add("omnia");
        l1.add("rahma");

        // Call the countFrequency method
        countFrequency(l1);
    }

    // Generic method to count the frequency of elements
    public static <T> void countFrequency(List<T> arr) {
        Map<T, Integer> map = new HashMap<>();

        // Loop through the list and count the frequencies
        for (T t : arr) {
            map.put(t, map.getOrDefault(t, 0) + 1); // Corrected the getOrDefault() usage
        }

        // Print the frequency of each element
        for (T t : map.keySet()) { // Corrected keySet() method name
            System.out.println(t + " appears " + map.get(t) + " times");
        }
    }
}
