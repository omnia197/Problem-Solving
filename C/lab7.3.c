#include <stdio.h>

int sumArray(int *arr, int size){
    int sum = 0;
    for(int i =0; i< size; i++){
        sum += *arr;
        arr++;       
    }
    return sum;
}
int main(){
    int array[] = {1, 2, 3, 4, 5};
    int s = 5;
    printf("Sum of the array = %d", sumArray(array, s));

    return 0;
}

/*


int sumArray(int *arr, int size) {
    int sum = 0;

    // Loop through the array using the pointer
    for (int i = 0; i < size; i++) {
        sum += *(arr + i);  // Access the element and add it to sum
    }

    return sum;
}

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int size = sizeof(arr) / sizeof(arr[0]);

    // Call the function and print the result
    int totalSum = sumArray(arr, size);
    printf("Sum of array elements: %d\n", totalSum);

    return 0;
}
*/