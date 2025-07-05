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

    for (int i = size -1; i>= 0; i--){
        printf("The value of index %d is %d \n", i, arr[i]);
    }
}