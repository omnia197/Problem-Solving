# include <stdio.h>

void sumsub(int x, int y, int *sum, int *sub);
int main(){

int x1 = 10;
int x2 = 20;
int sum = 0, sub = 0;
sumsub(x1, x2, &sum, &sub);
printf("\nx = %d, y = %d", x1, x2);
    return 0;
}

void sumsub(int x, int y, int *sum, int *sub){
    *sum = x + y;
    *sub = x - y;
    printf("sum = %d , sub = %d", *sum, *sub);

}