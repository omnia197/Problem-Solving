import java.util.*;

public class customExceptionHandling {

    public static void checkNumber(int num) throws NegativeNumberException {
        if (num < 0) {
            throw new NegativeNumberException("Negative number encountered: " + num);
        } else {
            System.out.println("Number: " + num);
        }
    }

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int[] arr = new int[5];
        for (int i = 0; i < 5; i++) {
            try {
                arr[i] = in.nextInt();
                checkNumber(arr[i]);
            } catch (NegativeNumberException e) {
                System.out.println("Exception caught: " + e.getMessage());
            } catch (java.util.InputMismatchException e) {
                System.out.println("Invalid input! Please enter an integer.");
                in.next();
            }
        }
        in.close();
    }
}

class NegativeNumberException extends Exception {

    public NegativeNumberException(String message) {
        super(message);
    }
}
