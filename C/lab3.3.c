#include<stdio.h>
int main(){
    int degree;
    printf("Enter your degree:\n");
    scanf("%d" , &degree);

    if(degree>=0 & degree<50){
        printf("Failed");
    }
    else if(degree>=50 & degree<65){
        printf("Normal");
    }
     else if(degree>=65 & degree<75){
        printf("Good");
    }
     else if(degree>=75 & degree<85){
        printf("Very Good");
    }
    else{
        printf("Excellent");
    }
    return 0;
}