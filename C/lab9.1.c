#include <stdio.h>

// Define the Employee struct
typedef struct Employee {
    char name[5];
    float bonus;
    float salary;
    float deduction;
}emp;

int main() {
    // Create 3 instances of Employee
     emp emp1 = {"Ahmed", 1000, 5000.0, 500.0};
     emp emp2 = {"Ahmed", 1500.0, 6000.0, 800.0};
     emp emp3 = {"Ahmed", 1200.0, 5500.0, 600.0};

    // Calculate total payment for each employee
    float total_pay1 = emp1.salary + emp1.bonus - emp1.deduction;
    float total_pay2 = emp2.salary + emp2.bonus - emp2.deduction;
    float total_pay3 = emp3.salary + emp3.bonus - emp3.deduction;

    // Calculate the total value needed to pay all employees
    float total_payment = total_pay1 + total_pay2 + total_pay3;

    // Print the total payment for each employee and the overall total
    printf("Total payment for Employee 1: $%.2f\n", total_pay1);
    printf("Total payment for Employee 2: $%.2f\n", total_pay2);
    printf("Total payment for Employee 3: $%.2f\n", total_pay3);
    printf("Total payment for all employees: $%.2f\n", total_payment);
    printf("size of employee in memory %d\n", sizeof(emp1));

    return 0;
}
