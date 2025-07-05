#include<stdio.h>
int main(){
    int x = 6;
    float y = 2.36;
    double z = 2.368;
    char f = 67;
    printf("Size Of int: %d\n" , sizeof(x));
    printf("Size Of float: %d\n" , sizeof(y));
    printf("Size Of double: %d\n" , sizeof(z));
    printf("Size Of char: %d\n" , sizeof(f));

    return 0;
}