import java.util.Scanner;
import java.util.ArithmeticException;
import java.util.InputMismatchException;

class DivideByZeroException {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        try {
            int x = in.nextInt();
            int y = in.nextInt();
            float res = x / y;
            System.out.println("The result is : " + res);
        }

        catch (InputMismatchException e) {
            System.out.println("Input is invalid : Enetr an integer Number " + e.getMessage());

        } catch (ArithmeticException e) {
            System.out.println("Can not divide by zero " + e.getMessage());
        } finally {
            in.close();
        }
    }
}