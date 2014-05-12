#include <stdio.h>
#include <assert.h>

#define N 8
int a[N], b[N], c[N];

void init()
{
    int i;
    for (i = 0; i < N; i++) {
        a[i] = i + 1;
        b[i] = c[i] = 0;
    }
}

void move(int from[], int to[])
{
    int i, j;

    for (i = 0; i < N && from[i] == 0; i++)
        ;
    assert(0 <= i && i < N);

    for (j = 0; j < N && to[j] == 0; j++)
        ;
    j--;
    assert(0 <= j && j < N);

    to[j] = from[i];
    from[i] = 0;
}

void show(int tower[])
{
    int i;
    for (i = 0; i < N; i++) {
        printf("[%d]", tower[i]);
    }
    putchar('\n');
}

void dump()
{
    printf("A: "); show(a);
    printf("B: "); show(b);
    printf("C: "); show(c);
}

void hanoi(int from[], int work[], int to[], int n)
{
    if (n < 1) return;
    hanoi(from, to, work, n - 1);
    move(from, to);
    putchar('\n'); dump();
    hanoi(work, from, to, n - 1);
}

int main()
{
    init();
    putchar('\n'); dump();
    hanoi(a, b, c, N);

    return 0;
}
