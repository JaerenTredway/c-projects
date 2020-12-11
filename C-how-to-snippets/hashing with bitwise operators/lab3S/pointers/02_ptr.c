#include "stdio.h"

int main() {

  int   x = 12;

  int  *p = &x;
  
  printf ( "x is value\t\t%d\n", x );

  printf ( "p \"points to\" value\t%d\n\n", *p );

  printf ( "x is located at \t%p\n", &x );

  return 0;
}
  
