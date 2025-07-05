import java.util.*;

public class removeDuplicates {
    public static void main(String[] args) {
        LinkedList<Integer> r = new LinkedList<Integer>();
        LinkedList<Integer> s = new LinkedList<Integer>();

        r.add(1);
        r.add(1);
        r.add(4);
        r.add(2);
        s = removeDuplicates(r);
        for (Integer in : s) {
            System.out.println(in);
        }

    }

    public static LinkedList<Integer> removeDuplicates(LinkedList<Integer> l1) {
        LinkedList<Integer> res = new LinkedList<Integer>();
        for (Integer t : l1) {
            if (!res.contains(t)) {
                res.add(t);
            }
        }
        return res;
    }

}
