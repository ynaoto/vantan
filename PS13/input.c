#include <stdio.h>

int main()
{
    int c;
    while ((c = getchar()) != EOF) {
        putchar('[');
        putchar(c);
        putchar(']');
    }
    return 0;
}
