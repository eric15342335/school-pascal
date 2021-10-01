#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double frac(double number);
// pascal function frac() like

int main(void)
{
    unsigned long long length;
    printf("Enter an positive integer: ");
    scanf("%llu", &length);
    // stackoverflow.com/a/7618231
    printf("false\0true"+6*(0 == frac(sqrt(length))));
    // while true: read the bytes after \0 terminator, and vice versa
    printf("\n");
    // for the people cannot run from terminal..
    system("pause");
    return 0;
}

double frac(double number)
{
    return number - (long long) number;
}
