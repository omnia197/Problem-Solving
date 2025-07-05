#include<stdio.h>
int main(){
    int i;
    for(i =1; i<= 10; i++){
        printf("%d\n" , i);
    }
    int sum =0 , num;
    for(i =1; i<= 10; i++){
        printf("Enter the %d num: \n" , i);
        scanf("%d" , &num);
        sum = sum + num;
    }
    printf("The sum equals: %d" , sum);

    return 0;
}