#include "stdio.h"

int main() {

  int  x = 12;

  int *p = &x;
  
  printf( "  x is %d\n", x );
  printf( "*&x is %d\n", *&x );

  printf( "  p is %p\n", p );
  printf( "&*p is %p\n", &*p );

  return 0;
}
  
