#include<stdio.h>
int main(){

    int x , y;

    printf("Please Enter Number 1:");
    scanf("%d" , &x);
    printf("Please Enter Number 2:");
    scanf("%d" , &y);

    int sum = x + y;
    int mul = x * y;
    printf("%d + %d = %d\n" ,x , y, sum);
    printf("%d * %d = %d\n" ,x , y, mul);
    return 0;
}