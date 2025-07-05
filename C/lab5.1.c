#include<stdio.h>

int max (int a, int b);
int main(){
    int n1 = 10;
    int n2 = 20;
    int res = max(n1, n2);
    printf("The result equlas %d", res);
    


}

int max(int a, int b){
    int res = a > b ? a : b;
    return res;
}