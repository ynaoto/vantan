#include <stdio.h>
#include <ctype.h>

int main()
{
  int c;
  while ((c = getchar()) != EOF) {
    if (isspace(c)) {
      putchar('\n');
    } else {
      putchar(c);
    }
  }
  return 0;
}
