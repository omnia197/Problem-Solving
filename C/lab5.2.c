#include <stdio.h>

void sawaby(void);
int x = 10, y = 8;
int main(){

    sawaby();
    return 0;
}

void sawaby(void){

    int term = x;
    x = y;
    y = term;
    printf("X = %d, Y = %d", x, y);
}