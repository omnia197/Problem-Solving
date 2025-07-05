# include <stdio.h>

int main(){

    int x = 10;

    int *ptr = &x;
    *ptr = 20;
    x = *ptr;
    printf("%d", x);

    return 0;
}