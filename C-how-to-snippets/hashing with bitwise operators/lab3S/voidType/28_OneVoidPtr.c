#include "stdio.h"

int main() { 

  char c = 'a';
  int  x = 0x41414344; 

  printf( "c is '%c'\n", c );
  printf( "x is %08X\n", x );

  void *p = &c;  

  // casting needed
  printf( "p points to '%c'\n", * (char *) p );

  p = &x;

  printf( "p points to %08X\n", *(int*)p );

  return(0);
}
  
