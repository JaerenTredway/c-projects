#include "stdio.h"

int main() {

  char  c = 'a';

  int   x = 0x41424344; // ASCII ABCD
                        // 1,094,861,636

  printf( "c is '%c'\n", c );
  printf( "x is %d\n\n", x );

  char *p = &c;
  
  printf( "p points to char: '%c'\n", *p );

  p = &x;  // mixing types - DANGEROUS!

  printf( "\nNow p points to x:\n" );
  printf( "\t*p as char is '%c'\n", *p );
  printf( "\t*p as int  is %d\n", *p );

  return 0;
}
  
