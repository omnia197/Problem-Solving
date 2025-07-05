#include<stdio.h>
int main(){
    int hour , salary = 0;
    printf("Enter your working Hours:\n");
    scanf("%d" , &hour);

    if(hour >= 50){
        salary = hour*50;
    }
    else{
        salary = 0.9 * 50 * hour; 
    }
    printf("Your Salary is:\n%d" , salary);
    return 0;
}