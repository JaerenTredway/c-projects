#include "stdio.h"

int main() {

  int   x = 12;
  int  *p = &x;
  
  printf ( "x is value\t\t%d\n", x );
  printf ( "p \"points to\" value\t%d\n\n", *p );
  printf ( "p \"contains\" value\t%p\n\n", p );

  p = NULL;

  printf ( "p \"contains\" value\t%p\n\n", p );
  printf ( "p \"contains\" value\t%d\n\n", p );

  return 0;
}
  
