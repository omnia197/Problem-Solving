#include <stdio.h>

int main(){
    int size;
    printf("Enter the size of the array: \n");
    scanf("%d", &size);
    int arr[size];
    for (int i =0; i< size; i++){
        printf("Enter the value of index %d \n", i);
        scanf("%d", &arr[i]);
    }
    int value = 0;
    
    printf("Enter the value you need to search: \n");
    scanf("%d", &value);

    int flag = 0;
    for (int i =0; i< size; i++){
        if(arr[i] == value)
            flag = 1;
    }
    if (flag == 1){
        printf("The value exists");
    }
    else{
        printf("The value does not exist");
    }
    return 0;
}