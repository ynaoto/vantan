#include <stdio.h>

int main()
{
    int i;
    for (i = 0; i < 10; i++) {
        printf("i = %d\n", i);
        if (i % 3 == 0) {
            printf("AHO!\n");
        }
    }
    return 0;
}
