import java.util.*;

class reverseLinkedList {

    public static void main(String[] args) {
        List<Integer> l1 = new LinkedList<Integer>();
        l1.add(1);
        l1.add(2);
        l1.add(3);
        reverseLinkedList(l1);
    }

    public static void reverseLinkedList(List<Integer> ll) {
        Stack<Integer> s = new Stack<Integer>();
        for (int in : ll) {
            s.push(in);
        }
        int size = ll.size();
        for (int i = 0; i < size; i++) {
            ll.set(i, s.pop());
        }
        for (int n : ll) {
            System.out.println(n);
        }
    }

}