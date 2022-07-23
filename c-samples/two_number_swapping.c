#include<stdio.h>

int main(){

    int a,b;
    a = 1;
    b = 2;
    printf("Before a=%d,b=%d\n", a, b);
    a = a+b;
    b = a-b;
    a = a-b;

    printf("Swap End a=%d,b=%d", a, b);
    return 0;
}