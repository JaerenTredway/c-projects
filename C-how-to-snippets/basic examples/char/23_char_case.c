#include "stdio.h"

int main() {

  char x = 'E';

  printf( "Initially x is '%c'\n", x );

  if ( 'a' <= x && x <= 'z' )
    printf ( "x is lowercase letter\n" );

  else   // convert x to lowercase
    x = x  +  ('a' - 'A');

  printf( "Now x is '%c'\n", x );

  return 0;
}
