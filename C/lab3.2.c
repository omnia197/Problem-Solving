#include<stdio.h>
int main(){
    int num;

    printf("Enter Your number:\n");
    scanf("%d" , &num);

    if(num%2 == 0){
        printf("Number Is EVEN");
    }
    else{
        printf("Number Is ODD");
    }
    return 0;
}