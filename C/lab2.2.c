#include<stdio.h>
int main(){

    int x = 7;
    int y = 4;
    int and = x&y;
    int or = x|y;
    int xor = x^y;
    int rsh = x>>1;
    int lsh = x<<1;
    printf("and value: %d\n" , and);
    printf("or value: %d\n" , or);
    printf("xor value: %d\n" , xor);
    printf("right shift value: %d\n" , rsh);
    printf("left sheft value: %d\n" , lsh);
}