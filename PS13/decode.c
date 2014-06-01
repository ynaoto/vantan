#include <stdio.h>

int main()
{
    int c;
    while ((c = getchar()) != EOF) {
        putchar(c-1);
    }
    return 0;
}
