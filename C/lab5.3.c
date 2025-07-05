# include <stdio.h>

int fact(int num);
int main() {
    int a;
    printf("Enter the number needed:  \n") ;
    scanf("%d", &a);
    printf("%d", fact(a));
    return 0;
}

int fact(int num){
    if(num == 0){
        return 0;
    }
    else if(num == 1){
        return 1;
    }
    else{
        return num*fact(num-1);
    }
}