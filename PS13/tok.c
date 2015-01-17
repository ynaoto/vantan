#include <stdio.h>
#include <ctype.h>

int main()
{
  int inspace = 0;
  int c;
  while ((c = getchar()) != EOF) {
    if (isspace(c)) {
      //if (!inspace) putchar('\n');
      if (inspace) {
        // do nothing
      } else {
        putchar('\n');
      }
      inspace = 1;
    } else {
      inspace = 0;
      putchar(c);
    }
  }
  return 0;
}
