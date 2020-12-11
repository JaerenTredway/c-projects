#include "stdio.h"

int main() {

  char x = '3';

  printf( "x = %c, \t\t\t\twith hex value %X\n",
           x, x );

  int y = x - '0';

  printf( "Converting x to int gives %d, "
          "\twith hex value %04X\n", y, y );

  return 0;
}
