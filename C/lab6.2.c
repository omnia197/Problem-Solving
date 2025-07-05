#include <stdio.h>

int main(){
    int size;
    printf("Enter the size of the array: \n");
    scanf("%d", &size);
    int arr[size];
    for (int i =0; i< size; i++){
        printf("Enter the value of index %d ", i);
        scanf("%d", &arr[i]);
    }
    int sum = 0, avg = 0;
    for (int i =0; i< size; i++){
        sum = sum + arr[i];
    }
    avg = sum / size;
    printf("Sum equals: %d \nAverage equals: %d", sum, avg);


}