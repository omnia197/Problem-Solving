#include <stdio.h>

int main(){
    unsigned int i = -1;
    int size = sizeof(i);
    printf("check signed value %u \nThe size of  i is: %d", i, size);

    return 0;
}