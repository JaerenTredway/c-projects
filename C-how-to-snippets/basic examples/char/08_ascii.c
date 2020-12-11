#include "stdio.h"

int main() {

  char x = 'A';

  printf("The size of a char is %d bits\n\n",
          8*sizeof(x));

  printf("As a char, x is '%c'\n\n", x);

  printf("The ASCII code of x is hex %X\n", x);
  printf("\twhich is binary 0100 0001\n\n" );

  return 0;
}
