#include <stdio.h>

int main()
{
    int c;
    printf("#include <stdio.h>\n");
    printf("int main()\n");
    printf("{\n");
    printf("    int c;\n");
    printf("    while ((c = getchar()) != EOF) {\n");
    for (c = 'a'; c <= 'z'; c++) {
        printf("if (c == '%c') c = c + 'A' - 'a';\n", c);
    }
    printf("        putchar(c);\n");
    printf("    }\n");
    printf("    return 0;\n");
    printf("}\n");
    return 0;
}
