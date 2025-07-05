#include<stdio.h>
int main(){
    int x = 3, y = 4;
    int answer;

    printf("Enter the answer of 4*3: \n");
    scanf("%d" , &answer);


    while(answer != 12){
       printf("Try again\n");
       printf("Enter the answer of 4*3: \n");
       scanf("%d" , &answer);
    }

     printf("Correct , thank you");
    return 0;
}