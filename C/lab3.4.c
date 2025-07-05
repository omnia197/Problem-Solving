#include<stdio.h>
int main(){
    int id;
    printf("Enter Your ID:\n");
    scanf("%d" , &id);
    switch(id){
        case 1234:
            printf("Mohammed");
            break;
        case 5678:
            printf("Ali");
            break;
        case 1145:
            printf("Mina");
            break;
        default:
            printf("Non Valid");
            break;

    }
    return 0;
}