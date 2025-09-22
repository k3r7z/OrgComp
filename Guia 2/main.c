#include <stdio.h>

extern int _greatest(int a, int b);

int main () {
  int result = _greatest(10, 20);
  printf("The greatest is %d", result);
  return 0;
}
