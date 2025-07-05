#include <stdio.h>

int sum2array( int *arr1, int *arr2, int size);
int main(){
    int array1[5] = {1, 2, 3, 4, 5};
    int array2[5] = {2, 4, 6, 8, 10};

    int s = 5;
    printf("Sum of multiblication of the two arrays: %d", sum2array(array1, array2, s)); 

    return 0;
}


int sum2array( int *arr1, int *arr2, int size){

    int sum = 0;
    for(int i =0; i < size; i++){
        sum += *arr1 * *arr2;
        arr1++;
        arr2++;
    }

    return sum;
}